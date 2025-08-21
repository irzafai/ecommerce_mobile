
part of '../home_screen.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
    required this.name,
  });

  final String? name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(AppIcons.burgerNav, size: 15),
            Column(
              children: [
                Icon(AppIcons.cart, size: 24, color: Color(0xffFFA451)),
                SizedBox(height: 4),
                Text('My Basket', style: TextStyle(fontSize: 10)),
              ],
            ),
          ],
        ),
        SizedBox(height: 35),
        Text(
          'Hello $name, What fruit salad \ncombo do you want today?',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
