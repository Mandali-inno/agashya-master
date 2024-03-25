import 'package:agashya/services/contact_page.dart';
import 'package:agashya/page/home_page.dart';
import 'package:agashya/page/sign_in.dart';
import 'package:agashya/quiz/screens/admin/dashboard.dart';
import 'package:agashya/quiz/screens/admin/quiz.dart';
import 'package:agashya/quiz/screens/user%20screens/user_interface.dart';
import 'package:agashya/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:agashya/share_preference/pick_image.dart';

import '../calculator/calculator.dart';

class AppDisplay extends StatefulWidget {
  const AppDisplay({super.key});

  @override
  State<AppDisplay> createState() => _AppDisplayState();
}

int currentPage = 0;
int selectedDrawerIndex = 0;

class _AppDisplayState extends State<AppDisplay> {
  List<Widget> pages = [
    const HomePage(),
    CalculatorPage(),
    const ProfilePage(),
    AdminDashboard(),
    Settings(),
    
    SignupScreen(),
    
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter',
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: const Text('Mandali'),
                accountEmail: const Text('mandaliinno@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const PickImage()));
                        },
                        child: Image.asset('images/image1.jpg')),
                  ),
                ),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('images/image1.jpg'),
                  fit: BoxFit.cover,
                )),
              ),
              // ListTile(
              //   title: const Text('Home'),
              //   leading: const Icon(Icons.home, color: Colors.blue),
              //   onTap: () {
              //     Navigator.of(context).push(
              //         MaterialPageRoute(builder: (context) => const HomePage()));
              //   },
              // ),
              // const ListTile(
              //   title: Text('Calculator'),
              //   leading: Icon(Icons.calculate, color: Colors.blue),
              // ),
              // ListTile(
              //   title: const Text('Contacts'),
              //   leading:
              //       const Icon(Icons.person_2_sharp, color: Colors.blue),
              //   // onTap: () {
              //   //   Navigator.of(context).push(MaterialPageRoute(
              //   //       builder: (context) => const ProfilePage()));
              //   // },
              // ),
              buildDrawerItem(0, 'Home', Icons.home),
              buildDrawerItem(1, 'Calculator', Icons.calculate),
              buildDrawerItem(2, 'Contacts', Icons.person),
              buildDrawerItem(3, 'Quiz', Icons.assignment_ind_sharp),
              ListTile(
                title: const Text('Settings'),
                leading: const Icon(Icons.settings),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Settings()));
                },
              ),
              const SizedBox(height: 40),
              const Divider(
                color: Colors.black,
                thickness: 2,
              ),
              ListTile(
                title: const Text('Logout'),
                leading: const Icon(Icons.logout),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => SignupScreen()));
                },
              ),
            ],
          ),
        ),
        body: pages[currentPage],
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     debugPrint('Floating action pressed');
        //   },
        //   child: const Icon(Icons.add),
        // ),
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            NavigationDestination(
                icon: Icon(
                  Icons.calculate,
                ),
                label: 'Calculator'),
            NavigationDestination(
                icon: Icon(
                  Icons.person,
                ),
                label: 'Contacts'),
            NavigationDestination(
                icon: Icon(
                  Icons.assignment_ind_sharp,
                ),
                label: 'Quiz'),
          ],
          onDestinationSelected: (int index) {
            setState(() {
              currentPage = index;
            });
          },
          selectedIndex: currentPage,
        ),
      ),
    );
  }

  ListTile buildDrawerItem(int index, String title, IconData icon) {
    return ListTile(
      title: Text(title),
      leading: Icon(icon),
      onTap: () {
        // Navigate to the corresponding page and update the selected index
        Navigator.pop(context); // Close the drawer
        setState(() {
          currentPage = index;
          selectedDrawerIndex = index;
        });
      },
      selected: selectedDrawerIndex == index, // Highlight the selected item
    );
  }
}
