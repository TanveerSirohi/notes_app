import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/color/app_color.dart';
import 'package:notes_app/core/icon_assets.dart';
import 'package:notes_app/core/image_assets.dart';

import 'package:notes_app/notes/screen/editor_screen.dart';
import 'package:notes_app/notes/screen/searching_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, String>> notes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blackcolor,
      body: Padding(
        padding: const EdgeInsets.only(top: 55),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Notes',
                  style: GoogleFonts.nunito(
                    color: AppColor.whitecolor,
                    fontSize: 43,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 90),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppColor.greycolor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SearchingScreen(),
                        ),
                      );
                    },
                    child: SvgPicture.asset(
                      IconAssets.searchIcons,
                      fit: BoxFit.none,
                    ),
                  ),
                ),
              ],
            ),
            // //SizedBox(height: 100),
            Expanded(
              child: notes.isEmpty
                  ? Padding(
                      padding: const EdgeInsets.only(top: 70),
                      child: Image.asset(ImageAssets.addnoteImage),
                    )
                  : ListView.builder(
                      itemCount: notes.length,
                      itemBuilder: (context, index) {
                        final note = notes[index];
                        return ListTile(
                          title: Text(
                            note["title"]!,
                            style: GoogleFonts.nunito(
                              color: AppColor.whitecolor,
                              fontSize: 20,
                            ),
                          ),
                          subtitle: Text(
                            note["content"]!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: AppColor.lightcolor),
                          ),
                        );
                      },
                    ),
            )

            // Padding(
            //   padding: const EdgeInsets.only(top: 70),
            //   child: Image.asset(ImageAssets.addnoteImage),
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final data = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EditorScreen()),
          );

          if (data != null) {
            setState(() {
              notes.add({
                "title": data["title"],
                "content": data["content"],
              });
            });
          }
        },
        child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: AppColor.blackcolor,
            borderRadius: BorderRadius.circular(10),
            // shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(blurRadius: 10, spreadRadius: 0, offset: Offset(0, 0)),
            ],
          ),
          child: Icon(Icons.add, color: AppColor.whitecolor, size: 40),
        ),
      ),
    );
  }
}
