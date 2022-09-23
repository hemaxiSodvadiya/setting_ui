import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextStyle mainTextStyle = const TextStyle(
    fontSize: 20,
    color: const Color(0xffff4500),
    fontWeight: FontWeight.w900,
  );

  TextStyle tittleTextStyle = const TextStyle(
    fontSize: 16,
    color: const Color(0xff6e6e71),
    fontWeight: FontWeight.w600,
  );

  TextStyle subtitleTextStyle = const TextStyle(
    fontSize: 12,
    color: const Color(0xffa2a2a5),
    fontWeight: FontWeight.w500,
  );

  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffff4500),
          title: const Text(
            "Settings UI",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Common",
                      style: mainTextStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ListTile(
                    leading: const Icon(Icons.language),
                    title: Text(
                      "Language",
                      style: tittleTextStyle,
                    ),
                    subtitle: Text(
                      "English",
                      style: subtitleTextStyle,
                    ),
                  ),
                  const Divider(
                    height: 2,
                    color: Colors.black12,
                  ),
                  ListTile(
                    leading: const Icon(Icons.cloud_outlined),
                    title: Text(
                      "Environment",
                      style: tittleTextStyle,
                    ),
                    subtitle: Text(
                      "Production",
                      style: subtitleTextStyle,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 15),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Account",
                      style: mainTextStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ListTile(
                    leading: const Icon(Icons.phone),
                    title: Text(
                      "Phone Number",
                      style: tittleTextStyle,
                    ),
                  ),
                  const Divider(
                    height: 2,
                    color: Colors.black12,
                  ),
                  ListTile(
                    leading: const Icon(Icons.email),
                    title: Text(
                      "Email",
                      style: tittleTextStyle,
                    ),
                  ),
                  const Divider(
                    height: 2,
                    color: Colors.black12,
                  ),
                  ListTile(
                    leading: const Icon(Icons.logout),
                    title: Text(
                      "Sign out",
                      style: tittleTextStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 15),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Secutiry",
                      style: mainTextStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ListTile(
                    leading: const Icon(Icons.phonelink_lock),
                    title: Text(
                      "Lock app in background",
                      style: tittleTextStyle,
                    ),
                    trailing: Switch(
                        activeColor: Color(0xffff4500),
                        inactiveThumbColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                        onChanged: (val) {
                          setState(() {
                            print("tapped");
                            val = switchValue;
                          });
                        },
                        value: true),
                  ),
                  const Divider(
                    height: 2,
                    color: Colors.black12,
                  ),
                  ListTile(
                    leading: const Icon(Icons.fingerprint_outlined),
                    title: Text(
                      "Use fingerprint",
                      style: tittleTextStyle,
                    ),
                    trailing: Switch(
                        activeColor: Color(0xffff4500),
                        inactiveThumbColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                        onChanged: (val) {
                          setState(() {
                            print("tapped");
                            val = switchValue;
                          });
                        },
                        value: true),
                  ),
                  const Divider(
                    height: 2,
                    color: Colors.black12,
                  ),
                  ListTile(
                    leading: const Icon(Icons.lock),
                    title: Text(
                      "Change password",
                      style: tittleTextStyle,
                    ),
                    trailing: Switch(
                        inactiveThumbColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                        activeColor: Color(0xffff4500),
                        onChanged: (val) {
                          setState(() {
                            print("tapped");
                            val = switchValue;
                          });
                        },
                        value: true),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.only(left: 15),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Misc",
                  style: mainTextStyle,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
