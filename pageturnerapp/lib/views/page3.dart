import 'package:flutter/material.dart';
import 'package:uplabs1/components/project_purple_button.dart';
import 'package:uplabs1/models/book_model.dart';

import '../components/colors.dart';
import '../components/paddings.dart';
import '../images/images_paths.dart';

class Page3 extends StatefulWidget {
  final Book book;
  const Page3({super.key, required this.book});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  final String _title = "Detail Books";
  final String _read = "Read";
  final String _saved = "Saved";
  final String _parts = "Parts";
  final String _synopsis = "Synopsis";
  final String _detailbooks = "Detail Books";
  final String _review = "Reviews ";

  get icon => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      bottomNavigationBar: const ProjectNB(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: ProjectPaddings.mainPadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const ProjectCircleButton(
                      icon: Icon(Icons.arrow_back_ios_new),
                    ),
                    Text(
                      _title,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                              color: ProjectColors.black,
                              fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              MidPngImages(
                path: widget.book.image!,
              ),
              Padding(
                padding: ProjectPaddings.smalltopItemsPadding,
                child: Text(
                  widget.book.name!,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                widget.book.author!,
                style: Theme.of(context).textTheme.titleMedium!,
              ),
              Column(),
              Padding(
                padding: ProjectPaddings.smalltopItemsPadding +
                    ProjectPaddings.horizontalMainPadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BookStats(
                        icon: const Icon(Icons.remove_red_eye),
                        statName: _read,
                        statScore: widget.book.saved!),
                    BookStats(
                        icon: const Icon(Icons.bookmark),
                        statName: _saved,
                        statScore: widget.book.saved!),
                    BookStats(
                        icon: const Icon(Icons.list),
                        statName: _parts,
                        statScore: widget.book.part.toString()),
                  ],
                ),
              ),
              Padding(
                padding: ProjectPaddings.mainPadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProjectTextButton(
                      buttonText: _synopsis,
                      color: ProjectColors.scharpelliPink,
                    ),
                    ProjectTextButton(
                      buttonText: _detailbooks,
                      color: ProjectColors.grey,
                    ),
                    ProjectTextButton(
                      buttonText: _review,
                      color: ProjectColors.grey,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: ProjectPaddings.horizontalMainPadding,
                child: Text(
                  widget.book.synopsis!,
                  //Books.happyPlace.synopsis!,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectTextButton extends StatelessWidget {
  final String buttonText;
  final Color color;
  const ProjectTextButton({
    super.key,
    required this.buttonText,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(buttonText,
          style: Theme.of(context)
              .textTheme
              .labelLarge!
              .copyWith(color: color, fontWeight: FontWeight.bold),
          textAlign: TextAlign.start),
    );
  }
}

class BookStats extends StatelessWidget {
  final Icon icon;
  final String statName;
  final String statScore;
  const BookStats({
    super.key,
    required this.icon,
    required this.statName,
    required this.statScore,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            icon,
            Text(
              statName,
              style: Theme.of(context).textTheme.titleMedium!,
            ),
          ],
        ),
        Text(
          statScore,
          style: Theme.of(context).textTheme.titleLarge!,
        )
      ],
    );
  }
}

class ProjectNB extends StatelessWidget {
  const ProjectNB({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      //  width: double.infinity,
      color: ProjectColors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ProjectSmallCircleButton(icon: Icon(Icons.bookmark)),
          ProjectSmallCircleButton(icon: Icon(Icons.share)),
          ProjectMidButton(
              page: Page3(book: Books.happyPlace),
              text: "Start Reading",
              textColor: ProjectColors.white,
              color: ProjectColors.scharpelliPink)
        ],
      ),
    );
  }
}
