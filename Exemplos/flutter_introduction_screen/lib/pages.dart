import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_introduction_screen/app.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class Pages extends StatelessWidget {
  const Pages({Key? key}) : super(key: key);

  void _laucherURL(String url) async {
    // ignore: deprecated_member_use
    await launch(url);
  }

  PageViewModel _pageView({title, body, urlimg, urlLancher}) {
    return PageViewModel(
        title: title,
        body: body,
        image: Center(
          child: Image.network(urlimg),
        ),
        footer: ElevatedButton(
          child: const Text("Lets Go!"),
          onPressed: () {
            _laucherURL(urlLancher);
          },
        ));
  }

  @override
  Widget build(BuildContext context) {
    var listPages = [
      _pageView(
          title: "YouTube",
          body: "Inscreva-se no canal",
          urlimg:
              "https://unaids.org.br/wp-content/uploads/2015/06/YouTube-logo-full_color.png",
          urlLancher:
              "https://www.youtube.com/channel/UCmvq2E4upxe1g_yGEABgvfQ"),
      _pageView(
          title: "GitHub",
          body: "Acesse os projetos",
          urlimg:
              "https://i.pinimg.com/originals/b1/5e/ed/b15eedbdafbbdbca3249e3942f4faf3b.png",
          urlLancher: "https://github.com/cledivaldo"),
      _pageView(
          title: "Linkedin",
          body: "Siga nosso Linkedin",
          urlimg:
              "https://blog.waalaxy.com/wp-content/uploads/2021/01/Linkedin-Logo-300x188.png",
          urlLancher:
              "https://www.linkedin.com/in/cledivaldo-azevedo-567774123/"),
    ];
    return Scaffold(
      body: IntroductionScreen(
        pages: listPages,
        next: const Icon(Icons.navigate_next),
        done: const Text("Fechar"),
        showSkipButton: true,
        skip: const Text("Pular"),
        onDone: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const App()));
        },
        onSkip: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const App()));
        },
      ),
    );
  }
}
