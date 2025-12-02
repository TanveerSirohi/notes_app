import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/color/app_color.dart';

class SearchingScreen extends StatelessWidget {
  const SearchingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blackcolor,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              SizedBox(height: 20),

              Container(
                // width: 360,
                height: 48,
                decoration: BoxDecoration(
                  color: AppColor.greycolor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: TextField(
                          style: TextStyle(color: AppColor.whitecolor),

                          cursorHeight: 30,
                          cursorWidth: 1,
                          cursorColor: AppColor.whitecolor,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search by the keyword...",
                            hintStyle: GoogleFonts.nunito(
                              color: AppColor.lightcolor,
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Icon(Icons.close, color: AppColor.lightcolor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
