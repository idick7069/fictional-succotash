import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:personal_website/common/app_colors.dart';
import 'package:personal_website/widgets/blur_rect_widget.dart';

class SummaryView extends HookConsumerWidget {
  const SummaryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: AppColors.flatBlue,
        child: Column(
            children: [
              Text('123'),
              Text('456')
            ],
        )
    ));
    }
}
