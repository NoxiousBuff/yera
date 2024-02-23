import 'package:flutter/material.dart';
import 'package:yera/src/ui/shared/custom_widgets.dart';

import 'ui_helpers.dart';

Widget emptyState(
  BuildContext context, {
  String emoji = '😅',
  String heading = 'Provide a heading here',
  String? description,
  double upperGap = 0.0,
  double lowerGap = 0.0,
  CWAuthProceedButton? proceedButton,
  Widget? secondaryButton,
  EdgeInsets? proceedButtonPadding,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(height: upperGap),
      Text(emoji, style: const TextStyle(fontSize: 80)),
      verticalSpaceRegular,
      CWEAHeading(heading,
          mainAxisAlignment: MainAxisAlignment.center,
          textAlign: TextAlign.center),
      verticalSpaceRegular,
      description != null
          ? cwEADescriptionTitle(
              context,
              description,
              textAlign: TextAlign.center,
            )
          : shrinkBox,
      verticalSpaceLarge,
      if (proceedButton != null) Padding(
        padding: proceedButtonPadding ?? const EdgeInsets.symmetric(horizontal: 20),
        child: proceedButton,
      ),
      secondaryButton ?? shrinkBox,
      SizedBox(height: lowerGap),
    ],
  );
}