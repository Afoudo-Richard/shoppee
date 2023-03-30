import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'package:shoppee/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const App());
}
