import 'package:flutter/material.dart';
import 'package:uplabs1/models/book_model.dart';
import 'package:uplabs1/views/page2.dart';

import '../components/colors.dart';
import '../components/paddings.dart';
import '../components/project_purple_button.dart';
import '../images/images_paths.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});
  final _appTittle = "PageTurner.";
  final _subTittle = "Read your way to a new adventure";
  final _descripton =
      "Welcome to our Book Reader App Online, where you can embark on a new adventure with just a tap of your finger!";
  final _buttonText = "Get Started";
  final _textButtonText = "Already Sign Up?";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: ProjectPaddings.topItemsPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: ProjectPaddings.mainPadding,
              child: Text(
                _appTittle,
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: ProjectColors.scharpelliPink,
                    ),
              ),
            ),
            Padding(
              padding: ProjectPaddings.mainPadding,
              child: Text(
                _subTittle,
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: ProjectColors.black,
                    ),
              ),
            ),
            Padding(
              padding: ProjectPaddings.mainPadding,
              child: Text(
                _descripton,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...List.generate(
                    Books().books.length,
                    (index) => Padding(
                      padding: ProjectPaddings.onlyleftItemsPadding,
                      child: PngImages(path: Books().books[index].image!),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: ProjectPaddings.smalltopItemsPadding,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProjectBigButton(
                      page: const Page2(),
                      text: _buttonText,
                      textColor: ProjectColors.white,
                      color: ProjectColors.scharpelliPink,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        _textButtonText,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: ProjectColors.black,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
