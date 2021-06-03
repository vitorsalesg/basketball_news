import 'package:basketball_app/core/app_colors.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String title;
  final String description;

  const HeaderWidget({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  color: AppColors.orange,
                  fontFamily: 'Montserrat',
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 10),
              Text(
                description,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Montserrat',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
