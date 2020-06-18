//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
//  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 35.0,
                  backgroundImage: AssetImage('assets/images/user_profile.png'),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Thiago Telles',
                        style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              '4,98',
                              style: TextStyle(
                                color: Colors.white70,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white70,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
            ),
          ),
          ListTile(
            leading: Icon(Icons.directions_bus),
            title: Text(
              'Meus transportes',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.person_pin),
            title: Text(
              'Perfil',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            onTap: () => {Navigator.pop(context)},
          ),
          ListTile(
            leading: Icon(Icons.attach_money),
            title: Text(
              'Carteira',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            onTap: () => {Navigator.pop(context)},
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text(
              'Ajuda',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.grade),
            title: Text(
              'Anuncie uma embarcação',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.cancel),
            title: Text(
              'Logout',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            onTap: () {
//              _auth.signOut();
//              //TODO: puxar do controller
//              Modular.to.pushReplacementNamed('/login');
            },
          ),
        ],
      ),
    );
  }
}
