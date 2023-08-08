// import 'package:flutter/material.dart';
// import 'package:introduction_screen/introduction_screen.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class IntroScreen extends StatefulWidget {
//   const IntroScreen({Key? key}) : super(key: key);
//
//   @override
//   State<IntroScreen> createState() => _IntroScreenState();
// }
//
// class _IntroScreenState extends State<IntroScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: IntroductionScreen(
//         pages: [
//           PageViewModel(
//             body: "Enjoy Simple ,instant & secure \n banking anytime, anywhere! ",
//             title: "Fast and Safe banking",
//             image: Image.network(
//                 "https://img.freepik.com/free-vector/retirement-investments-abstract-concept-illustration_335657-4472.jpg?w=740&t=st=1691407292~exp=1691407892~hmac=a29d601597d9fa197710b2b102ae67800c60cf973b747ae788dee5b1a62de4f8"),
//           ),
//           PageViewModel(
//             body: "Screen 2",
//             title: "Second Page My App",
//             image: Image.network(
//                 "https://teambuildinghub.com/wp-content/uploads/2022/05/balance-life-and-home-work-vector-1024x538.webp"),
//           ),
//           PageViewModel(
//             body: "Screen 3",
//             title: "Third Page My App",
//             image: Image.network(
//                 "https://cdn11.bigcommerce.com/s-dnybxc6/product_images/uploaded_images/worklife-balance-statistics.jpg"),
//           ),
//         ],
//         done: Text("Next"),
//         showNextButton: false,
//         onDone: () async {
//           SharedPreferences pref = await SharedPreferences.getInstance();
//           pref.setBool("isIntrovisited", true);
//           Navigator.of(context).pushNamed('home_page');
//         },
//         dotsDecorator: DotsDecorator(
//           size: const Size.square(10.0),
//           activeSize: const Size(20.0, 10.0),
//           activeColor: Theme.of(context).colorScheme.secondary,
//           color: Colors.black26,
//           spacing: const EdgeInsets.symmetric(horizontal: 3.0),
//           activeShape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(25.0)),
//         ),
//       ),
//     );
//   }
// }

import 'package:bank_application/views/screen/screen1.dart';
import 'package:bank_application/views/screen/screen2.dart';
import 'package:bank_application/views/screen/screen3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              screen_1(),
              screen_2(),
              screen_3(),
            ],
          ),
          Container(
              alignment: Alignment(0, 0.20),
              child: SmoothPageIndicator(controller: controller, count: 3)),
        ],
      ),
    );
  }
}
