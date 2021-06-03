import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final bool isBorder;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key? key,
    required this.title,
    required this.isBorder,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        child: Text(
          title,
          style: TextStyle(
            color: isBorder ? Colors.orange : Colors.white,
            fontSize: 16,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            isBorder ? Colors.transparent : Colors.orange,
          ),
          padding: MaterialStateProperty.all(EdgeInsets.all(13)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
              side: isBorder
                  ? BorderSide(width: 1, color: Colors.orange)
                  : BorderSide.none,
            ),
          ),
          overlayColor: MaterialStateProperty.all<Color>(
            Colors.grey.withOpacity(0.1),
          ),
        ),
        onPressed: onClicked,
      ),
    );
  }
}
