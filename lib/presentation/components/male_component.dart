import 'package:bmicalculator/app/app_colors.dart';
import 'package:bmicalculator/app/app_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MaleCard extends StatelessWidget {
  String? name;
  IconData?icon;

   MaleCard({super.key,required this.name,required this.icon});
  bool ismale =true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: ismale ? AppColors.grayColor : AppColors.redColor,),

      child:   Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Icon(
          icon ,
            size: 70,
            color: Colors.white,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
           "$name",
            style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: AppColors.whiteColor),
          ),
        ],
      ),
    );
  }
}
