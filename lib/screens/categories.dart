import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class categoriesScreen extends StatelessWidget {
  categoriesScreen({super.key});

  List<Map<String, dynamic>> categogies = [
    {
      'imgPath': 'assets/images/Adidas1.png',
    },
    {
      'imgPath': 'assets/images/Converse-removebg.png',
    },
    {
      'imgPath': 'assets/images/Nike-removebg-preview.png',
    },
    {
      'imgPath': 'assets/images/Vans-removebg-preview.png',
    },
    {
      'imgPath': 'assets/images/Fila-removebg-preview.png',
    },
    {
      'imgPath': 'assets/images/Jordan-removebg-preview.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        elevation: 0,
        title: const Text(
          'Categogies',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 240 / 250,
            crossAxisSpacing: 30,
            mainAxisSpacing: 30,
            children: List.generate(
                6, (i) => FrameCategory(context, categogies[i]['imgPath']))),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget FrameCategory(BuildContext context, imgPath) {
    // ignore: no_leading_underscores_for_local_identifiers
    double _screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: (() {
        // ignore: avoid_print
        print("This Category");
      }),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.lightBlue.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Colors.lightBlue.withOpacity(0.7),
            width: 2,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: _screenWidth * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    image: AssetImage(
                      imgPath,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
