import 'package:flutter/material.dart';
import 'package:yera/src/ui/shared/empty_state.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: emptyState(context,emoji: '👦', heading: 'Account View',description: 'Page that will show the users related information',),
    );
  }
}