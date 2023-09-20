import 'package:devfest/screens/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
    apiKey: "AIzaSyAij8EShMD8lB9v0a4iRsgPp1zT93ZiBjE",
  authDomain: "imarishadada-b733c.firebaseapp.com",
  databaseURL: "https://imarishadada-b733c-default-rtdb.firebaseio.com",
  projectId: "imarishadada-b733c",
  storageBucket: "imarishadada-b733c.appspot.com",
  messagingSenderId: "790235641123",
  appId: "1:790235641123:web:9db17926d020e815ed0896"

  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Devfest',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SignUpScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
