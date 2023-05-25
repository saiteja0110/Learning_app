import 'package:flutter/material.dart';

// ignore: camel_case_types
class Details_Learner extends StatefulWidget {
  const Details_Learner({super.key});

  @override
  State<Details_Learner> createState() => _Details_LearnerState();
}

// ignore: camel_case_types
class _Details_LearnerState extends State<Details_Learner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Details'),
        centerTitle: true,
      ),
      backgroundColor: Colors.blue[50],
      body: Row(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const[
              
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30.0),
              ),
              Text(
                'Name',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
              Text(
                'John Jabush',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Date of Birth',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
              Text(
                '26-Mar-2002',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Gender',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'Male',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Name of Collage',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'ABC Institute',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
