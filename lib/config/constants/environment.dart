import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {

  static String keyApi = dotenv.env["API_KEY"] ?? "no hay api";

}