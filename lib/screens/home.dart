import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import '../products/cardview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ignore: unnecessary_nullable_for_final_variable_declarations
  final TextEditingController? _searchTextController =
      TextEditingController(); // ignore: non_constant_identifier_names
  final FocusNode _searchTextFocusNode = FocusNode();
  final List<String> _Carousel = [
    'assets/images/carosoue1.jpg',
    'assets/images/carosoue2.jpg',
    'assets/images/carosoue3.jpg',
    'assets/images/carosoue4.jpg',
  ];
  @override
  void dispose() {
    _searchTextController!.dispose();
    _searchTextFocusNode.dispose();
    super.dispose();
  }

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
                children: [
                  const Text(
                    "All Products",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: kBottomNavigationBarHeight,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextField(
                        focusNode: _searchTextFocusNode,
                        controller: _searchTextController,
                        onChanged: (ValueKey) {
                          setState(() {});
                        },
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 17),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                                color: Colors.lightBlue, width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                                color: Colors.lightBlue, width: 1),
                          ),
                          hintText: 'Search in here',
                          prefixIcon: const Icon(Icons.search),
                          suffix: IconButton(
                            onPressed: () {
                              _searchTextController!.clear();
                              _searchTextFocusNode.unfocus();
                            },
                            icon: Icon(
                              Icons.close,
                              color: _searchTextFocusNode.hasFocus
                                  ? Colors.red
                                  : Colors.lightBlue,
                            ),
                          ),
                        ),
                      ),
                    ),
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
                    (MediaQuery.of(context).size.height * 0.7),
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
