import 'package:flutter/material.dart';
import 'package:yera/src/ui/shared/custom_widgets.dart';
import 'package:yera/src/ui/shared/empty_state.dart';

class SavedView extends StatelessWidget {
  const SavedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cwAuthAppBar(
        context,
        title: 'Favorites',
        onPressed: () => Navigator.pop(context),
      ),
      body: emptyState(context, heading: 'No Favorites', emoji: '😞'),
    );
  }
}
