import 'package:flutter/material.dart';

class LoginUser extends StatefulWidget {
  const LoginUser({super.key});

  @override
  State<LoginUser> createState() => _LoginUserState();
}

class _LoginUserState extends State<LoginUser> {
  bool newUser = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: MediaQuery.of(context).size.longestSide * 0.45,
          width: MediaQuery.of(context).size.longestSide * 0.4,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 12,
                color: Colors.black,
              ),
            ],
            borderRadius: BorderRadius.circular(25),
          ),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Text(
                      !newUser ? "Login" : "SignUp",
                      style:
                          TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Text("Name:"),
                    TextFormField(),
                    Text("Password:"),
                    TextFormField(),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text(
                        "or",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    TextButton(
                        style: ButtonStyle(
                            overlayColor:
                                WidgetStatePropertyAll(Colors.transparent)),
                        onPressed: () => setState(() {
                              newUser = !newUser;
                            }),
                        child: Text(!newUser ? "New User" : "Login"))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
