import 'package:flutter/material.dart';

class forgotPassword extends StatefulWidget {
  const forgotPassword({super.key});

  @override
  State<forgotPassword> createState() => _forgotPasswordState();
}

class _forgotPasswordState extends State<forgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(
          child: Container(
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
                  padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Find your account",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Enter your username, email, or mobile",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "number.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      GestureDetector(
                        child: Text(
                          "Can't reset your password?",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextField(
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
                            hintText: "Username, email or mobile number",
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
                              padding:
                                  const EdgeInsets.only(top: 14, bottom: 14),
                              child: Text(
                                "Find Account",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
