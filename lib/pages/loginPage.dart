import 'package:flutter/material.dart';
import 'package:login_register_ui_design/pages/my_button.dart';
import 'package:login_register_ui_design/pages/style_textField.dart';
import 'creatAccount.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var usernameController;

  var passwordController;
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
                const SizedBox(height: 10),
                Image.asset(
                  "lib/image/welcomeback.png",
                  height: 300,
                  width: 500,
                ),
                const SizedBox(height: 2),

                //MYTEXTFIELD ENTER YOUR EMAIL
                MyTextfield(
                  controller: usernameController,
                  hintText: 'Enter your email',
                  obscureText: false,
                  icon: Icons.email,
                ),
                const SizedBox(height: 10),

                //MYTEXTFIELD PASSWORD
                MyTextfield(
                  controller: passwordController,
                  hintText: 'Password',
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
                        'Remember Me',
                        style: TextStyle(fontSize: 12),
                      ),
                      const Spacer(),
                      const Text(
                        "Forgot Password?",
                        style: TextStyle(
                            color: Color.fromARGB(255, 59, 64, 221),
                            fontSize: 12),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 130),

                //BUTTON UNTUK BERPINDAH KE SCREEN CREAT ACCOUNT
                MyButton(onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => const CreatAccout(),
                    ),
                  );
                }),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New Member?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(
                      width: 5,
                      height: 15,
                    ),
                    const Text(
                      'Register now',
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
