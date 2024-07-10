import 'package:birdytappy/components/my_button.dart';
import 'package:birdytappy/components/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() async {
    //show loading circle
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                Image.asset(
                  'assets/logo.png',
                  height: 100,
                ),
                const SizedBox(
                  height: 25,
                ),
                //APP NAME
                const Text(
                  'B I R D Y  T A P P Y',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 50,
                ),

                //EMAIL TEXTFIELD
                MyTextField(
                  hintText: "Email",
                  obscureText: false,
                  controller: emailController,
                ),
                //PASSWORD TEXTFIELD
                const SizedBox(
                  height: 10,
                ),

                //EMAIL TEXTFIELD
                MyTextField(
                    hintText: "Password",
                    obscureText: true,
                    controller: passwordController),

                //FORGOT PASSWORD

                const SizedBox(
                  height: 10,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inverseSurface),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 10,
                ),

                //SIGNIN BUTTON

                MyButton(
                  text: "Sign in",
                  onTap: login,
                ),

                const SizedBox(
                  height: 10,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inverseSurface),
                    ),
                    //DON'T HAVE AN ACCOUNT REGISTER HERE,
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.inverseSurface,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
