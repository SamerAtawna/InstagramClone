import 'package:flutter/material.dart';

ThemeData themeLight() {
  return ThemeData(
      colorScheme: ColorScheme(
          primary: const Color(0xff515bd4),
          primaryVariant: const Color(0xffdd2a7b),
          secondary: const Color(0xff8134af),
          secondaryVariant: const Color(0xfffeda77),
          surface: Colors.grey,
          background: Colors.brown[50],
          error: Colors.white,
          onPrimary: const Color(0xff515bd4),
          onSecondary: const Color(0xff515bd4),
          onSurface: const Color(0xff515bd4),
          onBackground: const Color(0xff515bd4),
          onError: const Color(0xff515bd4),
          brightness: Brightness.light));
}

ThemeData themeDark() {
  return ThemeData(
      colorScheme: ColorScheme(
          primary: const Color(0xff515bd4),
          primaryVariant: const Color(0xffdd2a7b),
          secondary: const Color(0xff8134af),
          secondaryVariant: const Color(0xfffeda77),
          surface: Colors.grey,
          background: Colors.grey[900],
          error: Colors.grey[800],
          onPrimary: const Color(0xff515bd4),
          onSecondary: const Color(0xff515bd4),
          onSurface: const Color(0xff515bd4),
          onBackground: const Color(0xff515bd4),
          onError: const Color(0xff515bd4),
          brightness: Brightness.dark));
}

List<String> imageData() {
  return [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
}
