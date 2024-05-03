import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:messenger_app/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var keyForm = GlobalKey<FormState>();

  var obscureText = true;
  IconData suffixIcon = Icons.visibility_off ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Form(
              key: keyForm,
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
                  defaultTextFormField(
                    controller: emailController,
                    validator: (value) {
                      if(value!.isEmpty){
                        return "Must enter valid email";
                      }
                      else {
                        return null;
                      }
                    },
                    labelText: "E-Mail",
                      prefixIcon: Icon(Icons.lock_clock_outlined),
                      type:  TextInputType.emailAddress
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  defaultTextFormField(
                      controller: passwordController,
                      obscureText: obscureText,
                      validator: (value) {
                        if(value!.isEmpty){
                          return "Must enter valid password111";
                        }
                        else {
                          return null;
                        }
                      },
                      labelText: "Passwrod",
                      prefixIcon: Icon(Icons.lock_clock_outlined),
                      type:  TextInputType.visiblePassword,
                      suffixIcon: IconButton(
                      icon:Icon(obscureText ? Icons.visibility_off : Icons.visibility),onPressed: onpressIcon,)
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  defaultButton(title: "Login",radius: 125.0, function: (){
                    if(keyForm.currentState!.validate() != null) {

                    }
                  }),
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
      ),
    );
  }

  void onpressIcon(){
    obscureText = !obscureText;
    setState(() {

    });
  }
}
