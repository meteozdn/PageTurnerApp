import 'package:flutter/material.dart';
import 'package:uplabs1/views/page2.dart';
import 'package:uplabs1/views/page3.dart';
import 'colors.dart';

class ProjectBigButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final page;

  const ProjectBigButton(
      {super.key,
      required this.text,
      required this.textColor,
      required this.color,
      required this.page});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(90)))),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20, bottom: 20, right: 90, left: 90),
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: textColor),
          ),
        ));
  }
}

class ProjectSmallButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color color;

  const ProjectSmallButton(
      {super.key,
      required this.text,
      required this.textColor,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90),
          color: color,
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(color: textColor, fontWeight: FontWeight.bold),
          ),
        ));
  }
}

class ProjectMidButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final page;

  const ProjectMidButton(
      {super.key,
      required this.text,
      required this.textColor,
      required this.color,
      required this.page});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(90)))),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        child: Padding(
          padding:
              const EdgeInsets.only(top: 15, bottom: 15, right: 20, left: 20),
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: textColor),
          ),
        ));
  }
}

class ProjectCircleButton extends StatelessWidget {
  final Icon icon;
  const ProjectCircleButton({
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ProjectColors.white,
        shape: BoxShape.circle,
        border: Border.all(width: 2.0, color: Colors.grey.shade400),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: IconButton(
          icon: icon,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

class ProjectSmallCircleButton extends StatelessWidget {
  final Icon icon;
  const ProjectSmallCircleButton({
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ProjectColors.white,
        shape: BoxShape.circle,
        border: Border.all(width: 2.0, color: Colors.grey.shade400),
      ),
      child: IconButton(
        icon: icon,
        color: ProjectColors.grey,
        onPressed: () {},
      ),
    );
  }
}
