import 'package:flutter/material.dart';
import 'package:login_register_ui_design/pages/style.dart';
import 'package:login_register_ui_design/pages/welcome.dart';
import 'package:pinput/pinput.dart';

class Verification extends StatelessWidget {
  const Verification({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: const EdgeInsets.only(right: 80, top: 20),
                child: Text(
                  "Almost there",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 40),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 1),
                child: Text(
                  "Please enter the 6-digit code sent to your email hemmyhtec@gmail.com for verification.",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Pinput(
                length: 6,
                onCompleted: (pin) => print(pin),
              ),
              const SizedBox(
                height: 30,
              ),
              style(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => const Welcome(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Didn’t receive any code? Resend Again ",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 5),
              const Text(
                "Request new code in 00:30s",
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:login_register_ui_design/pages/my_button.dart';
// import 'package:login_register_ui_design/pages/style.dart';
// import 'package:pinput/pinput.dart';

// class Verification extends StatelessWidget {
//   const Verification({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(40),
//           child: Column(
//             children: <Widget>[
//               const Padding(
//                 padding: const EdgeInsets.only(right: 80, top: 20),
//                 child: Text(
//                   "Almost there",
//                   style: TextStyle(fontWeight: FontWeight.w300, fontSize: 40),
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.only(top: 20, left: 1),
//                 child: Text(
//                   "Please enter the 6-digit code sent to your email hemmyhtec@gmail.com for verification.",
//                   style: TextStyle(fontSize: 14),
//                 ),
//               ),
//               SizedBox(height: 60),
//               Pinput(
//                 length: 6,
//                 onCompleted: (pin) => print(pin),
//               ),
//               SizedBox(height: 60),
//               style(onTap: () {}),
//               SizedBox(height: 60),
//               const Text(
//                 "Didn’t receive any code? Resend Again ",
//                 style: TextStyle(fontWeight: FontWeight.w700),
//               ),
//               SizedBox(height: 5),
//               const Text(
//                 "Request new code in 00:30s",
//               ),
//               const Spacer(),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.of(context).pop();
//                 },
//                 child: const Align(
//                   alignment: Alignment.bottomLeft,
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Icon(Icons.arrow_back_ios),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }