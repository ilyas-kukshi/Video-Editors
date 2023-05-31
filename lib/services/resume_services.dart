import 'dart:convert';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:video_editors/models/reponse_model.dart';
import 'package:video_editors/models/resume_model/resume_model.dart';
import 'package:video_editors/shared/constants.dart';

class ResumeServices {
  Future<ResponseModel?> createResume(ResumeModel resume) async {
    final url = Uri.parse(
        '${Constants.baseUrl}resumes'); // Replace with your API endpoint

    try {
      final requestBody = {
        'userId': resume.userId,
        'personalInfo': resume.personalInfo?.toJson(),
        'education': resume.education?.map((e) => e.toJson()).toList(),
        'skills': resume.skills?.map((s) => s.toJson()).toList(),
      };
      print(jsonEncode(requestBody));
      final response = await http.post(url,
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode(requestBody));

      if (response.statusCode == 201) {
        print(response.body);
        return ResponseModel(response.statusCode, response.body);
      } else {
        print(jsonDecode(response.body));
        Fluttertoast.showToast(
            msg: 'Error creating resume: ${response.statusCode}');
      }
    } catch (error) {
      print(error);
      Fluttertoast.showToast(
          msg: 'Exception occurred while creating resume: $error');
    }
    return null;
  }


  Future<void> fetchResume(String userId) async {
    final url = Uri.parse('${Constants.baseUrl}resumes?userId=$userId'); 
    try {
      final response = await http.get(url,
      
      
      );

      if (response.statusCode == 200) {
        // Successful response
        final responseData = jsonDecode(response.body);
        // Handle the response data
      } else {
        // Error response
        print('Error: ${response.statusCode}');
      }
    } catch (error) {
      // Exception occurred
      print('Exception: $error');
    }
  }
}
