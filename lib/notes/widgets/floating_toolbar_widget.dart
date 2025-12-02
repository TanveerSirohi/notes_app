// import 'package:flutter/material.dart';

// class FloatingToolBarWidget extends StatelessWidget {
//   const FloatingToolBarWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       left: 0,
//       right: 0,

//       bottom: MediaQuery.of(context).viewInsets.bottom,

//       child: Container(
//         color: Colors.black.withOpacity(0.2),
//         height: 50,
//         padding: const EdgeInsets.symmetric(horizontal: 12),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Icon(Icons.format_bold, color: Colors.white70),
//             Icon(Icons.format_italic, color: Colors.white70),
//             Icon(Icons.format_underline, color: Colors.white70),
//             Icon(Icons.link, color: Colors.white70),
//             Icon(Icons.format_align_left, color: Colors.white70),
//             Icon(Icons.format_align_center, color: Colors.white70),
//             Icon(Icons.format_align_right, color: Colors.white70),
//             Icon(Icons.format_list_bulleted, color: Colors.white70),
//             Icon(Icons.code, color: Colors.white70),
//             Icon(Icons.title, color: Colors.white70),
//             Icon(Icons.functions, color: Colors.white70),
//             Icon(Icons.check_box, color: Colors.white70),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class FloatingToolBarWidget extends StatelessWidget {
  const FloatingToolBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(
      context,
    ).viewInsets.bottom; // keyboard height

    return AnimatedPositioned(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeOut,
      left: 0,
      right: 0,
      bottom: bottomInset == 0 ? 0 : bottomInset, // shift above keyboard
      child: Container(
        color: Colors.black.withOpacity(0.2),
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(Icons.format_bold, color: Colors.white70),
            Icon(Icons.format_italic, color: Colors.white70),
            Icon(Icons.format_underline, color: Colors.white70),
            Icon(Icons.link, color: Colors.white70),
            Icon(Icons.format_align_left, color: Colors.white70),
            Icon(Icons.format_align_center, color: Colors.white70),
            Icon(Icons.format_align_right, color: Colors.white70),
            Icon(Icons.format_list_bulleted, color: Colors.white70),
            Icon(Icons.code, color: Colors.white70),
            Icon(Icons.title, color: Colors.white70),
            Icon(Icons.functions, color: Colors.white70),
            Icon(Icons.check_box, color: Colors.white70),
          ],
        ),
      ),
    );
  }
}
