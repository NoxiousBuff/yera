import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:yera/src/extensions/custom_color_scheme.dart';
import 'package:yera/src/ui/shared/ui_helpers.dart';

class CWAuthProceedButton extends StatelessWidget {
  const CWAuthProceedButton({
    Key? key,
    required this.buttonTitle,
    required this.onTap,
    this.isActive = true,
    this.isLoading = false,
  }) : super(key: key);

  final String buttonTitle;
  final void Function()? onTap;
  final bool isLoading;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isActive
          ? isLoading
              ? null
              : onTap
          : null,
      child: Material(
        elevation: 8,
        borderRadius: BorderRadius.circular(16),
        shadowColor: isActive
            ? Theme.of(context).colorScheme.blue.withAlpha(100)
            : Colors.transparent,
        child: Container(
          height: 48,
          width: screenWidth(context),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: isActive
                  ? Theme.of(context).colorScheme.blue
                  : Theme.of(context).colorScheme.lightGrey,
              borderRadius: BorderRadius.circular(16)),
          child: isLoading
              ? SizedBox(
                  height: 17,
                  width: 17,
                  child: CircularProgressIndicator(
                    strokeWidth: 1.5,
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Theme.of(context).colorScheme.white),
                  ),
                )
              : Text(
                  buttonTitle,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: isActive
                        ? Theme.of(context).colorScheme.white
                        : Theme.of(context).colorScheme.mediumBlack,
                  ),
                ),
        ),
      ),
    );
  }
}

class CWEAHeading extends StatelessWidget {
  const CWEAHeading(this.title,
      {Key? key,
      this.mainAxisSize = MainAxisSize.max,
      this.color,
      this.textAlign = TextAlign.start,
      this.mainAxisAlignment = MainAxisAlignment.start})
      : super(key: key);

  final String title;
  final MainAxisSize mainAxisSize;
  final TextAlign textAlign;
  final Color? color;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisSize: mainAxisSize,
        mainAxisAlignment: mainAxisAlignment,
        children: [
          Flexible(
            flex: 1,
            child: Text(
              title,
              textAlign: textAlign,
              textWidthBasis: TextWidthBasis.parent,
              style: TextStyle(
                  color: color ?? Theme.of(context).colorScheme.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 32),
            ),
          ),
        ],
      ),
    );
  }
}

Widget cwEADescriptionTitle(BuildContext context, String title,
    {TextAlign textAlign = TextAlign.start}) {
  return Text(
    title,
    textAlign: textAlign,
    style: TextStyle(
      fontSize: 14,
      color: Theme.of(context).colorScheme.mediumBlack,
      fontWeight: FontWeight.w600,
    ),
  );
}

AppBar cwAuthAppBar(BuildContext context,
    {required String title,
    bool showLeadingIcon = true,
    void Function()? onPressed,
    List<Widget>? actions,
    IconData? leadingIcon}) {
  return AppBar(
    actions: actions,
    elevation: 0.0,
    title: Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        color: Theme.of(context).colorScheme.black,
        fontSize: 18,
      ),
    ),
    backgroundColor:
        MaterialStateColor.resolveWith((Set<MaterialState> states) {
      return states.contains(MaterialState.scrolledUnder)
          ? Theme.of(context).colorScheme.lightGrey
          : Theme.of(context).colorScheme.scaffoldColor;
    }),
    leadingWidth: showLeadingIcon ? 56.0 : 0.0,
    leading: showLeadingIcon
        ? IconButton(
            color: Theme.of(context).colorScheme.mediumBlack,
            icon: Icon(leadingIcon ?? FeatherIcons.arrowLeft),
            onPressed: onPressed,
          )
        : const SizedBox.shrink(),
  );
}

Widget cwEADetailsTile(
  BuildContext context,
  String title, {
  String? subtitle,
  void Function()? onTap,
  Color? titleColor,
  bool showTrailingIcon = true,
  bool isLoading = false,
  EdgeInsets? padding,
  Color? color,
  IconData icon = FeatherIcons.chevronRight,
}) {
  return InkWell(
    onTap: onTap,
    borderRadius: BorderRadius.circular(14),
    child: Padding(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 0),
      child: Container(
        color: color,
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: titleColor ?? Theme.of(context).colorScheme.black,
                        fontSize: 20),
                  ),
                  subtitle != null ? verticalSpaceTiny : shrinkBox,
                  subtitle != null
                      ? Text(
                          subtitle,
                          style:  TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).colorScheme.mediumBlack,
                          ),
                        )
                      : shrinkBox,
                ],
              ),
            ),
            horizontalDefaultMessageSpace,
            isLoading
                ?  Center(
                    child: SizedBox(
                      height: 15,
                      width: 15,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(
                          Theme.of(context).colorScheme.mediumBlack,
                        ),
                        strokeWidth: 1.5,
                      ),
                    ),
                  )
                : showTrailingIcon
                    ?  Icon(
                        icon,
                        color: Theme.of(context).colorScheme.mediumBlack,
                        size: 28,
                      )
                    : const SizedBox.shrink(),
          ],
        ),
      ),
    ),
  );
}
