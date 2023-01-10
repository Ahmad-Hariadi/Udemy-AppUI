import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(EvaIcons.shoppingCartOutline, color: Colors.white),
            onPressed: () {
              print('Basket Window');
            },
          ),
        ],
        backgroundColor: Colors.black,
        title: Text(
          'Account',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 300.0,
                width: 400.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Ahmad Hariadi',
                      style: TextStyle(color: Colors.white, fontSize: 24.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            EvaIcons.google,
                            color: Colors.white,
                          ),
                          Text(
                            'hariadi2812@gmail.com',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 20.0),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          'Become an instructor',
                          style: TextStyle(
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Video preference',
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
                title: Text(
                  'Download option',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
                title: Text(
                  'Video playback option',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
              Text(
                'Account settings',
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
                title: Text(
                  'Career goal',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
                title: Text(
                  'Account security',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
                title: Text(
                  'Email notification preferences',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
                title: Text(
                  'Learning reminders',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
              Text(
                'Support',
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
                title: Text(
                  'About Udemy',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
                title: Text(
                  'About Udemy for Business',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
                title: Text(
                  'Frequently asked questions',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
                title: Text(
                  'Share the Udemy app',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
              Text(
                'Diagnostics',
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
                title: Text(
                  'Status',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
              Center(
                child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      'Sign out',
                      style: TextStyle(color: Colors.lightBlue, fontSize: 18.0),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Center(
                  child: Text(
                    'Udemy v8.9.2',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13.0,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
