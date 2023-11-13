import 'package:flutter/material.dart';


class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Dflutter.com'),
            accountEmail: Text('Example'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network('https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
                ),

              ),
            ),
          ),
           ListTile(
            leading: Icon(Icons.favorite),
             title: Text('Favorites'),
             onTap: ()=>null,
          ),

          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: ()=>null,
          ),

          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            onTap: ()=>null,
          ),

          ListTile(
            leading: Icon(Icons.people),
            title: Text('People'),
            onTap: ()=>null,
          ),

          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: ()=>null,
          ),
        ],
      ),
    );
  }
}
