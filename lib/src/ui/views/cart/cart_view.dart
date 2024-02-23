import 'package:flutter/material.dart';
import 'package:yera/src/ui/shared/custom_widgets.dart';
import 'package:yera/src/ui/shared/empty_state.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cwAuthAppBar(
        context,
        title: 'Cart',
        onPressed: () => Navigator.pop(context),
      ),
      body: emptyState(context, heading: 'Empty Cart', emoji: '🗑️'),
    );
  }
}
