import 'package:flutter/material.dart';
import 'package:instaapp/create_password.dart';
import 'package:instaapp/home.dart';

class createAccount extends StatefulWidget {
  const createAccount({super.key});

  @override
  State<createAccount> createState() => createAccountState();
}

class createAccountState extends State<createAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(
            child: Column(
          children: [
            Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 10, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "What's your name?",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            style: TextStyle(color: Colors.white, fontSize: 20),
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade400)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade400)),
                                hintText: "Full name",
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
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    backgroundColor:
                                        Color.fromARGB(255, 24, 58, 230)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              createPassword())));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 14, bottom: 14),
                                  child: Text(
                                    "Next",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ]),
            ),
            SizedBox(
              height: 520,
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
                                              builder: (context) =>
                                                  HomePage()));
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
        )));
  }
}
