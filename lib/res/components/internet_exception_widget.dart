import 'package:flutter/material.dart';
import 'package:rest_api/res/colors/app_colors.dart';

class InternetExceptionWidget extends StatelessWidget {
  const InternetExceptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            children: const [
              Icon(
                Icons.cloud_off,
                color: AppColors.redColor,
                size: 20,
              ),
              Text('No Internet Connection')
            ],
          ),
        ),
      ),
    );
  }
}
