import 'package:basketball_app/core/app_colors.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final bool isBorder;
  final VoidCallback onClicked;
  final bool disable;
  final bool loading;

  const ButtonWidget({
    Key? key,
    required this.title,
    required this.isBorder,
    required this.onClicked,
    this.disable = false,
    this.loading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Opacity(
        opacity: disable ? .60 : 1.0,
        child: TextButton(
          child: loading
              ? SizedBox(
                  height: 15,
                  width: 15,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(AppColors.white),
                  ),
                )
              : Text(title,
                  style: TextStyle(
                    color: isBorder ? AppColors.orange : AppColors.white,
                    fontSize: 16,
                  )),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              isBorder ? Colors.transparent : AppColors.orange,
            ),
            padding: MaterialStateProperty.all(EdgeInsets.all(13)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
                side: isBorder
                    ? BorderSide(width: 1, color: AppColors.orange)
                    : BorderSide.none,
              ),
            ),
            overlayColor: MaterialStateProperty.all<Color>(
              AppColors.grey.withOpacity(0.1),
            ),
          ),
          onPressed: disable ? () {} : onClicked,
        ),
      ),
    );
  }
}
