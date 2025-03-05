import 'package:flutter/material.dart';
import 'package:quran_app/app_colors.dart';

class QuranTap extends StatelessWidget {
  const QuranTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/quranLogo.jpg'),
        Divider(
          color: AppColors.bottomNavigationColor,
          thickness: 3,
        ),
        Text('Sora Name'),
      ],
    );
  }
}
