import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// ignore: camel_case_types
class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

// ignore: camel_case_types
class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.blue,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
          ),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const[
                      Text(
                        'Hello Learner',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'What do you want\nto grasp today?',
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  //CircleAvatar(backgroundImage:AssetImage('assets/images/html.png'))
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(8),
                        image: 
                        const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage('https://marketplace.canva.com/EAFEits4-uw/1/0/800w/canva-boy-cartoon-gamer-animated-twitch-profile-photo-r0bPCSjUqg0.jpg')
                            )
                            ),
                  )
                ],
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
    'html.png',
    'java.png',
    'powerbi.png',
    'python.png',
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