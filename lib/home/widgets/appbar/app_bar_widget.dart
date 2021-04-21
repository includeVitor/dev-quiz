import 'package:flutter/material.dart';
import 'package:nlw5_flutter/core/app_gradients.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
            preferredSize: Size.fromHeight(250),
            child: Container(
              height: 250,
              decoration: BoxDecoration(gradient: AppGradients.linear),
              child: Row(
                children: [
                  Text("Olá mundo"),
                  Container(
                    width: 58,
                    height: 58,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://avatars.githubusercontent.com/u/38621315?v=4"),
                      ),
                    ),
                  )
                ],
              ),
            ));
}
