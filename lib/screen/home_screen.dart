import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_todo/utils/extensions.dart';
import 'package:gap/gap.dart';
import 'package:new_todo/widgets/display_white_text.dart';
import 'package:new_todo/widgets/common_containers.dart';

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
            top: 150,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
             physics: const AlwaysScrollableScrollPhysics(),
             padding: const EdgeInsets.all(20),

             child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                
                
                const Gap(20),

                Text(
                  'Completed',
                  style: context.textTheme.headlineMedium,
                  ),

                  const Gap(20),
                  CommonContainers(
                    height: deviceSize.height * 0.25,
                      child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 8,
                      padding: EdgeInsets.zero,
                      itemBuilder: (ctx, index){
                        return const Text('under construction');
                      },

                    ),
                  ),

                  const Gap(20),
                  ElevatedButton(
                    onPressed: (){},
                    child: const Padding(
                      padding: EdgeInsets.all(8.0), 
                    child: Text('Add New Task'),
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
       