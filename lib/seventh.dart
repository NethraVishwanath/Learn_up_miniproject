import 'package:flutter/material.dart';

class seventh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black, size: 30),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(40.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Design Apps & Websites for Beginners',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '8 hours',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          width: 100,  // Set your desired width
                          height: 100, // Set your desired height
                          child: CircularProgressIndicator(
                            value: 0.56,
                            backgroundColor: Colors.grey[300],
                            color: Colors.black,
                            strokeWidth: 10,
                          ),
                        ),
                        Text(
                          '56%',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  CourseSection(
                    title: 'Introduction to the Course',
                    duration: '01:40 min',
                  ),
                  CourseSection(
                    title: 'Download the course syllabus',
                    duration: '01:44 min',
                  ),
                  CourseSection(
                    title: 'Download the required software',
                    duration: '01:34 min',
                  ),
                  CourseSection(
                    title: 'Introduction to HTML',
                    duration: '49:34 min',
                  ),
                  CourseSection(
                    title: 'Intermediate HTML',
                    duration: '52:40 min',
                  ),
                  // CourseSection(
                  //   title: 'Multi-page Website',
                  //   duration: '55:40 min',
                  // ),
                  CourseSection(
                    title: 'Introduction to CSS',
                    duration: '59:40 min',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CourseSection extends StatelessWidget {
  final String title;
  final String duration;

  CourseSection({required this.title, required this.duration});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  duration,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Icon(Icons.play_circle_fill, color: Colors.black),
          ],
        ),
      ),
    );
  }
}


