import 'package:flutter/material.dart';
import 'PetRequests.dart';
import 'ClinicDetailScreen.dart';
import 'PetSitterScreen.dart';
import 'SettingScreen.dart';
import 'CommunityScreen.dart';
import 'Widget/Footer.dart';
import 'Widget/PetC2.dart';
import 'Widget/main2.dart';
import 'FormalPayScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false, // Hide the debug banner
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF9BF4E),
        automaticallyImplyLeading: false,
        title: Center(child: Text('Home Screen')),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: MainSections(
                            imagePath: 'lib/assets/Icon-Petsitter.png',
                            text: 'Pet sitter',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => PetSitterScreen())
                              );
                            },
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                          child: MainSections(
                            imagePath: 'lib/assets/Icon-Petclinic.png',
                            text: 'Pet clinic',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ClinicDetailScreen())
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: MainSections(
                            imagePath: 'lib/assets/Icon-Chat.png',
                            text: 'Chat',
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => CommunityScreen())
                              );
                            },
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                          child: MainSections(
                            imagePath: 'lib/assets/Icon-Groupchat.png',
                            text: 'Group chat',
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => SettingScreen())
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: MainSections(
                            imagePath: 'lib/assets/Icon-Setting.png',
                            text: 'Setting',
                            onPressed: () {
                              Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => SettingScreen())
                              );
                            },
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                          child: MainSections(
                            imagePath: 'lib/assets/Icon-History.png',
                            text: 'History record',
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => FormalPayScreen())
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          AppFooter(),
        ],
      ),
    );
  }
}
