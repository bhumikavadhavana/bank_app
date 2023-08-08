import 'package:flutter/material.dart';

class screen_3 extends StatelessWidget {
  const screen_3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
            Image.network(
                "https://img.freepik.com/free-vector/retirement-investments-abstract-concept-illustration_335657-4472.jpg?w=740&t=st=1691407292~exp=1691407892~hmac=a29d601597d9fa197710b2b102ae67800c60cf973b747ae788dee5b1a62de4f8"),
            SizedBox(
              height: 90,
            ),
            Text(
              "Fast and Safe banking",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Enjoy Simple ,instant & Secure \n banking anytime, anywhere",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Skip",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
