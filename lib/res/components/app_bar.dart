


import '../constants/imports.dart';



class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SimpleAppBar({
    this.showBackButton,
    super.key,
    this.title,
    this.backgroundColor,
  });

   final bool? showBackButton;
  final String? title;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: FittedBox(
        fit: BoxFit.scaleDown,
          child: InkWell(
            onTap: ()=>Get.back(),
            child: SizedBox(
              height: 30,
                width: 30,
                child: SvgPicture.asset(Assets.icons.arrowLeft)),
          )),
      backgroundColor: backgroundColor??context.scaffoldBackgroundColor,
      elevation: 0,
      title: title != null
          ? Text(
              title!,
              style: context.titleMedium!.copyWith(fontWeight: FontWeight.bold,fontSize: 20),
            )
          : null,
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppBar({
    super.key,
    this.title,
    this.backgroundColor,
    this.role,
  });

  final String? title, role;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: context.width,
          height: Get.statusBarHeight,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF798EF4),
                Color(0xFF3E5BF3),
              ],
            ),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                bottom: 20,
                left: 16,
                child: Text(
                  "Hi, ${userData.firstName} ${userData.lastName}",
                  style: context.titleLarge?.copyWith(
                    color: context.onPrimary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
             ]
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          decoration: const BoxDecoration(
            color: Color(0xFF3E5BF3),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15),
            ),
          ),
          child: Text(
            userData.userRole.name,
            style: context.titleMedium?.copyWith(color: context.onPrimary),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>  Size.fromHeight(Get.statusBarHeight);
}
