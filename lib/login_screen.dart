import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: EdgeInsetsDirectional.all(16.0),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    )),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      labelText: "E-Mail",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email)),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                      labelText: "Passwrod",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock_clock_outlined),
                      suffixIcon: IconButton(
                        icon:Icon(Icons.remove_red_eye),onPressed: onpressIcon,)),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 46,
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.indigoAccent,
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have account?"),
                      TextButton(onPressed: () {
                        print(emailController.text);
                        print(passwordController.text);
                      }, child: const Text("Rigester"))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
void onpressIcon(){}
