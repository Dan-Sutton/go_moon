import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          child: _destinationDropDownWidget(),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      "#GOMOON",
      style: TextStyle(
          color: Colors.white, fontSize: 60, fontWeight: FontWeight.w800),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage("assets/images/astro_moon.png"))),
    );
  }

  Widget _destinationDropDownWidget() {
    List<DropdownMenuItem<String>> _items =
        ["Test Test", "AnotherOne", "A third!"].map((e) {
      return DropdownMenuItem(
        child: Text(e),
        value: e,
      );
    }).toList();
    return Container(
      child: DropdownButton(
        onChanged: (_) {},
        items: _items,
      ),
    );
  }
}
