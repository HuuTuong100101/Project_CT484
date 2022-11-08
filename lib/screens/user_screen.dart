import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

// ignore: camel_case_types
class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                RichText(
                  text: TextSpan(
                    text: "Welcome, ",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: "Tuong Nguyen",
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                          recognizer: TapGestureRecognizer()
                            // ignore: avoid_print
                            ..onTap = () => print('Hello'))
                    ],
                  ),
                ),
                // ignore: prefer_const_constructors
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'tn732506@gmail.com',
                  // ignore: unnecessary_const
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: 1,
                ),
                ListTile(
                  title: const Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  leading: const Icon(IconlyLight.profile),
                  trailing: const Icon(IconlyLight.arrowRight2),
                  onTap: () async {
                    await _showAddressDialog(context);
                  },
                ),
                const ListTile(
                  title: Text(
                    "Orders",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  leading: Icon(IconlyLight.bag2),
                  trailing: Icon(IconlyLight.arrowRight2),
                ),
                const ListTile(
                  title: Text(
                    "Comments",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  leading: Icon(IconlyLight.document),
                  trailing: Icon(IconlyLight.arrowRight2),
                ),
                const ListTile(
                  title: Text(
                    "Favorite",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  leading: Icon(IconlyLight.star),
                  trailing: Icon(IconlyLight.arrowRight2),
                ),
                const ListTile(
                  title: Text(
                    "Setting",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  leading: Icon(IconlyLight.setting),
                  trailing: Icon(IconlyLight.arrowRight2),
                ),
                const ListTile(
                  title: Text(
                    "Forgot password",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  leading: Icon(IconlyLight.unlock),
                  trailing: Icon(IconlyLight.arrowRight2),
                ),
                ListTile(
                  title: const Text(
                    "Logout",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  leading: const Icon(IconlyLight.logout),
                  trailing: const Icon(IconlyLight.arrowRight2),
                  onTap: () async {
                    await _showLogoutDialog(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> _showAddressDialog(context) async {
  await showDialog(
      context: context,
      builder: (context) {
        // ignore: prefer_const_constructors
        return AlertDialog(
          title: const Text('Update'),
          // ignore: prefer_const_constructors
          content: TextField(
            maxLines: 5,
            decoration: const InputDecoration(hintText: "Your profile"),
          ),
          actions: [
            TextButton(
              onPressed: () async {},
              child: const Text('Update'),
            )
          ],
        );
      });
}

Future<void> _showLogoutDialog(context) async {
  await showDialog(
      context: context,
      builder: (context) {
        // ignore: prefer_const_constructors
        return AlertDialog(
          title: Row(
            children: const [Icon(IconlyBold.danger), Text('Sign out')],
          ),
          // ignore: prefer_const_constructors
          content: const Text("Do you want sign out ?"),
          actions: [
            TextButton(
              onPressed: () {
                if (Navigator.canPop(context)) {
                  Navigator.pop(context);
                }
              },
              child: const Text(
                'Cancle',
                style: TextStyle(color: Colors.red),
              ),
            ),
            TextButton(
              onPressed: () async {},
              child: const Text(
                'Logout',
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        );
      });
}
