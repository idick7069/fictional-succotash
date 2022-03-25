import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:personal_website/common/app_colors.dart';
import 'package:personal_website/ui/views/portfolio_view.dart';
import 'package:personal_website/ui/views/summary_view.dart';
import 'package:personal_website/ui/views/timeline_view.dart';
import 'package:personal_website/widgets/blur_rect_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePageView extends HookConsumerWidget {
  HomePageView({Key? key}) : super(key: key);
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        actions: <Widget>[
          TextButton(
            onPressed: () {},
            child: Text(
              "Portfolio",
              style: TextStyle(
                  color: AppColors.grey, fontSize: ScreenUtil().setSp(30)),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Design',
              style: TextStyle(
                  color: AppColors.grey, fontSize: ScreenUtil().setSp(30)),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'PhotoGraphy',
              style: TextStyle(
                  color: AppColors.grey, fontSize: ScreenUtil().setSp(30)),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: [
            PageView(
              controller: _pageController,
              scrollDirection: Axis.vertical,
              children: [
                PortfolioView(),
                SummaryView(),
                TimeLineView(),
                Container(
                  color: Colors.yellow,
                  child: const Text('789'),
                )
              ],
            ),
            Positioned(
              left: ScreenUtil().setWidth(27),
              child: BlurRectWidget(
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 0, bottom: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/ic_medium.png',
                        height: ScreenUtil().setHeight(36),
                        width: ScreenUtil().setWidth(36),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(20),
                      ),
                      Image.asset(
                        'assets/ic_linkedin.png',
                        height: ScreenUtil().setHeight(36),
                        width: ScreenUtil().setWidth(36),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(20),
                      ),
                      Image.asset(
                        'assets/ic_github.png',
                        height: ScreenUtil().setHeight(36),
                        width: ScreenUtil().setWidth(36),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(20),
                      ),
                      Image.asset(
                        'assets/ic_instagram.png',
                        height: ScreenUtil().setHeight(36),
                        width: ScreenUtil().setWidth(36),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(20),
                      ),
                      Image.asset(
                        'assets/ic_facebook.png',
                        height: ScreenUtil().setHeight(36),
                        width: ScreenUtil().setWidth(36),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: ScreenUtil().setWidth(27),
              child: RotatedBox(
                quarterTurns: 1,
                child: SmoothPageIndicator(
                    controller: _pageController, // PageController
                    count: 4,
                    effect: WormEffect(), // your preferred effect
                    onDotClicked: (index) {
                      _pageController.animateToPage(index,
                          duration: Duration(milliseconds: 150),
                          curve: Curves.easeIn);
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
