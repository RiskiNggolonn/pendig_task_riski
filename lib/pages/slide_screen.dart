import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:login_register_ui_design/pages/creatAccount.dart';
import 'package:login_register_ui_design/pages/loginpage.dart';

class SlideScren extends StatelessWidget {
  const SlideScren({super.key});

  @override
  Widget build(BuildContext context) {
    // DEKORASI UNTUK PAGEVIEWMODEL
    const pageDecoration = PageDecoration(
        titleTextStyle: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
        bodyTextStyle: TextStyle(fontSize: 24),
        bodyAlignment: Alignment.bottomLeft,
        imagePadding: EdgeInsets.only(top: 80));

    return IntroductionScreen(
      globalBackgroundColor: Colors.white,

      //PAGE SLIDE SCREEN
      pages: [
        PageViewModel(
            title: "Explore the world easily",
            body: "To your desire",
            image: Image.asset(
              "lib/image/gambar6.png",
              height: 800,
            ),
            decoration: pageDecoration),
        PageViewModel(
            title: "Reach the unknown spot",
            body: "To your destination",
            image: Image.asset(
              "lib/image/gambar7.png",
              width: 400,
            ),
            decoration: pageDecoration),
        PageViewModel(
          title: "Make connects with explora",
          body: "To your dream trip",
          image: Image.asset(
            "lib/image/gambar8.png",
            width: 400,
          ),
          decoration: pageDecoration,
        ),
      ],

      //ONDONE ADALAHLOGIC DARI SLIDE SCREEN KE LOGIN PAGE
      onDone: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => LoginPage(),
          ),
        );
      },

      showSkipButton: false,
      showNextButton: true,
      showDoneButton: true,
      showBackButton: true,
      back: const Icon(Icons.arrow_back),
      skip: const Text(
        "SKIP",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      next: const Icon(Icons.navigate_next_rounded),
      done: const Text(
        "Done",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      dotsDecorator: const DotsDecorator(
        size: Size(10, 10),
        color: Colors.grey,
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
      ),
    );
  }
}
