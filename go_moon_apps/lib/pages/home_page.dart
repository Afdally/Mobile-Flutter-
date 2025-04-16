import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custom_dropdown_buttom.dart';

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
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _pageTitle(),
                  // _astroImageWidget(),
                  _bookRideWidget(),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: _astroImageWidget(),
              ),
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
    return Container(
      height: _deviceHeight * 0.50,
      width: _deviceWidth * 0.70,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/astronot.png"),
        ),
      ),
    );
  }

  Widget _bookRideWidget() {
    return Container(
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropdownWidget(),
          _travelsInformationWidget(),
          _rideButton(),
        ],
      ),
    );
  }

  Widget _destinationDropdownWidget() {
    return CustomDropdownButtomClass(
      values: const ["arya", "ikbal"],
      width: _deviceWidth,
    );
  }

  Widget _travelsInformationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropdownButtomClass(
          values: const ["1", "2", "3", "4"],
          width: _deviceWidth * 0.40,
        ),
        CustomDropdownButtomClass(
          values: const ["Economy", "Buissnes", "VIP"],
          width: _deviceWidth * 0.40,
        ),
      ],
    );
  }

  Widget _rideButton() {
    return Container(
      padding: EdgeInsets.only(bottom: _deviceHeight * 0.01),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      width: _deviceWidth,
      child: MaterialButton(
        onPressed: () {},
        child: const Text("Book Ride!", style: TextStyle(color: Colors.black)),
      ),
    );
  }
}
