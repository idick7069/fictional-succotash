import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:personal_website/common/app_colors.dart';
import 'package:personal_website/widgets/blur_rect_widget.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimeLineView extends HookConsumerWidget {
  const TimeLineView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      color: AppColors.flatBlue,
      child: Padding(
        padding: EdgeInsets.all(40.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 18,
                    itemBuilder: (context, index) {
                      return Container(
                        constraints: const BoxConstraints(maxHeight: 100),
                        color: Colors.transparent,
                        child: TimelineTile(
                          axis: TimelineAxis.horizontal,
                          alignment: TimelineAlign.manual,
                          lineXY: 0.7,
                          startChild: Container(
                            constraints: const BoxConstraints(
                              minWidth: 120,
                            ),
                            color: Colors.transparent,
                            child: Text('Hey'),
                            alignment: Alignment.bottomCenter,
                          ),
                          endChild: Container(
                            color: Colors.transparent,
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    ));
  }
}
