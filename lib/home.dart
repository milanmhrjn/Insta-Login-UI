import 'package:flutter/material.dart';
import 'package:instaapp/forgot_password.dart';
import 'package:instaapp/language.dart';
import 'package:instaapp/new_account.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Expanded(
                            child: Container(
                              color: Colors.black,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text(
                                      "Select your language",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 25, right: 25),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade700,
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(20),
                                                  topLeft:
                                                      Radius.circular(20))),
                                          child: ListView.builder(
                                            itemBuilder: (context, index) {
                                              return ListTile(
                                                  title: Column(children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "${Languages[index].language}",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Checkbox(
                                                      shape: CircleBorder(),
                                                      value: index == 0,
                                                      onChanged: (value) {},
                                                    )
                                                  ],
                                                ),
                                              ]));
                                            },
                                          )),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: Text(
                    "English (US)",
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Image(
              height: 100,
              image: AssetImage(
                'assets/images/insta_logo.jpg',
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
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
                        height: 15,
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
                        height: 15,
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
                                "Log In",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 25,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => forgotPassword()));
                        },
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 140,
                      ),
                      SizedBox(
                          width: 1500,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  side: BorderSide(color: Colors.blue)),
                              backgroundColor: Colors.transparent,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => createAccount())));
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 14, bottom: 14),
                              child: Text(
                                "Create new account",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.blue),
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 25,
                      ),
                      Image(
                          height: 15,
                          image: AssetImage('assets/images/meta.png'))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
