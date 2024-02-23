import 'package:flutter/material.dart';
import 'package:yera/src/ui/shared/empty_state.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: emptyState(context,emoji: '👺', heading: 'Explore View',description: 'Page in which user can explore the app.',));
  }
}