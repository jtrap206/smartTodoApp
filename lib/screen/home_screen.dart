import 'package:flutter/material.dart';
import 'package:new_todo/utils/extensions.dart';
import 'package:gap/gap.dart';
import 'package:new_todo/widgets/display_white_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    final Colors = context.colorScheme;
    final deviceSize =context.deviceSize;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                color: Colors.primary,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DisplayWhiteText(
                      text: 'feb, 6th 2025',
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                    DisplayWhiteText(
                      text: "SMART.TODO!",
                      fontSize: 20,
                      )
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: 170,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
             physics: const AlwaysScrollableScrollPhysics(),
             padding: const EdgeInsets.all(20),

             child: Column(
              children: [
                Container(
                  width: deviceSize.width,
                  height: deviceSize.height * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.primaryContainer,
                  ),

                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 8,
                    padding: EdgeInsets.zero,
                    itemBuilder: (ctx, index){
                      return const Text("under construction");
                    }
                  ),
                )
              ],
             ), 
            ),
          )

        ],
      )
    );

  }
} 
       