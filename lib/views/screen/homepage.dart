import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map> lan = [
    {
      'sname': "hi",
      'name': "Hindi",
    },
    {
      'sname': "En",
      'name': "English",
    },
    {
      'sname': "Gu",
      'name': "Gujarati",
    },
    {
      'sname': "P",
      'name': "Panjabi",
    },
    {
      'sname': "U",
      'name': "Urdu",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "bob\n world",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.deepOrangeAccent,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  Text(
                    "Bank Of Baroda",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.deepOrangeAccent,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Choose your preferred language",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ],
          ),
        ),
      ),
      // backgroundColor: Color(0xffffd197),
    );
  }
}
