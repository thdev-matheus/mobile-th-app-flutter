import 'package:flutter/material.dart';
import 'package:th_app/MyHomePage/widgets/AppDrawer/index.dart';
import 'package:th_app/MyHomePage/widgets/AppPageView/index.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController pageController = PageController();
  late int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    setIndex(int pageIndex) {
      setState(() {
        currentIndex = pageIndex;
      });
    }

    const Color colorWhite = Colors.white;
    const Color colorMain = Color.fromRGBO(7, 153, 146, 1.0);
    const Color colorMainAlpha = Color.fromRGBO(7, 153, 146, 0.8);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: colorMain,
          centerTitle: true,
          title: const Text("TH App"),
        ),
        drawer: AppDrawer(
          colorWhite: colorWhite,
          colorMainAplha: colorMainAlpha,
          colorMain: colorMain,
          pageController: pageController,
        ),
        body: AppPageView(
          currentIndex: currentIndex,
          pageController: pageController,
          setIndex: setIndex,
        ));
  }
}
