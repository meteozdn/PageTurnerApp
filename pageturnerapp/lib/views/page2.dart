import 'package:flutter/material.dart';
import 'package:uplabs1/components/project_purple_button.dart';
import 'package:uplabs1/models/book_model.dart';
import 'package:uplabs1/views/page3.dart';
import '../components/cards.dart';
import '../components/colors.dart';
import '../components/paddings.dart';
import '../images/images_paths.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final String _title = "Discover Favorite \nBook Here";
  var _selectedIndexcard = 0;
  var _selectedBookIndex = 0;
  final _pageBookController = PageController(viewportFraction: 0.39);
  final books = Books().books;
  var book = Books().books[0];

  final cards = [
    ProjectCard(
      buttonText: "Popular",
      book: Books.happyPlace,
      theme: CardThemes().pink,
    ),
    ProjectCard(
      buttonText: "New",
      book: Books.orange,
      theme: CardThemes().orange,
    ),
    ProjectCard(
      buttonText: "Hot",
      book: Books.lecume,
      theme: CardThemes().blue,
    ),
  ];
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      bottomNavigationBar: bottomNB(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: ProjectPaddings.mainPadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _title,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: ProjectColors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const ProjectCircleButton(
                    icon: Icon(Icons.search),
                  )
                ],
              ),
            ),
            banner(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  cards.length,
                  (index) => ProjectIndicator(
                      isActive: _selectedIndexcard == index ? true : false),
                ),
              ],
            ),
            const Categories(),
            booksView(),
            BooksRead(book: book)
          ],
        ),
      ),
    );
  }

  Container booksView() {
    return Container(
      height: 240,
      // width: 300,
      margin: ProjectPaddings.onlyleftItemsPadding,
      child: PageView.builder(
        padEnds: false,
        onPageChanged: (index) {
          setState(() {
            _selectedBookIndex = index;
            book = books[index];
          });
        },
        controller: _pageBookController,
        itemCount: books.length,
        itemBuilder: (context, index) {
          // var book = books[index];
          var scale = _selectedBookIndex == index ? 1.0 : 0.9;
          return TweenAnimationBuilder(
            duration: const Duration(milliseconds: 350),
            tween: Tween(begin: scale, end: scale),
            curve: Curves.ease,
            builder: (context, value, child) {
              return Transform.scale(
                scale: value,
                child: child,
              );
            },
            child: Container(
              margin: ProjectPaddings.verticalSymetric,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  books[index].image!,
                ),
                fit: BoxFit.fitHeight,
              )),
            ),
          );
        },
      ),
    );
  }

  SizedBox banner() {
    return SizedBox(
      width: 450,
      height: 220,
      child: PageView.builder(
        onPageChanged: (index) {
          setState(() {
            _selectedIndexcard = index;
          });
        },
        controller: PageController(viewportFraction: 1),
        itemCount: cards.length,
        itemBuilder: (context, index) {
          var card = cards[index];
          // var _scale = _selectedIndex == index ? 1.0 : 0.8;
          return Padding(
            padding: ProjectPaddings.onlyleftItemsPadding,
            child: card,
          );
        },
      ),
    );
  }

  BottomNavigationBar bottomNB() {
    return BottomNavigationBar(
      unselectedLabelStyle: const TextStyle(color: Colors.pink),
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      unselectedIconTheme:
          const IconThemeData(color: Colors.grey, size: 25, opacity: 1),
      selectedIconTheme: const IconThemeData(
          color: ProjectColors.scharpelliPink, size: 25, opacity: .8),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded), label: "Discovery"),
        BottomNavigationBarItem(
            icon: Icon(Icons.collections), label: "Collections"),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), label: "Profile"),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: ProjectColors.scharpelliPink,
      onTap: _onItemTapped,
    );
  }
}

class BooksRead extends StatelessWidget {
  const BooksRead({
    super.key,
    required this.book,
  });

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPaddings.horizontalMainPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                book.name!,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                book.author!,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          ProjectMidButton(
              page: Page3(
                book: book,
              ),
              text: "Read Now",
              textColor: ProjectColors.white,
              color: ProjectColors.scharpelliPink)
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: ProjectPaddings.horizontalMainPadding,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "All Genre",
                    style: TextStyle(
                        color: ProjectColors.scharpelliPink,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  )),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Romance",
                    style: TextStyle(color: ProjectColors.grey),
                  )),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Comedy",
                    style: TextStyle(color: ProjectColors.grey),
                  )),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Biography",
                    style: TextStyle(color: ProjectColors.grey),
                  )),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Fiction",
                    style: TextStyle(color: ProjectColors.grey),
                  ))
            ],
          ),
        ));
  }
}

class ProjectIndicator extends StatelessWidget {
  final bool isActive;
  const ProjectIndicator({
    super.key,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      margin: ProjectPaddings.miniPadding,
      width: isActive ? 40.0 : 10.0,
      height: 10.0,
      decoration: BoxDecoration(
          color:
              isActive ? ProjectColors.scharpelliPink : ProjectColors.whiteGrey,
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
