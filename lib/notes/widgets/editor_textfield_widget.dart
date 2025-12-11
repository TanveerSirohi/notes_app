import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/color/app_color.dart';

class EditorTextFieldWidget extends StatelessWidget {
  final TextEditingController titleController;
  final TextEditingController bodyController;
  final TextEditingController contentController;

  const EditorTextFieldWidget({
    super.key,
    required this.titleController,
    required this.bodyController,
    required this.contentController,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TextField(
            controller: titleController,
            maxLines: null,
            minLines: 1,
            keyboardType: TextInputType.multiline,
            cursorHeight: 40,
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
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: bodyController,
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
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            ),
          ),
          TextField(
            controller: contentController,
          ),
        ],
      ),
    );
  }
}
