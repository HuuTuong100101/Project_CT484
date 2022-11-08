import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

// ignore: camel_case_types
class userScreen extends StatelessWidget {
  const userScreen({super.key});

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
                const ListTile(
                  title: Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  leading: Icon(IconlyLight.profile),
                  trailing: Icon(IconlyLight.arrowRight2),
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
                const ListTile(
                  title: Text(
                    "Logout",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  leading: Icon(IconlyLight.logout),
                  trailing: Icon(IconlyLight.arrowRight2),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Future<void> _showAddressDialog() async {
//   await showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: const Text('Update'),
//           content: TextField(
//             // onChanged: (value) {
//             //   print('_addressTextController.text ${_addressTextController.text}');
//             // },
//             controller: _addressTextController,
//             maxLines: 5,
//             decoration: const InputDecoration(hintText: "Your address"),
//           ),
//           actions: [
//             TextButton(
//               onPressed: () async {
//                 String _uid = user!.uid;
//                 try {
//                   await FirebaseFirestore.instance
//                       .collection('users')
//                       .doc(_uid)
//                       .update({
//                     'shipping-address': _addressTextController.text,
//                   });

//                   Navigator.pop(context);
//                   setState(() {
//                     address = _addressTextController.text;
//                   });
//                 } catch (err) {
//                   GlobalMethods.errorDialog(
//                       subtitle: err.toString(), context: context);
//                 }
//               },
//               child: const Text('Update'),
//             ),
//           ],
//         );
//       });
// }
