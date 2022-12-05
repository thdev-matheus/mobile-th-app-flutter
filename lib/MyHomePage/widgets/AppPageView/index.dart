// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:th_app/MyHomePage/widgets/AppPageView/pages/PlusCounter/index.dart';
import 'package:th_app/MyHomePage/widgets/AppPageView/pages/PrizeDraw/index.dart';
import 'package:th_app/MyHomePage/widgets/AppPageView/pages/ToDoList/index.dart';
import 'package:th_app/MyHomePage/widgets/AppPageView/pages/WelcomePage/index.dart';

class AppPageView extends StatefulWidget {
  const AppPageView({
    super.key,
    required this.pageController,
    required this.currentIndex,
    required this.setIndex,
  });

  final PageController pageController;
  final int currentIndex;
  final setIndex;

  @override
  State<AppPageView> createState() => _AppPageViewState();
}

class _AppPageViewState extends State<AppPageView> {
  @override
  Widget build(BuildContext context) {
    double vh = MediaQuery.of(context).size.height;
    double vw = MediaQuery.of(context).size.width;

    return PageView(
      controller: widget.pageController,
      onPageChanged: (int pageIndex) {
        widget.setIndex(pageIndex);
      },
      children: [
        WelcomePage(vh: vh, vw: vw),
        PlusCounter(vh: vh, vw: vw),
        const PrizeDraw(),
        const ToDoList(),
        Container(
          color: Colors.tealAccent,
        ),
      ],
    );
  }
}
