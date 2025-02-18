import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/home/task_detail_screen.dart';
import 'package:cocoon/view/home/widgets/task_card.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({super.key});

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  bool isShow = false;
  @override
  void initState() {
    show();
    super.initState();
  }

  show() async {
    await Future.delayed(const Duration(seconds: 1));
    isShow = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/refreash.svg"),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/more.svg"),
          )
        ],
        title: const Text(
          "Requests",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: AppColors.black1),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: isShow
            ? Column(
                children: [
                  TaskCard(
                    title: "Shoe Repair",
                    dateTime: "12/19/2023 03:32 PM",
                    status: "Requested",
                    actionText: "See more",
                    statusColor: AppColors.yellow,
                    imageUrl: "assets/images/shose.png",
                    onTap: () {
                      Get.to(() => const TaskDetailScreen());
                    },
                    bgColor: Colors.white,
                  ),
                  10.h,
                  TaskCard(
                    title: "Shoe Repair",
                    dateTime: "12/19/2023 03:32 PM",
                    status: "Requested",
                    actionText: "See more",
                    imageUrl: "assets/images/shose.png",
                    onTap: () {
                      Get.to(() => const TaskDetailScreen());
                    },
                    statusColor: AppColors.yellow,
                    bgColor: Colors.white,
                  ),
                ],
              )
            : SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/icons/empty.svg"),
                    const Text(
                      "Empty List",
                      style: TextStyle(
                        color: AppColors.black1,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    10.h,
                    const Text(
                      "No new requests",
                      style: TextStyle(
                        color: AppColors.black1,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
