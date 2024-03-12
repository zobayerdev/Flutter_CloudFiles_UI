import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        items: const [ 
          TabItem(icon: Icons.history, title:"History"),
          TabItem(icon: Icons.upload_file, title:"Upload File"),
          TabItem(icon: Icons.folder, title:"Folder"),
        ],
      ),
    );
  }
}