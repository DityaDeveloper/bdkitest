import 'package:flutter/material.dart';
import 'package:get/get.dart';

final Widget containerGradient1 = Container(
  width: 280,
  height: 40,
  alignment: Alignment.center,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.yellowAccent,
  ),
  child: Container(
    width: 275,
    height: 35,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[Color(0xffFE5F5F), Color(0xffFC9842)],
      ),
    ),
    alignment: Alignment.center,
    child: const Text(
      'Continue as a Guest',
      style: TextStyle(fontSize: 24, color: Colors.white),
    ),
  ),
);

final Widget containerGradient2 = Container(
  width: 280,
  height: 40,
  alignment: Alignment.center,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[Color(0xffFE5F5F), Color(0xffFC9842)],
    ),
  ),
  child: Container(
    width: 275,
    height: 35,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Colors.white),
    alignment: Alignment.center,
    child: const Text(
      'Continue as a Guest',
      style: TextStyle(fontSize: 24, color: Colors.redAccent),
    ),
  ),
);

final Widget containerGradient3 = Container(
  width: Get.width,
  height: 250,
  alignment: Alignment.center,
  decoration: const BoxDecoration(
    borderRadius: BorderRadius.only(
      topLeft: Radius.zero,
      topRight: Radius.zero,
      bottomLeft: Radius.circular(45.0),
      bottomRight: Radius.circular(45.0),
    ),
  ),
  child: Container(
    width: Get.width,
    height: 200,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.zero,
        topRight: Radius.zero,
        bottomLeft: Radius.circular(45.0),
        bottomRight: Radius.circular(45.0),
      ),
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[Color(0xffFE5F5F),Color(0xffFE5F5F), Color(0xffFC9842)],
      ),
    ),
    alignment: Alignment.center,
  ),
);

final Widget containerGradient4 = Container(
  width: 100,
  height: 40,
  alignment: Alignment.center,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.yellowAccent,
  ),
  child: Container(
    width: 275,
    height: 35,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[Color(0xffFE5F5F), Color(0xffFC9842)],
      ),
    ),
    alignment: Alignment.center,
    child: const Text(
      'TOP UP',
      style: TextStyle(fontSize: 18, color: Colors.white),
    ),
  ),
);
