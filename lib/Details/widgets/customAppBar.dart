import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
            )),
        SizedBox(width: MediaQuery.of(context).size.width * 0.21),
        const Text(
          "Book Details",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        )
      ],
    );
  }
}
