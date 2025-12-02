import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/color/app_color.dart';
import 'package:notes_app/core/icon_assets.dart';
import 'package:notes_app/core/image_assets.dart';
import 'package:notes_app/notes/screen/editor_screen.dart';
import 'package:notes_app/notes/screen/searching_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blackcolor,

      body: Padding(
        padding: const EdgeInsets.only(top: 45, left: 30),
        child: Column(
          children: [
            Row(
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
                SizedBox(width: 20),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppColor.greycolor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: SvgPicture.asset(
                    IconAssets.infoIcons,
                    fit: BoxFit.none,
                  ),
                ),
              ],
            ),
            SizedBox(height: 100),
            Image.asset(ImageAssets.addnoteImage),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EditorScreen()),
          );
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
