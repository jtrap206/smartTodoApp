import 'package:flutter/material.dart';
import 'package:new_todo/widgets/common_containers.dart';
import 'package:new_todo/utils/extensions.dart';
import 'package:new_todo/data/models/task.dart';

class DisplayListOfTasks extends StatelessWidget {
  const DisplayListOfTasks({
    super.key,
    required this.tasks,
    required this.isCompletedTasks});

    final List<Task> tasks;
    final bool isCompletedTasks;

   @override
    Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;
    


    return CommonContainers(
                  height: deviceSize.height * 0.3,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 8,
                    padding: EdgeInsets.zero,
                    itemBuilder: (ctx, index){
                      return const Text("under construction");
                    },
                  ),

                );
  }
}