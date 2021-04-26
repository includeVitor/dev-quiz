import 'package:flutter/material.dart';
import 'package:nlw5_flutter/challenge/widgets/next_button/next_button_widget.dart';
import 'package:nlw5_flutter/core/app_images.dart';
import 'package:nlw5_flutter/core/app_text_styles.dart';
import 'package:share_plus/share_plus.dart';

class ResultPage extends StatelessWidget {
  final String title;
  final int length;
  final int result;

  const ResultPage({
    Key? key,
    required this.title,
    required this.length,
    required this.result,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(top: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImages.trophy),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Parabéns!",
                      style: AppTextStyles.heading40,
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Text.rich(
                  TextSpan(children: [
                    TextSpan(text: "Você concluiu ", style: AppTextStyles.body),
                    TextSpan(text: "\n $title", style: AppTextStyles.bodyBold),
                    TextSpan(
                        text: "\n com $result de $length acertos",
                        style: AppTextStyles.body),
                  ]),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 68),
                      child: NextButtonWidget.purple(
                          label: "Compartilhar",
                          onTap: () {
                            Share.share(
                                'DevQuiz NLW 5 - Flutter: Resultado do Quiz: $title\nObtive ${result / length}% aproveitamento!');
                          }),
                    )),
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 68),
                          child: NextButtonWidget.white(
                              label: "Voltar ao inicio",
                              onTap: () {
                                Navigator.pop(context);
                              })),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
