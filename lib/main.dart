import 'package:decentralized_data_sample_app/models/activity.dart';
import 'package:decentralized_data_sample_app/models/login.dart';
import 'package:decentralized_data_sample_app/services/authenticator.dart';
import 'package:decentralized_data_sample_app/services/storage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _useApp() async {
    var user = AuthenticatorService.user; // email
    if (!Login.exists(user)) {
      user = await AuthenticatorService.createUser(
          'textinputemail', 'textinputpassword');
    }

    // access file on google drive, onedrive
    List<Activity> activities =
        await Storage.getActivitiesFromPersonalCloud(user);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              'Use email and passord to access to your data (like activites)',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _useApp,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
