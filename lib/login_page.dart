import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isObscure = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://cdn.pixabay.com/photo/2017/12/15/13/51/polynesia-3021072_1280.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: CircleAvatar(
                radius: 25,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.blue,
                ),
                backgroundColor: Colors.white,
              ),
            ),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Welcome \n Back",
                style: TextStyle(fontSize: 27.0, fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              height: 500,
              child: Column(
                children: [
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.number,
                    // validator: (opi) {
                    //   if (opi!.isEmpty) {
                    //     return "Email can't be empty";
                    //   } else if (opi.length < 3) {
                    //     return "Invalid Email";
                    //   }
                    // },
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      fillColor: Colors.blue.withOpacity(0.2),
                      filled: true,
                      hintText: "inter your email",
                      labelText: "inter your email",
                      hintStyle: TextStyle(color: Colors.blue),
                      prefixIcon: Icon(Icons.email),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  // 1st Text field the end

                  TextFormField(
                    onEditingComplete: () {},
                    controller: passwordController,
                    // validator: (opi) {
                    //   if (opi!.isEmpty) {
                    //     return "Password can't be empty";
                    //   } else if (opi.length > 10) {
                    //     return "Invalid Password";
                    //   }
                    // },
                    obscureText: isObscure,
                    decoration: InputDecoration(
                      suffix: IconButton(
                        onPressed: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                        icon: Icon(Icons.visibility),
                      ),
                      fillColor: Colors.blue.withOpacity(0.2),
                      filled: true,
                      hintText: "inter your passwod",
                      labelText: "inter your password",
                      hintStyle: TextStyle(color: Colors.blue),
                      prefixIcon: Icon(Icons.lock),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                  // 2nd Text field Done

                  Align(
                    alignment: Alignment.centerRight,
                    child: Text("Forget Password?",
                        style: TextStyle(fontSize: 15.0, color: Colors.blue)),
                  ),
                  Spacer(),

                  MaterialButton(
                    color: Colors.blue,
                    minWidth: double.infinity,
                    height: 50.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    onPressed: () {},
                    child: Text(
                      "Sing in",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(
                    flex: 4,
                  ),

                  RichText(
                    text: const TextSpan(
                      text: "Don't have an account?",
                      style: TextStyle(fontSize: 20.0, color: Colors.blue),
                      children: const <TextSpan>[
                        TextSpan(
                          text: "Sign Up",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 3,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
