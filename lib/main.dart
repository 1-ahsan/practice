import 'package:flutter/material.dart';
import 'page.dart';
import 'fig1.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyCSPke0Nohzuq-lA4qwa8y3QscVSRfGkpM",
        appId: "1:349922620422:android:1ebed260ff1b656ad87f87",
      messagingSenderId: "349922620422",
      projectId: "test-e02df",
    ),
  );
  runApp(const app());
}


// void main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: const FirebaseOptions(apiKey: apiKey, appId: appId, messagingSenderId: messagingSenderId, projectId: projectId)
//   )
// }

class app extends StatelessWidget{
  const app({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,


      // theme:,
      theme: ThemeData(
        // This is the default 'light' theme data
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      // Define the theme used when themeMode is Dark or System default (if system is dark)
      darkTheme: ThemeData(
        // Set the brightness to dark
        brightness: Brightness.dark,
        // Customize the colors for your specific black theme
        scaffoldBackgroundColor: Colors.black, // Makes the main background truly black
        colorScheme: const ColorScheme.dark(
          primary: Colors.tealAccent, // Example accent color
          background: Colors.black, // Another key background setting
        ),
        useMaterial3: true,
      ),
      // Force the app to always use the darkTheme
      themeMode: ThemeMode.dark,


      title: "App",
      home: page(),
      // initialRoute: "/fig1",
      // routes: {
      //   '/': (context) => page(),
      //   '/fig1': (context) => fig1(),
      // },
    );
  }
}
