import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:personal_website/common/app_colors.dart';

class BlurRectWidget extends StatelessWidget {
  final Widget _widget;
  double _padding = 10;

  BlurRectWidget(this._widget, {double padding = 0}) {
    if (padding != 0) this._padding = padding;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        //设置四周圆角 角度 这里的角度应该为 父Container height 的一半
        borderRadius: BorderRadius.all(Radius.circular(10)),
        //设置四周边框
        // border: Border.all(width: 1, color: AppColors.grey),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 20,
            sigmaY: 20,
          ),
          child: Container(
            color: Colors.white10,
            padding: EdgeInsets.all(_padding),
            child: _widget,
          ),
        ),
      ),
    );
  }
}
