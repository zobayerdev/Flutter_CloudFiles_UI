import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectPage extends StatefulWidget {
  final String folderName;
  ProjectPage({required this.folderName, super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          alignment: Alignment.bottomCenter,
          height: 170,
          decoration: BoxDecoration(color: Colors.grey.shade100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Chatbox",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    "Project",
                    style: TextStyle(fontSize: 17, color: Colors.black),
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
                          color: Colors.blue,
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
                          Icons.share_outlined,
                          color: Colors.blue,
                        )),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 25, top: 25),
          height: 130,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              buildAvater('Nayem', 'family'),
              const SizedBox(
                width: 10,
              ),
              buildAvater('Noman', 'family'),
              const SizedBox(
                width: 10,
              ),
              const SizedBox(
                width: 10,
              ),
              buildAvater('Noman', 'family'),
              const SizedBox(
                width: 10,
              ),
              const SizedBox(
                width: 10,
              ),
              buildAvater('Noman', 'family'),
              const SizedBox(
                width: 10,
              ),
              const SizedBox(
                width: 10,
              ),
              buildAvater('Noman', 'family'),
              const SizedBox(
                width: 10,
              ),
              const SizedBox(
                width: 10,
              ),
              buildAvater('Noman', 'family'),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
        Divider(),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
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
        ),
      ]),
    );
  }

  Column buildAvater(String name, String fileName) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: Image.asset('lib/assets/$fileName.jpg').image,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          name,
          style: GoogleFonts.spaceGrotesk(
            textStyle: const TextStyle(
                color: Colors.blue,
                letterSpacing: .5,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
