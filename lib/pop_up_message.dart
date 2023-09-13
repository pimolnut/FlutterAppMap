import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

class PopUpMessage extends StatelessWidget {
  const PopUpMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          checkPermission(Permission.location, context);
        },
        child: const Text("check pkermission"),
      ),
    );
  }
}

Future<void> checkPermission(
    Permission permission, BuildContext context) async {
  final status = await permission.request();
  if (status.isGranted) {
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Permission is Granted")));
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Permission is  not Granted")));
  }
}
