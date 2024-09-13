import 'package:flutter/material.dart';
import 'package:learn_up_miniproject/eighth.dart';
import 'package:learn_up_miniproject/sixth.dart';

class fifth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => eighth()),
                );
                // Handle text button press
              },
            ),

          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),),
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
                // Handle navigation to Home
              },
            ),
            ListTile(
              leading: Icon(Icons.topic),
              title: Text('Topics'),
              onTap: () {
                Navigator.pop(context);
                // Handle navigation to Topics
              },
            ),
            ListTile(
              leading: Icon(Icons.explore),
              title: Text('Explore'),
              onTap: () {
                Navigator.pop(context);
                // Handle navigation to Messages
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              onTap: () {
                Navigator.pop(context);
                // Handle navigation to Notifications
              },
            ),
            ListTile(
              leading: Icon(Icons.leaderboard_rounded),
              title: Text('My Learning'),
              onTap: () {
                Navigator.pop(context);
                // Handle navigation to Bookmarks
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.pop(context);
                // Handle navigation to Bookmarks
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                Navigator.pop(context);
                // Handle navigation to Profile
              },
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.orangeAccent,
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.search, color: Colors.black),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Recommended for you',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // RecommendedItem(
                  //   imageUrl: 'https://img.icons8.com/?size=100&id=24465&format=png&color=000000',
                  //   title: 'Swift',
                  // ),
                  RecommendedItem(
                    imageUrl: 'https://img.icons8.com/?size=100&id=13679&format=png&color=000000',
                    title: 'Java',
                  ),
                  RecommendedItem(
                    imageUrl: 'https://img.icons8.com/?size=100&id=13441&format=png&color=000000',
                    title: 'Python',
                  ),
                  RecommendedItem(
                    imageUrl: 'https://img.icons8.com/?size=100&id=55199&format=png&color=000000',
                    title: 'C++',
                  ),
                  RecommendedItem(
                    imageUrl: 'https://img.icons8.com/?size=100&id=25423&format=png&color=000000',
                    title: 'C programming',
                  ),
                  RecommendedItem(
                    imageUrl: 'https://img.icons8.com/?size=100&id=24464&format=png&color=000000',
                    title: 'Swift',
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Last seen courses',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10,),
            CourseItem(
              title: 'Front-End course',
              subtitle: 'HTML | CSS | JAVSCRIPT  ',
            ),
            CourseItem(
              title: 'Back-End course',
              subtitle: 'C++ | PYTHON | JAVA',
            ),
            CourseItem(
              title: 'Android development course',
              subtitle: 'FLUTTER | DART | FIREBASE ',
            ),
          ],
        ),
      ),
    );
  }
}

class RecommendedItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  RecommendedItem({super.key, required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Image.network(imageUrl, color: Colors.white),
          ),
          SizedBox(height: 8),
          Text(title, style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}

class CourseItem extends StatelessWidget {
  final String title;
  final String subtitle;

  CourseItem({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.orangeAccent),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ],
                ),
                Icon(Icons.play_circle_fill, color: Colors.black),
              ],
            ),
            SizedBox(height: 8),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => sixth()),
                );
                // Handle text button press
              },
              child: Text(
                'Continue',
                style: TextStyle(color: Colors.orangeAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


