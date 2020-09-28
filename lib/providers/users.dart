import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Users extends ChangeNotifier {
  List<dynamic> users = [];
  bool darkModeOn = false;
  getUsers() async {
    var users = await fetchUsers();
    if (users.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(users.body);
      this.users = jsonResponse["results"];
    }
    notifyListeners();
  }

  Future<http.Response> fetchUsers() {
    return http.get('https://randomuser.me/api/?results=10');
  }

  getUsersList() {
    return this.users;
  }

  getDarkMode() {
    return this.darkModeOn;
  }

  setDarkMode(dark) {
    this.darkModeOn = dark;
  }
}
