


import 'package:flutter/material.dart';

class SubmitExamDialog extends StatelessWidget {
  const SubmitExamDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Alert'),
      content: const Text('có chắc là muốn nộp chưa đó?😱'),
      actions: [
        TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Không')),
        TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Có'))
      ],
    );
  }
}