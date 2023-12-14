import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveInfos(data) async {
  try {
    String token = data['tkn'];

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("token", token);
  } catch (e) {
    throw Exception("Failed to save token: $e");
  }
}
