import 'package:flutter/material.dart';
import 'package:instaapp/home.dart';

class createPassword extends StatefulWidget {
  const createPassword({super.key});

  @override
  State<createPassword> createState() => _createPasswordState();
}

class _createPasswordState extends State<createPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create a password",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Create a password with at least 6 letters or numbers. It should be something others can't guess.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      obscureText: true,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade400)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade400)),
                          hintText: "Password",
                          hintStyle: TextStyle(
                              color: Colors.grey.shade500, fontSize: 20)),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                        width: 1500,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              backgroundColor:
                                  Color.fromARGB(255, 24, 58, 230)),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(top: 14, bottom: 14),
                            child: Text(
                              "Next",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 440,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Container(
                        child: AlertDialog(
                          backgroundColor: Colors.grey.shade900,
                          title: Text(
                            "Already have an account?",
                            style: TextStyle(color: Colors.white),
                          ),
                          actions: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage()));
                                  },
                                  child: Text(
                                    "LOG IN",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "CONTINUE CREATING ACCOUNT",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Text(
                  "Already have an account?",
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
