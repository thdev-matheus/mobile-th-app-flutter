import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({
    super.key,
    required this.colorWhite,
    required this.colorMainAplha,
    required this.colorMain,
    required this.pageController,
  });

  final Color colorWhite;
  final Color colorMainAplha;
  final Color colorMain;
  final PageController pageController;

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  void toPage(int page) {
    widget.pageController.animateToPage(
      page,
      duration: Duration(milliseconds: 800),
      curve: Curves.ease,
    );
    Navigator.pop(context);
  }

  final Uri _urlLKD = Uri.parse('https://www.linkedin.com/in/th-matheus/');
  final Uri _urlGH = Uri.parse('https://github.com/thdev-matheus');
  final Uri _urlPF =
      Uri.parse('https://portfolio-matheus-vieira-theus.vercel.app/');

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: widget.colorMainAplha,
      child: ListView(
        children: [
          ListTile(
            iconColor: widget.colorWhite,
            textColor: widget.colorWhite,
            title: const Text("Boas-vindas"),
            trailing: const Icon(Icons.auto_awesome),
            onTap: () {
              toPage(0);
            },
          ),
          ListTile(
            iconColor: widget.colorWhite,
            textColor: widget.colorWhite,
            title: const Text("Contador turbinado"),
            trailing: const Icon(Icons.plus_one),
            onTap: () {
              toPage(1);
            },
          ),
          ListTile(
            iconColor: widget.colorWhite,
            textColor: widget.colorWhite,
            title: const Text("Sorteador"),
            trailing: const Icon(Icons.onetwothree),
            onTap: () {
              toPage(2);
            },
          ),
          ListTile(
            iconColor: widget.colorWhite,
            textColor: widget.colorWhite,
            title: const Text("To do List"),
            trailing: const Icon(Icons.list_alt),
            onTap: () {
              toPage(3);
            },
          ),
          ListTile(
            iconColor: widget.colorWhite,
            textColor: widget.colorWhite,
            title: const Text("IMC Calculator"),
            trailing: const Icon(Icons.calculate),
            onTap: () {
              toPage(4);
            },
          ),
          BottomAppBar(
            child: Column(
              children: [
                ListTile(
                  textColor: Color.fromRGBO(7, 153, 146, 1.0),
                  title: const Text("Visitar meu Linkedin"),
                  onTap: () async {
                    await _launchUrl(_urlLKD);
                  },
                ),
                ListTile(
                  textColor: Color.fromRGBO(7, 153, 146, 1.0),
                  title: const Text("Visitar meu Github"),
                  onTap: () async {
                    await _launchUrl(_urlGH);
                  },
                ),
                ListTile(
                  textColor: Color.fromRGBO(7, 153, 146, 1.0),
                  title: const Text("Visitar meu Portfólio"),
                  onTap: () async {
                    await _launchUrl(_urlPF);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
