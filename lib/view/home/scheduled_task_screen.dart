import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/home/widgets/schedule_card.dart';
import 'package:cocoon/view/home/widgets/task_card.dart';

class ScheduledTaskScreen extends StatelessWidget {
  const ScheduledTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        centerTitle: false,
        title: const Text(
          "Scheduled Tasks",
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: ScheduleCard(
                        title: "Today", date: "Dec 16", isSelected: true)),
                Expanded(
                    child: ScheduleCard(title: "Tomorrow", date: "Dec 17")),
                Expanded(child: ScheduleCard(title: "Mon", date: "Dec 18")),
              ],
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
            10.h,
            TaskCard(
              title: "Shoe Repair",
              dateTime: "12/19/2023 03:32 PM",
              status: "Accepted",
              actionText: "Action Required",
              imageUrl: "assets/images/shose.png",
              onTap: () {},
              bgColor: Colors.white,
            ),
            10.h,
            TaskCard(
              bgColor: Colors.white,
              title: "Shoe Repair",
              dateTime: "12/19/2023 03:32 PM",
              status: "Accepted",
              actionText: "Action Required",
              imageUrl: "assets/images/shose.png",
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
