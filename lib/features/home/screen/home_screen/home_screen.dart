import 'package:ecommerce_mobile/preferences/icon.dart';
import 'package:ecommerce_mobile/features/home/model/item_model.dart';
import 'package:ecommerce_mobile/features/home/widgets/food_item.dart';
import 'package:flutter/material.dart';

part 'sections/header_section.dart';
part 'sections/recomanded_combo_section.dart';
part 'sections/filtered_item_section.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, required this.name});

  final String? name;

  final List<String> category = [
    'Hottest',
    'Popular',
    'Top',
    'Most Liked',
    'Recently Added',
    'Newest',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 26.0, horizontal: 24),
        child: ListView(
          children: [
            HeaderSection(name: name),
            SizedBox(height: 35),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search for fruit salad combos',
                      prefixIcon: Icon(
                        AppIcons.search,
                        color: Color(0xffC2BDBD),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 22),
                Icon(AppIcons.filtered),
              ],
            ),
            SizedBox(height: 35),
            RecomandedComboSection(),
            SizedBox(height: 60),
            FilteredItemSection(category: category),
          ],
        ),
      ),
    );
  }
}

