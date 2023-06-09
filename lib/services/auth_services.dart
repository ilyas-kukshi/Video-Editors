// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:video_editors/models/reponse_model.dart';
import 'package:video_editors/models/signin/signin_model.dart';
import 'package:video_editors/shared/constants.dart';

class AuthServices {
  String url = Constants.baseUrl;

  Future<ResponseModel?> singinService(
      BuildContext context, SigninModel model) async {
    String finalUrl = "${url}signup";

    try {
      final response = await http.post(
        Uri.parse(finalUrl),
        // headers: {'Content-Type': 'application/json'},
        body: model.toJson(),
      );

      if (response.statusCode == 201) {
        return ResponseModel(response.statusCode, response.body);

        // responseData = response.body;
      } else {
        // Handle error response
        Fluttertoast.showToast(msg: jsonDecode(response.body));
        Navigator.pop(context);
        // print('POST request failed with status: ${response.statusCode}');
        // print('Response body: ${response.body}');
      }
    } catch (e) {
      // Handle any exceptions that occur during the request
      Fluttertoast.showToast(msg: e.toString());
      Navigator.pop(context);
    }
    return null;
  }

  Future<ResponseModel?> loginService(
      BuildContext context, SigninModel model) async {
    String finalUrl = "${url}login";
    try {
      final response = await http.post(
        Uri.parse(finalUrl),
        // headers: {'Content-Type': 'application/json'},
        body: model.toJson(),
      );

      if (response.statusCode == 200) {
        return ResponseModel(response.statusCode, response.body);

        // responseData = response.body;
      } else {
        // Handle error response
        // print('POST request failed with status: ${response.statusCode}');
        // print('Response body: ${response.body}');
        Fluttertoast.showToast(msg: jsonDecode(response.body));
        Navigator.pop(context);
      }
    } catch (e) {
      // Handle any exceptions that occur during the request
      // print('Error occurred during POST request: $e');
      Fluttertoast.showToast(msg: e.toString());
      Navigator.pop(context);
    }
    return null;
  }
}
