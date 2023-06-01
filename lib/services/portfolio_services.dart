import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:video_editors/models/work_model/work_model.dart';
import 'package:video_editors/shared/constants.dart';

class PortfolioServices {
  Future<void> createWork(WorkModel model) async {
    final url = Uri.parse('${Constants.baseUrl}addwork');

    // Create a JSON payload

    // Encode the payload as JSON
    final jsonPayload = jsonEncode(model.toJson());

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonPayload,
      );

      if (response.statusCode == 201) {
        print('Work created successfully');
        print(response.body);
      } else {
        print('Failed to create work. Status code: ${response.statusCode}');
      }
    } catch (error) {
      print('Exception occurred: $error');
    }
  }

  Future<List<WorkModel>> getWorkByCategory(String id, String category) async {
    final url = Uri.parse(
        '${Constants.baseUrl}getworks/category?userId=$id&category=$category');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        // Parse the JSON response
        final List<dynamic> jsonData = jsonDecode(response.body);
        print(jsonData);
        // Convert JSON data to WorkModel objects
        final List<WorkModel> works = jsonData.map((data) {
          return WorkModel.fromJson(data);
        }).toList();

        return works;
      } else {
        // Handle error response
        print('Error: ${response.statusCode}');
        return [];
      }
    } catch (error) {
      // Handle request error
      print('Exception occurred: $error');
      return [];
    }
  }

  Future<List<WorkModel>> getWorkById(String id) async {
    final url = Uri.parse('${Constants.baseUrl}getworks?userId=$id');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        // Parse the JSON response
        final List<dynamic> jsonData = jsonDecode(response.body);
        print(jsonData);
        // Convert JSON data to WorkModel objects
        final List<WorkModel> works = jsonData.map((data) {
          return WorkModel.fromJson(data);
        }).toList();

        return works;
      } else {
        // Handle error response
        print('Error: ${response.statusCode}');
        return [];
      }
    } catch (error) {
      // Handle request error
      print('Exception occurred: $error');
      return [];
    }
  }
}
