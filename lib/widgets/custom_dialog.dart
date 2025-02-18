

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    super.key,
    this.title,
    this.description,
    this.button1,
    this.button2,
    this.descriptionTextAlign = TextAlign.justify,
    this.tap1,
    this.tap2,  this.showButton1 = true,
  });

  final String? title;
  final String? description;
  final String? button1;
  final String? button2;
  final TextAlign? descriptionTextAlign;
  final VoidCallback? tap1;
  final VoidCallback? tap2;
  final bool showButton1;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: context.lightGrey),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 15),
            Text(
              title ?? '',
              style: context.bodyLarge,
            ),
            // SizedBox(height: 30),
            if (description != null)
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  description ?? '',
                  textAlign: descriptionTextAlign,
                  style: context.bodySmall
                ),
              ),
            if (description == null) const SizedBox(height: 30),
            const Divider(height: 0),
            IntrinsicHeight(
              child: Row(
                children: [
                  if(showButton1)
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: tap1,
                            child: Center(
                              child: Container(
                                padding: const EdgeInsets.all(12),
                                child: Text(
                                  button1 ?? '',
                                  style:context.bodySmall,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const VerticalDivider(),
                      ],
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: tap2,
                      child: Center(
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            button2 ?? '',
                            style: context.bodySmall?.copyWith(color: context.primaryColor)
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
