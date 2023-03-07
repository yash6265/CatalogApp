import 'package:chat_gpt/utiles/routes.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // const name({super.key});
  String name = "";
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      setState(() {
        {
          Navigator.pushNamed(context, MyRoutes.homeRoute);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Image.asset(
                  "assets/images/Hey_Img.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        maxLength: 6,
                        decoration: InputDecoration(
                          hintText: "Username",
                          labelText: "Enter Username",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Username";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Password";
                          } else if (value.length < 6) {
                            return "Password length should be 6 , Like - @12Yh#";
                          }
                          return null;
                        },
                      ),

                      SizedBox(height: 20),

                      InkWell(
                        onTap: () => moveToHome(context),
                        // {
                        //   // Navigator.pushNamed(context, MyRoutes.homeRoute);
                        // },
                        child: Container(
                          width: 70,
                          height: 40,
                          color: Colors.purple,
                          alignment: Alignment.center,
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      )
                      // ElevatedButton(
                      //     child: Text("Login"),
                      //     style: TextButton.styleFrom(),
                      //     onPressed: () {
                      //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //       print("go to loginpage");
                      //     }),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
