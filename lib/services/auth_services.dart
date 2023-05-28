import 'package:http/http.dart' as http;
import 'package:video_editors/models/signin/signin_model.dart';
import 'package:video_editors/shared/constants.dart';

class AuthServices {
  String url = Constants.baseUrl;

  singinService(SigninModel model) async {
    String finalUrl = "${url}signup";
    print(finalUrl);
    try {
      final response = await http.post(
        Uri.parse(finalUrl),
        // headers: {'Content-Type': 'application/json'},
        body: model.toJson(),
      );

      if (response.statusCode == 200) {
        print('response.body');

        // responseData = response.body;
      } else {
        // Handle error response
        print('POST request failed with status: ${response.statusCode}');
        print('Response body: ${response.body}');
      }
    } catch (e) {
      // Handle any exceptions that occur during the request
      print('Error occurred during POST request: $e');
    }
  }

  loginService(SigninModel model) async {
    String finalUrl = "${url}login";
    try {
      final response = await http.post(
        Uri.parse(finalUrl),
        // headers: {'Content-Type': 'application/json'},
        body: model.toJson(),
      );

      if (response.statusCode == 200) {
        print(response.body);

        // responseData = response.body;
      } else {
        // Handle error response
        print('POST request failed with status: ${response.statusCode}');
        print('Response body: ${response.body}');
      }
    } catch (e) {
      // Handle any exceptions that occur during the request
      print('Error occurred during POST request: $e');
    }
  }
}
