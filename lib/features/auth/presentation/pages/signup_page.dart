import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

import '../widgets/auth_field.dart';
import '../widgets/auth_gradient_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Sign Up.',style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),),
              const SizedBox(height: 30,),
              AuthField(hintText: "Name",controller: nameController,),
              const SizedBox(height: 15,),
              AuthField(hintText: "Email",controller: emailController,),
              const SizedBox(height: 15,),
              AuthField(hintText: "Password",controller: passwordController,
              isObscureText: true,),
              const SizedBox(height: 20,),
              AuthGradientButton(),
              const SizedBox(height: 20,),
              RichText(text: TextSpan(text: "Already Have an Account? ",style: Theme.of(context).textTheme.titleMedium,
              children: [
                TextSpan(
                  text: 'Sign In',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: AppPallete.gradient2,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ]))
              
            ],
          ),
        ),
      ),
    );
  }
}
