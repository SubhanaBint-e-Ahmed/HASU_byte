import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/res/theme/theme_light.dart';
import 'package:cocoon/view/splash/splash.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeLight().theme,


      home: const SplashPage(),


    );
  }
}
