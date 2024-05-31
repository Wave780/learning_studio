import 'package:flutter/material.dart';
import 'package:learning_studio/app/utils/image.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),

      //color: Colors.grey[200],
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image(
            image: AssetImage(AppAssetsImage.headerImage),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Learning Studio',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 9),
              Text(
                'Start learning online',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                ),
              )
            ],
          ),
          SizedBox(
            width: 50,
          ),
          Image(
            image: AssetImage(AppAssetsImage.optionIcon),
          ),
        ],
      ),
    );
  }
}
