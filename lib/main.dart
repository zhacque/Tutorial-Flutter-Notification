import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'notif.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Notif.initialize(flutterLocalNotificationsPlugin);  
  }
@override 
Widget build (BuildContext context) {
  return Scaffold (
    appBar: AppBar(
      title: const Text('Flutter Notification'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('Flutter Notification'),
          ElevatedButton(
            onPressed: () async {
              Notif.showTextNotification(
                id: 0,
                tittle: 'Mamah',
                body: 'Mamah Minta pulsa',
                payload: 'Ini Payload',
                flutterLocalNotificationsPlugin: flutterLocalNotificationsPlugin,
              );
            },
            child: const Text('Show Notification'),
          ),
        ],
      ),
    ),
  );
}
}

