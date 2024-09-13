import 'package:flutter/material.dart';

class eighth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black, size: 30),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout, color: Colors.black, size: 30),
            onPressed: () {
              // Add your sign-out functionality here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.blueGrey,
                    child: Text(
                      'CV',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Chinmayi Venugopal',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '10 Courses you\'re enrolled in',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'In progress',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CourseItem(
              imageUrl: 'https://img.icons8.com/?size=100&id=7I3BjCqe9rjG&format=png&color=000000',
              title: 'Android Development',
              subtitle: 'Lecture 7 from 42',
              progress: 0.16,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Finished',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CourseItem(
              imageUrl: 'https://img.icons8.com/?size=100&id=13679&format=png&color=000000',
              title: 'Java Development',
              subtitle: '24 Lectures | 12 Hours',
              progress: 1.0,
            ),
            CourseItem(
              imageUrl: 'https://img.icons8.com/?size=100&id=13441&format=png&color=000000',
              title: 'Python Development',
              subtitle: '36 Lectures | 18 Hours',
              progress: 1.0,
            ),
            CourseItem(
              imageUrl: 'https://img.icons8.com/?size=100&id=55199&format=png&color=000000',
              title: 'C++ Programming',
              subtitle: '26 Lectures | 42 Hours',
              progress: 1.0,
            ),
          ],
        ),
      ),
    );
  }
}

class CourseItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final double progress;

  CourseItem({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.network(
                  imageUrl,
                  width: 40,
                  height: 40,
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8),
            LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey[300],
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
