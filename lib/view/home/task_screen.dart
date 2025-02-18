import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/home/request_screen.dart';
import 'package:cocoon/view/home/widgets/home_card_horizontal.dart';
import 'package:cocoon/view/home/widgets/task_card.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        centerTitle: false,
        title: const Text(
          "Tasks",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: AppColors.black1),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                AppButton.primary(
                  onPressed: () {},
                  width: 60,
                  title: "All",
                  elevation: 0,
                  textColor: Colors.white,
                  height: 32,
                  background: AppColors.p1,
                ),
                10.w,
                AppButton.outline(
                  onPressed: () {},
                  width: 100,
                  title: "Only Active",
                  elevation: 0,
                  borderColor: AppColors.p1,
                  height: 32,
                  background: Colors.white,
                ),
                10.w,
                AppButton.outline(
                  onPressed: () {},
                  width: 100,
                  title: "Completed",
                  elevation: 0,
                  borderColor: AppColors.p1,
                  height: 32,
                  background: Colors.white,
                ),
              ],
            ),
            20.h,
            HomeCardHorizontal(
                color: Colors.white,
                t1: "New Requests",
                t2: "0",
                t1Color: AppColors.p1,
                t2Color: AppColors.p1,
                onTap: () {
                  Get.to(() => const RequestScreen());
                }),
            20.h,
            const Text(
              "Active Tasks",
              style: TextStyle(
                fontSize: 16,
                color: AppColors.black1,
                fontWeight: FontWeight.w600,
              ),
            ),
            20.h,
            TaskCard(
              title: "Shoe Repair",
              dateTime: "12/19/2023 03:32 PM",
              status: "Accepted",
              actionText: "Action Required",
              imageUrl: "assets/images/shose.png",
              onTap: () {},
              bgColor: Colors.white,
            ),
            20.h,
            const Text(
              "Completed",
              style: TextStyle(
                fontSize: 16,
                color: AppColors.black1,
                fontWeight: FontWeight.w600,
              ),
            ),
            20.h,
            TaskCard(
              title: "Shoe Repair",
              dateTime: "12/19/2023 03:32 PM",
              status: "Completed",
              actionText: "See more",
              imageUrl: "assets/images/shose.png",
              onTap: () {},
              statusColor: Colors.green,
              bgColor: Colors.white,
            ),
            20.h,
            TaskCard(
              title: "Shoe Repair",
              dateTime: "12/19/2023 03:32 PM",
              status: "Completed",
              actionText: "See more",
              imageUrl: "assets/images/shose.png",
              onTap: () {},
              statusColor: Colors.green,
              bgColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
