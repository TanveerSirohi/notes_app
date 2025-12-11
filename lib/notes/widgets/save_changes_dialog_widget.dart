import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/notes/widgets/confirm_discard_dialog_widget.dart';
import 'package:notes_app/notes/widgets/save_notes_widget.dart';

class SaveChangesDialog extends StatelessWidget {
  const SaveChangesDialog(Required required, Type voidCallback, 
      {super.key,
      required void Function() onSave,
      required void Function() onDiscard, required void Function() Save});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.all(20),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
        decoration: BoxDecoration(
          color: const Color(0xFF2E2E2E), // dark grey like your UI
          borderRadius: BorderRadius.circular(28),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Top info icon
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey[700],
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.info, color: Colors.white70),
            ),

            const SizedBox(height: 25),

            // Title
            const Text(
              "Save changes ?",
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Discard button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    minimumSize: const Size(120, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context, false);
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) => ConfirmDiscardDialog(),
                    );
                  },
                  child: const Text("Discard"),
                ),

                // Save button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    minimumSize: const Size(120, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context, false);
                  },
                  child: const Text("Save"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
