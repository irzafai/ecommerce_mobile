part of '../home_screen.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key, required this.name});

  final String? name;

  @override
  Widget build(BuildContext context) {
    return Column(
      // Tambahkan properti ini untuk mengatur perataan horizontal ke kiri
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Icon(AppIcons.burgerNav, size: 15),
        //     Column(
        //       children: [
        //         Icon(AppIcons.cart, size: 24, color: Color(0xffFFA451)),
        //         SizedBox(height: 4),
        //         Text('My Basket', style: TextStyle(fontSize: 10)),
        //       ],
        //     ),
        //   ],
        // ),
        SizedBox(height: 35),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Skip instant ramen',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
              textAlign: TextAlign.left,
            ),
            Text(
              'Find the perfect ramen here',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.grey,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ],
    );
  }
}
