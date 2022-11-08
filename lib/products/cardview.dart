import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class Cardwidget extends StatefulWidget {
  const Cardwidget({super.key});

  @override
  State<Cardwidget> createState() => _CardwidgetState();
}

class _CardwidgetState extends State<Cardwidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        color: Colors.lightBlue.withOpacity(0.1),
        child: InkWell(
          onTap: (() {}),
          borderRadius: BorderRadius.circular(10),
          child: Column(
            children: [
              FancyShimmerImage(
                imageUrl:
                    'https://product.hstatic.net/1000343256/product/img20191016115750_7877388944f8466a802b2eabcc00c511_master.jpg',
                height: MediaQuery.of(context).size.width * 0.25,
                width: MediaQuery.of(context).size.width * 0.25,
                boxFit: BoxFit.fill,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    const Text(
                      'Name',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    heart_btn(context)
                  ],
                ),
              ),
              Padding(
                padding:const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      '250\$',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 255, 0, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget heart_btn(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // ignore: avoid_print
        print('Hello heart');
      },
      child: const Icon(
        IconlyLight.heart,
        size: 22,
      ),
    );
  }
}
