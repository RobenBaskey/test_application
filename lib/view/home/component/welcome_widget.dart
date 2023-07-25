import 'package:flutter/material.dart';
import '../../../utils/app_constant.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      AppConstant.welcomeText,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ));
  }
}
