import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(
            horizontal: _deviceWidth * 0.05,
            // vertical: _deviceHeight,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _pageTitle(),
              // _astroImageWidget(),
              _destinationDropdownWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      '#GoMoon',
      style: TextStyle(
        color: Colors.white,
        fontSize: 70,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _astroImageWidget() {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage("assets/images/astronot.png"),
          ),
        ),
      ),
    );
  }

  Widget _destinationDropdownWidget() {
    List<String> _items = ["arya", "ikbal"];
    return Container(
      padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
      width: _deviceWidth,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(53, 53, 53, 1.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        underline: Container(),
        value: _items.first,
        onChanged: (_) {},
        items:
            _items.map((e) {
              return DropdownMenuItem(child: Text(e), value: e);
            }).toList(),
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
