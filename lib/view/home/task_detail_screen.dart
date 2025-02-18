import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/home/widgets/detail_task_card.dart';
import 'package:cocoon/view/home/widgets/level_card.dart';
import 'package:cocoon/view/home/widgets/user_card.dart';

class TaskDetailScreen extends StatelessWidget {
  const TaskDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        centerTitle: false,
        title: const Text(
          "Service Request",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: AppColors.black1),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const UserCard(),
            15.h,
            DetailTaskCard(
              title: "Shoe Repair",
              description: "I will clean your house...",
              price: "\$25/hr",
              actionText: "View Service",
              imageUrl: "assets/images/shose.png",
              onTap: () {},
              bgColor: Colors.white,
            ),
            20.h,
            const LevelCard(),
          ],
        ),
      ),
    );
  }
}
