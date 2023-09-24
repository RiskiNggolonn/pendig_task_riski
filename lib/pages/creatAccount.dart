import 'package:flutter/material.dart';
import 'package:login_register_ui_design/pages/loginPage.dart';
import 'package:login_register_ui_design/pages/my_button.dart';
import 'package:login_register_ui_design/pages/style_textField.dart';
import 'package:login_register_ui_design/pages/verification.dart';

class CreatAccout extends StatefulWidget {
  const CreatAccout({super.key});

  @override
  State<CreatAccout> createState() => _LoginPageState();
}

class _LoginPageState extends State<CreatAccout> {
  var fullName;
  var validEmail;
  var phoneNumber;
  var strongPassword;
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          //SINGGLE CHILD SCROLL VIEW UNTUK MENGGESER LAYAR
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 1),
                Image.asset(
                  "lib/image/gambar11.png",
                  height: 200,
                  width: 400,
                ),
                const SizedBox(height: 2),

                //MYTEXTFIELD FULL NAMAE
                MyTextfield(
                  controller: fullName,
                  hintText: 'Full name',
                  obscureText: false,
                  icon: Icons.person,
                ),
                const SizedBox(height: 10),

                //MYTEXTFIELD VALID EMAIL
                MyTextfield(
                  controller: validEmail,
                  hintText: 'Valid email',
                  obscureText: false,
                  icon: Icons.email,
                ),

                const SizedBox(height: 10),

                //MYTEXTFIELD PHONE NUMBER
                MyTextfield(
                  controller: phoneNumber,
                  hintText: 'Phone number',
                  obscureText: false,
                  icon: Icons.phone_android,
                ),
                const SizedBox(height: 10),

                //MYTEXTFIELD STRONG PASSWORD
                MyTextfield(
                  controller: strongPassword,
                  hintText: 'Strong Password',
                  obscureText: true,
                  icon: Icons.lock,
                ),
                const SizedBox(height: 0.1),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //LOGIC UNTUK CHECKBOX
                      Checkbox(
                          value: rememberMe,
                          onChanged: (newValue) {
                            setState(() {
                              rememberMe = newValue ?? false;
                            });
                          }),
                      const Text(
                        'By checking the box you agree to our',
                        style: TextStyle(fontSize: 10),
                      ),

                      const Text(
                        "Terms",
                        style: TextStyle(
                            color: Color.fromARGB(255, 59, 64, 221),
                            fontSize: 10),
                      ),
                      const Text(
                        "and",
                        style: TextStyle(fontSize: 10),
                      ),
                      const Text(
                        "Conditions",
                        style: TextStyle(
                            color: Color.fromARGB(255, 59, 64, 221),
                            fontSize: 10),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 110),

                //BUTTON UNTUK BERPINDAH KE SCREEN CREAT ACCOUNT
                MyButton(onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => const Verification(),
                    ),
                  );
                }),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already a member?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(
                      width: 5,
                      height: 15,
                    ),
                    const Text(
                      'Log in',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
          // child: Column(
          //   children: <Widget>[
          //     Column(
          //       children: [
          //         Center(
          //           child: Stack(
          //             children: <Widget>[
          //               SizedBox(
          //                 width: 400,
          //                 height: 300,
          //                 child: Image.asset("lib/image/gambar10.png"),
          //               ),
          //               Container(
          //                 alignment: Alignment.center,
          //                 color: Colors.transparent,
          //                 width: 400,
          //                 height: 400,
          //                 padding: EdgeInsets.only(top: 50, left: 10),
          //                 child: const Text(
          //                   'WELCOME BACK',
          //                   style: TextStyle(
          //                       fontWeight: FontWeight.bold, fontSize: 30),
          //                 ),
          //               ),
          //               Container(
          //                 alignment: Alignment.center,
          //                 color
          //: Colors.black,
          //                 width: 400,
          //                 height: 400,
          //                 padding: EdgeInsets.only(top: 100, left: 10),
          //                 child: const Text(
          //                   'by creating a free account.',
          //                   style: TextStyle(fontSize: 15),
          //                 ),
          //               ),
          //               MyTextfield(

          //                   controller: usernameCoontroller,
          //                   hintText: "Enter your email",
          //                   obscureText: false)
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
        )
        // child: Column(
        //   children: [
        //     Container(
        //       width: 400,
        //       height: 300,
        //       color: Colors.white,
        //       child: ClipRRect(
        //         child: InkWell(
        //           child: GridTile(
        //             footer: Container(
        //               alignment: Alignment.center,
        //               padding: const EdgeInsets.all(40),
        //               color: Colors.transparent,
        //               child: const Text(
        //                 "Welcome back",
        //                 style: TextStyle(
        //                     fontWeight: FontWeight.bold, fontSize: 30),
        //               ),
        //             ),
        //             child: Image.asset(
        //               "lib/image/gambar10.png",
        //               alignment: Alignment.center,
        //               fit: BoxFit.cover,
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],

        // ),
        );
  }
}
