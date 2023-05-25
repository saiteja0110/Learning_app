import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// ignore: camel_case_types
class Resume_course extends StatefulWidget {
  const Resume_course({super.key});

  @override
  State<Resume_course> createState() => _Resume_courseState();
}

// ignore: camel_case_types
class _Resume_courseState extends State<Resume_course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your learning Journey',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.blue[50],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Waiting for you astute\nTake a look and finish it!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
              courseLayout(context),
          ],
        ),
      ),
    );
  }
}


Widget courseLayout(BuildContext context) {
  List<String> imageFileList = [
    'dart.png',
    'flutter.png',
    'react.png',
    'sql.png',
  ];
  return MasonryGridView.count(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    crossAxisCount: 2,
    mainAxisSpacing: 27,
    crossAxisSpacing: 23,
    itemCount: imageFileList.length,
    itemBuilder: (context, index) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          'assets/images/${imageFileList[index]}',
        ),
      );
    },
  );
}
