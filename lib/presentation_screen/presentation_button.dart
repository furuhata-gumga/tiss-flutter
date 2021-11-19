import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PresentationButton extends StatefulWidget {
  final CarouselController controller;
  final String title;
  final Color color;
  final int page;
  final VoidCallback? goToLogin;
  const PresentationButton(
    this.controller,
    this.title,
    this.color,
    this.page,
    {Key? key,
    this.goToLogin
    }) : super(key: key);

  @override
  _PresentationButtonState createState() => _PresentationButtonState();
}

class _PresentationButtonState extends State<PresentationButton> {

  void handleButtonClick() {
    if (widget.page != 1 && widget.page != 2) {
      if (widget.goToLogin != null) {
        widget.goToLogin!.call();
      }
    } else {
      widget.controller.animateToPage(widget.page);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: handleButtonClick,
        child: Text(
          widget.title,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: widget.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
