// ignore_for_file: must_be_immutable

import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yera/src/extensions/custom_color_scheme.dart';
import 'package:yera/src/helpers/list_strings.dart';
import 'package:yera/src/models/product.dart';
import 'package:yera/src/ui/shared/custom_widgets.dart';
import 'package:yera/src/ui/shared/ui_helpers.dart';
import 'package:http/http.dart' as http;

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.scaffoldColor,
        elevation: 0,
        title: Row(
          children: [
            Expanded(
              child: Text(
                'Room 209, 138th floor,Burj Khalifa, Dubai ',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            horizontalSpaceTiny,
            Icon(
              FeatherIcons.chevronDown,
              color: Theme.of(context).colorScheme.black,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FeatherIcons.search),
            color: Theme.of(context).colorScheme.black,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(FeatherIcons.shoppingCart),
            color: Theme.of(context).colorScheme.black,
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.blueAccent,
                image: DecorationImage(
                    image: NetworkImage(
                      'https://img.freepik.com/premium-photo/yellow-texture-circular-pattern-background_281691-1084.jpg?w=740',
                    ),
                    fit: BoxFit.cover),
              ),
              padding: const EdgeInsets.only(
                  right: 15, left: 15, bottom: 15, top: 15),
              child: Column(
                children: [
                  Text(
                    'Delivering To You',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 22),
                  ),
                  verticalSpaceTiny,
                  Text(
                    '16 min',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 32),
                  )
                ],
              ),
            ),
          ),
          sliverVerticalSpaceRegular,
          SliverToBoxAdapter(
            child: CarouselSlider(
              options: CarouselOptions(height: 180.0),
              items: [1, 2, 3, 4, 0].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.lightGrey,
                        borderRadius: BorderRadius.circular(40),
                        image: DecorationImage(
                            image: NetworkImage(offerImages[i]),
                            fit: BoxFit.cover),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          sliverVerticalSpaceRegular,
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            sliver: SliverToBoxAdapter(
              child: cwEADetailsTile(context, 'Explore By Categories'),
            ),
          ),
          sliverVerticalSpaceSmall,
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, i) => Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color:
                        Theme.of(context).colorScheme.blueAccent.withAlpha(0),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Theme.of(context)
                                .colorScheme
                                .blueAccent
                                .withAlpha(50),
                            borderRadius: BorderRadius.circular(40),
                            image: DecorationImage(
                                image: NetworkImage(productCategoryImages[i]),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      verticalSpaceTiny,
                      Text(productCategoryNames[i]),
                    ],
                  ),
                ),
                childCount: 9,
              ),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent:
                    screenWidthPercentage(context, percentage: 0.41),
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 0.85,
              ),
            ),
          ),
          sliverVerticalSpaceRegular,
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            sliver: SliverToBoxAdapter(
              child: cwEADetailsTile(context, 'Products Available'),
            ),
          ),
          sliverVerticalSpaceSmall,
          SliverGrid.extent(
            maxCrossAxisExtent: screenWidthPercentage(context, percentage: 0.5),
            childAspectRatio: 0.6,
            children: [
              productUi('https://fakestoreapi.com/products/1'),
              productUi('https://fakestoreapi.com/products/2'),
              productUi('https://fakestoreapi.com/products/16'),
              productUi('https://fakestoreapi.com/products/19'),
              productUi('https://fakestoreapi.com/products/3'),
              productUi('https://fakestoreapi.com/products/8'),
              productUi('https://fakestoreapi.com/products/14'),
              productUi('https://fakestoreapi.com/products/4'),
              productUi('https://fakestoreapi.com/products/15'),
              productUi('https://fakestoreapi.com/products/17'),
              productUi('https://fakestoreapi.com/products/7'),
              productUi('https://fakestoreapi.com/products/18'),
            ],
          )
        ],
      ),
    );
  }
}

class productUi extends StatelessWidget {
  productUi(
    this.future, {
    Key? key,
  }) : super(key: key);

  String future;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<http.Response>(
        future: http.get(Uri.parse(future)),
        builder: ((context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('error'),
            );
          }

          if (!snapshot.hasData) {
            return Center(child: CupertinoActivityIndicator());
          }

          ProductModel product =
              ProductModel.fromJson(jsonDecode(snapshot.data!.body));
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: CachedNetworkImage(imageUrl: product.imageUrl)),
                verticalSpaceSmall,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Row(
                    children: [
                      Expanded(child: Text(product.title, maxLines: 2, overflow: TextOverflow.ellipsis,)),
                      horizontalSpaceTiny,
                      Icon(FeatherIcons.heart),
                    ],
                  ),
                ),
                verticalSpaceTiny,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      Text('\$${(product.price + 50.0).toStringAsFixed(2)}', style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.lineThrough),),
                      horizontalSpaceTiny,
                      Text('\$${product.price.toString()}', style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                )
              ],
            ),
          );
        }));
  }
}
