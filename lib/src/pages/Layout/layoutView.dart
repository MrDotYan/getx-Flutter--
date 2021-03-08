import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'layoutController.dart';

import '../Home/homeView.dart';
import '../Categroy/categroyView.dart';

class LayoutView extends StatelessWidget {
  final LayoutController _layoutController = Get.put(LayoutController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _layoutController.pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [HomeView(), CategroyView()],
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
            items: [
              BottomNavigationBarItem(
                  icon: const Icon(IconData(0xe66a, fontFamily: "iconFont")),
                  label: "首页"),
              BottomNavigationBarItem(
                  icon: const Icon(IconData(0xe65f, fontFamily: "iconFont")),
                  label: "课程"),
            ],
            currentIndex: _layoutController.pageIndex.value,
            onTap: _layoutController.onTapNavBarItem,
          )),
    );
  }
}
