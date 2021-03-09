import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'layoutController.dart';

import '../Home/homeView.dart';
import '../Study/studyView.dart';
import '../Personal/personalView.dart';

class LayoutView extends StatelessWidget {
  final LayoutController _layoutController = Get.put(LayoutController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _layoutController.pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [HomeView(), StudyView(), PersonalView()],
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.black38,
            backgroundColor: Color(0xfff5f5f5),
            selectedItemColor: Color(0xff000000),
            selectedFontSize: ScreenUtil().setSp(10),
            unselectedFontSize: ScreenUtil().setSp(10),
            selectedLabelStyle: TextStyle(color: Color(0xff000000)),
            unselectedLabelStyle: TextStyle(color: Colors.black38),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  icon: const Icon(
                    IconData(0xe66a, fontFamily: "iconFont"),
                    size: 20,
                  ),
                  label: "首页"),
              BottomNavigationBarItem(
                  icon: const Icon(
                    IconData(0xe6d5, fontFamily: "iconFont"),
                    size: 20,
                  ),
                  label: "学习"),
              BottomNavigationBarItem(
                  icon: const Icon(
                    IconData(0xe66c, fontFamily: "iconFont"),
                    size: 20,
                  ),
                  label: "我的")
            ],
            currentIndex: _layoutController.pageIndex.value,
            onTap: _layoutController.onTapNavBarItem,
          )),
    );
  }
}
