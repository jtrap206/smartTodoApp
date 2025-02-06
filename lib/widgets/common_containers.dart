import 'package:flutter/material.dart';
import 'package:new_todo/utils/utils.dart';

class CommonContainers extends StatelessWidget {
  const CommonContainers ({super.key, this.child, this.height});
  final Widget? child;
  final double? height;

  @override
  Widget build(BuildContext context) {
      final deviceSize = context.deviceSize;
    // TODO: implement build
    return   Container(
                  width: deviceSize.width,
                  height: height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: context.colorScheme.primaryContainer,
                  ),

                  child: child,
                );
  }


}