import 'package:flutter/material.dart';

class CarouselCardUi extends StatefulWidget {
  @override
  _CarouselCardUiState createState() => _CarouselCardUiState();
}

class _CarouselCardUiState extends State<CarouselCardUi> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        height: size.height * 0.40,
        width: double.infinity,
        child: PageView.builder(
          itemCount: 3,
          controller: PageController(viewportFraction: 0.95),
          onPageChanged: (int index) => setState(
            () => _index = index,
          ),
          itemBuilder: (_, i) {
            return Transform.scale(
              scale: i == _index ? 1 : 1.5,
              child: Center(
                child: Image.asset(
                  "assets/banner.png",
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
