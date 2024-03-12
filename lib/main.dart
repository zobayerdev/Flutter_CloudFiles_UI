import 'package:cloud_files/pages/team_folder_page.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        tools: const [
          ...DevicePreview.defaultTools,
        ],
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cloud Files',
      home: TeamFolderPage(),
    );
  }
}
