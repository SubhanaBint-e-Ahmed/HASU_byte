import '../constants/app_colors.dart'; // Added import for AppColors

const double _defaultButtonHeight = 50.0;

class AppButton extends StatelessWidget {
  final Widget _child;

  AppButton({
    super.key,
    final double? height,
    final double? width,
    final double? elevation,
    required final Widget child,
    final Color? background,
    final Color? foregroundColor,
    final VoidCallback? onPressed,
    final bool? isProcessing,
    final BoxConstraints? constraints,
    final BorderRadius? borderRadius,
  })  : _child = _ElevatedButton(
          height: height,
          width: width,
          elevation: elevation,
          background: background ?? AppColors.purple, 
          foregroundColor: AppColors.white,
          onPressed: onPressed,
          isProcessing: isProcessing ?? false,
          constraints: constraints,
          borderRadius: borderRadius,
          child: child,
        );

  AppButton.primary({
    super.key,
    final Color? textColor,
    final double? height,
    final double? width,
    final double? elevation,
    final Widget? child,
    final Color? background,
    final Color? foregroundColor,
    final Color? fore,
    final VoidCallback? onPressed,
    final bool? isProcessing,
    final BoxConstraints? constraints,
    final BorderRadius? borderRadius,
    final String? title,
  })  : _child = _PrimaryButton(
          height: height,
          width: width,
          textColor: AppColors.purple,
          elevation: elevation,
          background: background ?? AppColors.purple, // Updated to use new purple color
          foregroundColor: foregroundColor,
          onPressed: onPressed,
          isProcessing: isProcessing ?? false,
          constraints: constraints,
          borderRadius: borderRadius,
          title: title,
          child: child,
        );

  // Outline method definition
  AppButton.outline({
    super.key,
    final Color? textColor,
    final double? height,
    final double? width,
    final double? elevation,
    final Widget? child,
    final Color? background,
    final Color? borderColor,
    final VoidCallback? onPressed,
    final bool? isProcessing,
    final EdgeInsets? padding,
    final BoxConstraints? constraints,
    final String? title,
  })  : _child = _OutlineButton(
          height: height,
          width: width,
          textColor: AppColors.purple,
          padding: padding,
          elevation: elevation,
          background: background ?? AppColors.lightGray, // Updated to use new purple color
          borderColor: borderColor,
          onPressed: onPressed,
          isProcessing: isProcessing ?? false,
          constraints: constraints,
          title: title,
          child: child,
        );

  @override
  Widget build(BuildContext context) {
    return _child;
  }
}

class _ElevatedButton extends StatelessWidget {
  final double height, width;
  final double? elevation;
  final VoidCallback? onPressed;
  final bool isProcessing;
  final Color? background;
  final Color? foregroundColor;
  final Widget child;
  final BoxConstraints? constraints;
  final BorderRadius? borderRadius;

  const _ElevatedButton({
    final double? height,
    final double? width,
    this.elevation,
    this.onPressed,
    this.background,
    this.foregroundColor,
    this.constraints,
    this.borderRadius,
    this.isProcessing = false,
    required this.child,
  })  : width = width ?? double.infinity,
        height = height ?? _defaultButtonHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      constraints: constraints,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(elevation),
          backgroundColor: background == null
              ? null
              : MaterialStateProperty.all<Color>(background!),
          foregroundColor: foregroundColor == null
              ? null
              : MaterialStateProperty.all<Color>(foregroundColor!),
          minimumSize: MaterialStateProperty.all<Size>(
              Size(width, _defaultButtonHeight)),
          shape: borderRadius == null
              ? null
              : MaterialStateProperty.all(
                  RoundedRectangleBorder(borderRadius: borderRadius!),
                ),
        ),
        onPressed: () {
          if (isProcessing) return;
          if (onPressed != null) onPressed!();
        },
        child: isProcessing
            ? const CircularProgressIndicator()
            : child,
      ),
    );
  }
}

class _PrimaryButton extends StatelessWidget {
  final double height, width;
  final double? elevation;
  final VoidCallback? onPressed;
  final bool isProcessing;
  final Color? background;
  final Color? foregroundColor;
  final Widget? child;
  final BoxConstraints? constraints;
  final BorderRadius? borderRadius;
  final String? title;
  final Color? textColor;

  const _PrimaryButton({
    this.textColor,
    final double? height,
    final double? width,
    this.elevation,
    this.onPressed,
    this.background,
    this.constraints,
    this.isProcessing = false,
    this.borderRadius,
    this.foregroundColor,
    this.child,
    this.title,
  })  : height = height ?? _defaultButtonHeight,
        width = width ?? 300;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      constraints: constraints,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(25)),
          ),
          elevation: MaterialStateProperty.all(elevation),
          minimumSize: MaterialStateProperty.all<Size>(
              Size(width, _defaultButtonHeight)),
          backgroundColor: background == null
              ? MaterialStateProperty.all<Color>(context.primary)
              : MaterialStateProperty.all<Color>(background!),
          foregroundColor: foregroundColor == null
              ? MaterialStateProperty.all<Color>(context.onPrimary)
              : MaterialStateProperty.all<Color>(foregroundColor!),
        ),
        onPressed: () {
          if (isProcessing) return;
          if (onPressed != null) onPressed!();
        },
        child: isProcessing
            ? const CircularProgressIndicator()
            : child ?? Text(title ?? ''),
      ),
    );
  }
}

class _OutlineButton extends StatelessWidget {
  final double height, width;
  final double? elevation;
  final VoidCallback? onPressed;
  final bool isProcessing;
  final Color? background;
  final Color? borderColor;
  final Widget? child;
  final BoxConstraints? constraints;
  final EdgeInsets? padding;
  final String? title;
  final Color? textColor;

  const _OutlineButton({
    final double? height,
    final double? width,
    this.textColor,
    this.elevation,
    this.onPressed,
    this.background,
    this.borderColor,
    this.constraints,
    this.isProcessing = false,
    this.padding,
    this.child,
    this.title,
  })  : height = height ?? _defaultButtonHeight,
        width = width ?? double.infinity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      constraints: constraints,
      child: OutlinedButton(
        style: ButtonStyle(
          side: borderColor == null
              ? MaterialStateProperty.all(
                  BorderSide(color: context.lightGrey.withOpacity(0.2), width: 1))
              : MaterialStateProperty.all(
                  BorderSide(color: borderColor!, width: 1.5)),
          padding: padding == null ? null : MaterialStateProperty.all(padding),
          elevation: MaterialStateProperty.all(elevation),
          backgroundColor: background == null
              ? null
              : MaterialStateProperty.all<Color>(background!),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        onPressed: onPressed,
        child: isProcessing
            ? const CircularProgressIndicator()
            : child ?? Text(title ?? ''),
      ),
    );
  }}