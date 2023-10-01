import 'package:bmicalculator/app/app_colors.dart';
import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final bool? gender;
  final int? age;
  final double? result;
  Results({
    required this.result,
    required this.age,
    required this.gender,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("results",style: TextStyle(color: AppColors.whiteColor),),
        centerTitle: true,
        backgroundColor: AppColors.redColor,

      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: AppColors.mainColor),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 500,right: 20,left: 20,top: 50),
          child: Container(
            decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "result:$result",
                        style: const TextStyle(fontSize: 25),
                      ),
                      Text("age:$age", style: const TextStyle(fontSize: 25)),
                      const Text(
                        "gender:male",
                        style: TextStyle(fontSize: 25),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
