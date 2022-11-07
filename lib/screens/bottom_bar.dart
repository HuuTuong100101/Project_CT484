import 'package:appshopping/screens/home.dart';
import 'package:appshopping/screens/cartscreen.dart';
import 'package:appshopping/screens/categories.dart';
import 'package:appshopping/screens/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

// ignore: camel_case_types
class bottomBarScreen extends StatefulWidget {
	const bottomBarScreen({super.key});

	@override
	State<bottomBarScreen> createState() => _bottomBarScreenState();
}

// ignore: camel_case_types
class _bottomBarScreenState extends State<bottomBarScreen> {
	// ignore: unused_field
	int _selectedIndex = 0;
	// ignore: unused_field
	final List<Map<String, dynamic>> _pages = [
		{
			'page': const HomeScreen(),
			'title': 'Home Screen',
		},
		{
			'page': const categoriesScreen(),
			'title': 'Categories Screen',
		},
		{
			'page': const cartScreen(),
			'title': 'Cart Screen',
		},
		{
			'page': const userScreen(),
			'title': 'user Screen',
		},
	];
	// ignore: unused_element
	void _selectedPage(int index) {
		setState(() {
			_selectedIndex = index;
		});
	}

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: _pages[_selectedIndex]['page'],
			bottomNavigationBar: BottomNavigationBar(
				type: BottomNavigationBarType.fixed,
				showSelectedLabels: false,
				showUnselectedLabels: false,
				currentIndex: _selectedIndex,
				unselectedItemColor:  Colors.lightBlue,
				selectedItemColor:  Colors.blue,
				onTap: _selectedPage,
				items: <BottomNavigationBarItem>[
					BottomNavigationBarItem(
						icon: Icon(_selectedIndex == 0 
							? IconlyBold.home 
							: IconlyLight.home),
						label: "Home",
					),
					BottomNavigationBarItem(
						icon: Icon(_selectedIndex == 1
							? IconlyBold.category
							: IconlyLight.category),
						label: "Categories",
					),
					BottomNavigationBarItem(
						icon: Icon(_selectedIndex == 2
							? IconlyBold.buy
							: IconlyLight.buy),
						label: "Cart",
					),
					BottomNavigationBarItem(
						icon: Icon(_selectedIndex == 3
							? IconlyBold.user2
							: IconlyLight.user2),
						label: "User",
					),
				],
			),
		);
	}
}