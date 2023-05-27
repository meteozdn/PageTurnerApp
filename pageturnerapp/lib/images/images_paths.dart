import 'package:flutter/cupertino.dart';

class ImagesPath {
  final String borisVian = "lib/images/borisVian.jpg";
  final String greatGatsby = "lib/images/greatGatsby.jpg";
  final String happyPlace = "lib/images/happyPlace.jpg";
  final String orange = "lib/images/orange.jpg";
  final String throneWinter = "lib/images/throneWinter.jpg";
  final String throneGlass = "lib/images/throneGlass.webp";
}

class PngImages extends StatelessWidget {
  final String path;
  const PngImages({
    required this.path,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        width: 200,
        child: Image(
          image: AssetImage(
            path,
          ),
          fit: BoxFit.fill,
        ));
  }
}

class SmallPngImages extends StatelessWidget {
  final String path;
  const SmallPngImages({
    required this.path,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150,
        width: 100,
        child: Image(
          image: AssetImage(
            path,
          ),
          fit: BoxFit.fill,
        ));
  }
}

class MidPngImages extends StatelessWidget {
  final String path;
  const MidPngImages({
    required this.path,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 280,
        width: 180,
        child: Image(
          image: AssetImage(
            path,
          ),
          fit: BoxFit.fill,
        ));
  }
}
