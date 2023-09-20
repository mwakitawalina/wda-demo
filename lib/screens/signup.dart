import 'package:devfest/controllers/auth_controller.dart';
import 'package:devfest/screens/login.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
    final TextEditingController _nameController= TextEditingController();
    final TextEditingController _emailController =TextEditingController();
    final TextEditingController _passwordController= TextEditingController();
    final TextEditingController _phonenumberController= TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width /2,
              child: TextField(
                controller: _nameController,
                decoration: const InputDecoration(hintText: "Name"),
              ),
              

            ),
            const SizedBox(height: 30,),
             SizedBox(
              width: MediaQuery.of(context).size.width /2,
              child: TextField(
                controller: _emailController,
                decoration: const InputDecoration(hintText: "Email"),
              ),
              

            ),
            const SizedBox(height: 30,),
             SizedBox(
              width: MediaQuery.of(context).size.width /2,
              child: TextField(
                controller: _passwordController,
                decoration: const InputDecoration(hintText: "Password"),
              ),
            ),
            const SizedBox(height: 30,),
             SizedBox(
              width: MediaQuery.of(context).size.width /2,
              child: TextField(
                controller: _phonenumberController,
                decoration: const InputDecoration(hintText: "Phone number"),
              ),
              

            ),
            SizedBox(height: 30,),
            ElevatedButton(
  onPressed: () async {
    final message = await Auth_controller().registration(
      email: _emailController.text,
      password: _passwordController.text,
    );
    if (message != null && message.contains("Successfully created")) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
    }
  },
  child: const Text("Sign Up"),
)

            // ElevatedButton(onPressed: () async{
            //   final message = await Auth_controller().registration(email: _emailController.text, password: _passwordController.text);
            //   if (message!.contains("Successfully created"))
            //   {
            //     Navigator.of(context).pushReplacement(
            //       MaterialPageRoute(builder: (context)=> const LoginScreen())
            //     );
            //     ScaffoldMessenger.of(context).showSnackBar(
            //       SnackBar(content: Text(message),
            //       )
            //     );
            //   }
            // }, 
            
            // child: const Text("Sign Up"),
            // ),
          ],
        ),
      ),
    );
  }
}
 