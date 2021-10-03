import 'package:clima_app/libraries/location.dart';
import 'package:clima_app/libraries/network.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double iconSize = 80;
const int cloudColor = 0xFFA7A0D3;
const int sunColor = 0xFFFFC17B;

class WeatherModel {

  Icon getWeatherIcon(int condition) {
    if (condition < 300) {
      return Icon(
        FontAwesomeIcons.pooStorm,
        color: Color(sunColor),
        size: iconSize,
      );
    } else if (condition < 400) {
      return Icon(
        FontAwesomeIcons.cloudRain,
        color: Color(sunColor),
        size: iconSize,
      );
    } else if (condition < 600) {
      return Icon(
        FontAwesomeIcons.cloudShowersHeavy,
        color: Color(sunColor),
        size: iconSize,
      );
    } else if (condition < 700) {
      return Icon(
        FontAwesomeIcons.snowman,
        color: Color(sunColor),
        size: iconSize,
      );
    } else if (condition < 800) {
      return Icon(
        FontAwesomeIcons.smog,
        color: Color(sunColor),
        size: iconSize,
      );
    } else if (condition == 800) {
      return Icon(
        FontAwesomeIcons.solidSun,
        color: Color(sunColor),
        size: iconSize,
      );
    } else if (condition <= 804) {
      return Icon(
        FontAwesomeIcons.cloud,
        color: Color(sunColor),
        size: iconSize,
      );
    } else {
      return Icon(
        FontAwesomeIcons.exclamationTriangle,
        color: Colors.yellow,
        size: iconSize,
      );
    }
  }

  String getConditionString(String condition) {
    if (condition == 'Clouds') {
      return 'Cloudy';
    } else if (condition == 'Rain') {
      return 'Rainy';
    } else {
      return condition;
    }
  }
}
