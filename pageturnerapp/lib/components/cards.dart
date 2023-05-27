import 'package:flutter/material.dart';
import 'package:uplabs1/components/paddings.dart';
import 'package:uplabs1/components/project_purple_button.dart';
import 'package:uplabs1/views/page3.dart';

import '../images/images_paths.dart';
import '../models/book_model.dart';
import '../views/page1.dart';
import '../views/page2.dart';
import 'colors.dart';

class ProjectCard extends StatelessWidget {
  final CardTheme theme;
  final Book book;
  final String buttonText;
  const ProjectCard({
    super.key,
    required this.buttonText,
    required this.theme,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPaddings.cardPadding,
      child: Container(
        //  decoration: BoxDecoration(bor),
        width: 350,
        height: 175,
        decoration: BoxDecoration(
          color: theme.backGroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: ProjectPaddings.onlyleftItemsPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProjectSmallButton(
                    color: theme.smallBTColor,
                    text: buttonText,
                    textColor: theme.smallBTextColor,
                  ),
                  Text(book.name!,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontWeight: FontWeight.bold)),
                  Text(
                    book.author!,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(),
                  ),
                  ProjectMidButton(
                    page: Page3(
                      book: book,
                    ),
                    text: "Chek It Out",
                    color: theme.midBTColor,
                    textColor: theme.midBTextColor,
                  )
                ],
              ),
            ),
            Padding(
              padding: ProjectPaddings.cardPadding,
              child: SmallPngImages(path: book.image!),
            ),
          ],
        ),
      ),
    );
  }
}

class CardTheme {
  final Color smallBTextColor;
  final Color smallBTColor;
  final Color midBTColor;
  final Color midBTextColor;

  final Color backGroundColor;
  const CardTheme({
    required this.smallBTextColor,
    required this.smallBTColor,
    required this.backGroundColor,
    required this.midBTColor,
    required this.midBTextColor,
  });
}

class CardThemes {
  final CardTheme pink = const CardTheme(
      midBTColor: ProjectColors.scharpelliPink,
      midBTextColor: ProjectColors.white,
      smallBTextColor: ProjectColors.scharpelliPink,
      smallBTColor: ProjectColors.daarkcarouselPink,
      backGroundColor: ProjectColors.carouselPink);

  final CardTheme orange = const CardTheme(
      midBTColor: ProjectColors.tomato,
      midBTextColor: ProjectColors.white,
      smallBTextColor: ProjectColors.white,
      smallBTColor: ProjectColors.coral,
      backGroundColor: ProjectColors.sauvignon);

  final CardTheme blue = const CardTheme(
      midBTColor: ProjectColors.astral,
      midBTextColor: ProjectColors.white,
      smallBTextColor: ProjectColors.white,
      smallBTColor: ProjectColors.rockBlue,
      backGroundColor: ProjectColors.catskillWhite);
}
