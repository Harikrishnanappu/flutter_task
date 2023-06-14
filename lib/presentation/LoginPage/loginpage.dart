import 'package:flutter/material.dart';
import 'package:flutter_task/presentation/LoginPage/widget/imagelistview.dart';
import 'package:flutter_task/presentation/MainScreen/screenmainpage.dart';

import '../constants/consts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool? ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0XFF011836),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: -20,
              left: -150,
              child: Row(
                children: const [
                  ImageListView(),
                  ImageListView(),
                  ImageListView(),
                  ImageListView(),
                  ImageListView(),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.17,
              child: Image.asset("assets/moviesmodnew-Custom.png"),
            ),
            Positioned(
                bottom: 12,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.70,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.transparent,
                    const Color(0XFF011836).withOpacity(0.8),
                    const Color(0XFF011836).withOpacity(0.8),
                    const Color(0XFF011836).withOpacity(0.6),
                    const Color(0XFF011836),
                  ], begin: Alignment.topCenter, end: Alignment.center)),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.17,
                        left: 20,
                        right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 24,
                              color: kwhite,
                              fontWeight: FontWeight.w700),
                        ),
                        kheight16,
                        TextFormField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(10)),
                              fillColor: const Color(0xff2A405A),
                              filled: true,
                              hintStyle: TextStyle(color: kgrey),
                              hintText: "E-mail address"),
                        ),
                        kheight16,
                        TextFormField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(10)),
                              suffixIcon: Icon(
                                Icons.visibility_off_outlined,
                                color: kgrey,
                              ),
                              fillColor: const Color(0xff2A405A),
                              filled: true,
                              hintStyle: TextStyle(color: kgrey),
                              hintText: "Password"),
                        ),
                        Row(
                          children: [
                            Checkbox(
                                side:
                                    const BorderSide(color: Color(0xfff0771C7)),
                                value: ischecked,
                                onChanged: (newBool) {
                                  setState(() {
                                    ischecked = newBool;
                                  });
                                }),
                            Text(
                              "Remember me",
                              style: TextStyle(color: kgrey),
                            ),
                            const Spacer(),
                            Text(
                              "Forgot password?",
                              style: TextStyle(color: kgrey),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 120,
                              child: Divider(
                                color: kwhite,
                              ),
                            ),
                            Text(
                              " OR  ",
                              style: TextStyle(color: Color(0xff9A9A9A)),
                            ),
                            SizedBox(
                              width: 120,
                              child: Divider(
                                color: kwhite,
                              ),
                            ),
                          ],
                        ),
                        kheight16,
                        SizedBox(
                          child: Center(
                            child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    fixedSize: const Size(300, 50),
                                    side: const BorderSide(
                                      color: Colors.blue,
                                    )),
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushReplacement(MaterialPageRoute(
                                    builder: (context) => ScreenMainPage(),
                                  ));
                                },
                                child: Text(
                                  "Log in with Google",
                                  style: TextStyle(color: kwhite),
                                )),
                          ),
                        ),
                        kheight16,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don’t have an account? ",
                              style: TextStyle(color: kgrey),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "SignUp ",
                              style: TextStyle(color: Color(0xff9747FF)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ));
  }
}
