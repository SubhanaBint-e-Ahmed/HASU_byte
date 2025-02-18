
import 'package:cocoon/view/splash/splash_controller.dart';

import '../../res/constants/imports.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SplashController(),
      builder: (controller) {
        return Scaffold(
          body: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 SvgPicture.asset( Assets.icons.logo,width: context.width * 0.7)

                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
