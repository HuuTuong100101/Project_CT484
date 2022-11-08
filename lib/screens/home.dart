import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import '../products/cardview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {

  // ignore: non_constant_identifier_names
  final List<String> _Carousel = [
    'assets/images/carosoue1.jpg',
    'assets/images/carosoue2.jpg',
    'assets/images/carosoue3.jpg',
    'assets/images/carosoue4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Swiper(
                itemBuilder: (BuildContext context, int i) {
                  return Image.asset(
                    _Carousel[i],
                    fit: BoxFit.fill,
                  );
                },
                autoplay: true,
                itemCount: _Carousel.length,
                pagination: const SwiperPagination(),
                control: const SwiperControl(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "All Products",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                crossAxisCount: 2,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height * 0.5),
                children: List.generate(8, (index) {
                  return const Cardwidget();
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
