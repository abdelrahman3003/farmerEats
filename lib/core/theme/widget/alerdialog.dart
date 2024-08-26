import 'package:flutter/material.dart';

class AppAlerdialog extends StatelessWidget {
  const AppAlerdialog({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(subTitle),
      actions: <Widget>[
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop(); // Dismiss the dialog
          },
        ),
        TextButton(
          child: const Text('OK'),
          onPressed: () {
            Navigator.of(context).pop(); // Dismiss the dialog
            // Add your action here
          },
        ),
      ],
    );
  }
}
