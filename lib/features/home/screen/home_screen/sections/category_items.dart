part of '../home_screen.dart';

class CategoryItems extends StatelessWidget {
  const CategoryItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recommended Combo',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FoodItem(
              item: ItemFoodModel(
                imagePath: 'assets/images/food.png',
                name: 'Shoyu ramen',
                price: '25,000',
              ),
            ),
            FoodItem(
              item: ItemFoodModel(
                imagePath: 'assets/images/food.png',
                name: 'Wontonmen',
                price: '18,000',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
