import 'package:flutter/material.dart';
import 'package:lecture/pages/myButtons.dart';

class Newbox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  Newbox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[500],
      content: SizedBox(
        height: 200,
        width: 200,
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Mybuttons(
                    text: "Save",
                    onPressed: () {
                      onSave();
                    }),
                const SizedBox(width: 8),
                Mybuttons(
                    text: "Cancel",
                    onPressed: () {
                      onCancel();
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
