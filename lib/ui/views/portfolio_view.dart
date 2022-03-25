import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:personal_website/common/app_colors.dart';
import 'package:personal_website/widgets/blur_rect_widget.dart';

class PortfolioView extends HookConsumerWidget {
  const PortfolioView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: AppColors.flatBlue,
        child: Stack(
          children: [
            Image.asset('assets/man.png'),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Hi, I\'m Frank Wu',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: ScreenUtil().setSp(80),
                            ),
                          ),
                          Text(
                            'Android Application Developer',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: ScreenUtil().setSp(30),
                            ),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(50),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(300),
                            width: ScreenUtil().setWidth(700),
                            child: ClipRect(
                              //背景过滤器
                              child: BlurRectWidget(
                                Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const AutoSizeText(
                                        'I am enjoy use Kotlin and flutter build some app to fix some problem in life, and not only in development , I also learn about UI/UX and Photography, you can click top button to see more.',
                                        maxLines: 4,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: ScreenUtil().setHeight(35),
                                      ),
                                      Align(
                                          alignment: Alignment.bottomRight,
                                          child: OutlinedButton(
                                            onPressed: () {},
                                            child: const Text(
                                              'Contract',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
