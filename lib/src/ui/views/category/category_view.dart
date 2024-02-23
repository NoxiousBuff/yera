import 'package:flutter/material.dart';
import 'package:yera/src/ui/shared/empty_state.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: emptyState(context,emoji: '🙃', heading: 'Category View',description: 'Page that will show all the categories present on the marketplace.',));
  }
}