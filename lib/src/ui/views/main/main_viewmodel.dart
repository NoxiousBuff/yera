// import 'package:feather_icons/feather_icons.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:yera/src/extensions/custom_color_scheme.dart';
// import 'package:yera/src/ui/shared/ui_helpers.dart';
// import 'package:yera/src/ui/views/cart/cart_view.dart';
// import 'package:yera/src/ui/views/notifications/notification_view.dart';
// import 'package:yera/src/ui/views/saved/saved_view.dart';

// String fashionURL =
//     'https://images.unsplash.com/photo-1537832816519-689ad163238b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=859&q=80';

// String booksURL =
//     'https://images.unsplash.com/photo-1513001900722-370f803f498d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80';

// String furnishingURL =
//     'https://images.unsplash.com/photo-1575277340599-43db25b63b6f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80';

// String jeweleryURL =
//     'https://images.unsplash.com/photo-1600003014608-c2ccc1570a65?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=380&q=80';

// class MainView extends StatelessWidget {
//   const MainView({super.key});

//   AppBar _buildAppBar(BuildContext context) {
//     return AppBar(
//       actions: [
//         IconButton(
//           icon: const Icon(FeatherIcons.search),
//           onPressed: () {},
//           color: Theme.of(context).colorScheme.black,
//         ),
//         IconButton(
//           icon: const Icon(FeatherIcons.bell),
//           onPressed: () => Navigator.push(
//               context,
//               MaterialPageRoute(
//                   builder: ((context) => const NotificationView()))),
//           color: Theme.of(context).colorScheme.black,
//         ),
//         IconButton(
//           icon: const Icon(FeatherIcons.heart),
//           onPressed: () => Navigator.push(context,
//               MaterialPageRoute(builder: ((context) => const SavedView()))),
//           color: Theme.of(context).colorScheme.black,
//         ),
//         IconButton(
//           icon: const Icon(FeatherIcons.shoppingBag),
//           onPressed: () => Navigator.push(context,
//               MaterialPageRoute(builder: ((context) => const CartView()))),
//           color: Theme.of(context).colorScheme.black,
//         ),
//       ],
//       elevation: 0.0,
//       toolbarHeight: 60,
//       title: SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: Row(
//           children: [
//             Text(
//               'nearX',
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//               style: TextStyle(
//                 fontSize: 28,
//                 color: Theme.of(context).colorScheme.black,
//                 fontWeight: FontWeight.w700,
//               ),
//             ),
//           ],
//         ),
//       ),
//       backgroundColor:
//           MaterialStateColor.resolveWith((Set<MaterialState> states) {
//         return states.contains(MaterialState.scrolledUnder)
//             ? Theme.of(context).colorScheme.scaffoldColor //change color
//             : Theme.of(context).colorScheme.scaffoldColor;
//       }),
//       leadingWidth: 56.0,
//       leading: IconButton(
//         color: Theme.of(context).colorScheme.black,
//         icon: const Icon(FeatherIcons.menu),
//         onPressed: () {},
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: _buildAppBar(context),
//       body: CustomScrollView(
//         scrollBehavior: const CupertinoScrollBehavior(),
//         slivers: [
//           SliverPadding(
//             padding: const EdgeInsets.symmetric(horizontal: 15),
//             sliver: SliverGrid(
//               delegate: SliverChildListDelegate(
//                 [
//                   _buildCategoryCard('Fashion', fashionURL),
//                   _buildCategoryCard('Books', booksURL),
//                   _buildCategoryCard('Furnishings', furnishingURL),
//                   _buildCategoryCard('Jewelry', jeweleryURL),
//                 ],
//               ),
//               gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//                 maxCrossAxisExtent:
//                     screenWidthPercentage(context, percentage: 0.5),
//                 mainAxisSpacing: 10.0,
//                 crossAxisSpacing: 10.0,
//                 childAspectRatio: 1.0,
//               ),
//             ),
//           ),
//           sliverVerticalSpaceRegular,      
//         ],
//       ),
//     );
//   }

//   Material _buildCategoryCard(String categoryName, String categoryURL) {
//     return Material(
//       elevation: 00,
//       borderRadius: BorderRadius.circular(32),
//       child: InkWell(
//         onTap: () {},
//         borderRadius: BorderRadius.circular(32),
//         child: Stack(
//           alignment: Alignment.center,
//           children: [
//             Container(
//               alignment: Alignment.bottomCenter,
//               decoration: BoxDecoration(
//                 // image: DecorationImage(
//                 //   image: NetworkImage(categoryURL),
//                 //   fit: BoxFit.cover,
//                 // ),
//                 borderRadius: BorderRadius.circular(32),
//               ),
//             ),
//             Container(
//               alignment: Alignment.center,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(32),
//                 color: Colors.black38,
//               ),
//               child: Text(
//                 categoryName,
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(
//                   fontSize: 20,
//                   color: Colors.white,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class MainViewModel {
  
}