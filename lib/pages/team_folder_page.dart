import 'package:cloud_files/pages/project.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class TeamFolderPage extends StatefulWidget {
  const TeamFolderPage({super.key});

  @override
  State<TeamFolderPage> createState() => _TeamFolderPageState();
}

class _TeamFolderPageState extends State<TeamFolderPage> {
  double availableScreenWidth = 0;
  
  @override
  Widget build(BuildContext context) {
    availableScreenWidth = MediaQuery.of(context).size.width - 50;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            alignment: Alignment.bottomCenter,
            height: 170,
            decoration: BoxDecoration(color: Colors.blue.shade800),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nayem",
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      "Team Folder",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(.1),
                          borderRadius: BorderRadius.circular(10)),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(.1),
                          borderRadius: BorderRadius.circular(10)),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.notifications,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: const TextSpan(
                        text: "Storage",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        children: [
                      TextSpan(
                          text: " 1.5GB of 10GB",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w300))
                    ])),
                const Text(
                  "Upgrade",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                buildFileSizeChart("SOURCES", Colors.blue, .3),
                const SizedBox(
                  width: 2,
                ),
                buildFileSizeChart("DOCS", Colors.red, .25),
                const SizedBox(
                  width: 2,
                ),
                buildFileSizeChart("IMAGES", Colors.amber, .20),
                const SizedBox(
                  width: 2,
                ),
                buildFileSizeChart("FREE", Colors.grey, .23),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Divider(
            height: 20,
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(25),
              children: [
                const Text(
                  "Recently uploaded",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    buildFileColumn(
                      "desktop",
                      ".sketch",
                    ),
                    SizedBox(width: availableScreenWidth * .02),
                    buildFileColumn(
                      "mobile",
                      ".sketch",
                    ),
                    SizedBox(width: availableScreenWidth * .02),
                    buildFileColumn(
                      "interaction",
                      ".sketch",
                    ),
                    SizedBox(width: availableScreenWidth * .02),
                  ],
                ),
                const Divider(
                  height: 60,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Projects",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Create new",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                buildProjectRow(
                  "Chatbox",
                  Colors.blue,
                ),
                buildProjectRow("Images", Colors.blue.shade100),
                buildProjectRow("Desktops", Colors.blue.shade100),
                buildProjectRow("Chatbox", Colors.blue.shade100),
                buildProjectRow("Desktops", Colors.blue.shade100),
                buildProjectRow("Chatbox", Colors.blue.shade100),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: ConvexAppBar(
        items: const [
          TabItem(icon: Icons.access_time, title: 'History'),
          TabItem(icon: Icons.upload, title: 'Upload'),
          TabItem(icon: Icons.folder, title: 'Folder'),
        ],
        initialActiveIndex: 1, //optional, default as 0
        onTap: (int i) => print('click index=$i'),
      ),
      
    );
  }

  Widget buildProjectRow(String folderName, Color color) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute<void>(
          builder: (BuildContext context) => ProjectPage(folderName: folderName,),
        ));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 65,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.folder,
                  color: color,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  folderName,
                  style:
                      const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column buildFileColumn(String title, String subtitle) {
    return Column(
      children: [
        Container(
          width: availableScreenWidth * .31,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(38),
          height: 110,
          child: const Icon(
            Icons.diamond,
            color: Colors.blue,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        RichText(
          text: TextSpan(
              text: title,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
              children: [
                TextSpan(
                    text: subtitle,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 12))
              ]),
        ),
      ],
    );
  }

  Column buildFileSizeChart(String title, Color color, double widthPercentage) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: availableScreenWidth * widthPercentage,
          height: 4,
          color: color,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
        )
      ],
    );
  }
}
