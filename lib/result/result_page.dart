import 'package:flutter/material.dart';
import 'package:nlw5_flutter/core/app_text_styles.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Parabéns",
                style: AppTextStyles.heading40,
              ),
            ],
          ),
          Text(
            "Parabéns",
            style: AppTextStyles.heading40,
          ),
          Text(
            "Parabéns",
            style: AppTextStyles.heading40,
          ),
        ],
      ),
    );
  }
}
