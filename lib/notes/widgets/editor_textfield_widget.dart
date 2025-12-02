import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/color/app_color.dart';

class EditorTextFieldWidget extends StatelessWidget {
  const EditorTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          maxLines: null,
          minLines: 1,
          keyboardType: TextInputType.multiline,
          cursorHeight: 60,
          style: TextStyle(
            color: AppColor.whitecolor,
            fontSize: 35,
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
            hintText: "Title",

            hintStyle: GoogleFonts.nunito(
              fontSize: 48,
              fontWeight: FontWeight.w400,

              color: AppColor.lightcolor,
            ),
            border: InputBorder.none,
          ),
        ),
        SizedBox(height: 20),
        TextField(
          maxLines: null,
          minLines: 1,
          keyboardType: TextInputType.multiline,
          cursorHeight: 30,
          style: TextStyle(
            color: AppColor.whitecolor,
            fontSize: 23,
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
            hintText: "Type something...",

            hintStyle: GoogleFonts.nunito(
              fontSize: 23,
              fontWeight: FontWeight.w400,
              color: AppColor.lightcolor,
            ),
            border: InputBorder.none,
          ),
        ),
      ],
    );
  }
}
