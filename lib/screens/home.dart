// TODO Implement this library.
import 'package:flutter/material.dart';
import 'package:flutter_application_16/main.dart';
import 'package:flutter_application_16/models/config.dart';
import 'package:flutter_application_16/models/users.dart';
import 'package:flutter_application_16/screens/login.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    String accountName = "N/A";
    String accountEmail = "N/A";
    String accountUrl = "https://scontent-sin6-4.xx.fbcdn.net/v/t39.30808-6/367709402_1667529013719296_1175436414789239456_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHzczNSnPxR2jISk41f8_kfoueH8N4XNsKi54fw3hc2wgP_lRz8A0ifXDDrFHAQhIrzvjFkK2tucdo5Zqv9qbIa&_nc_ohc=r1qzsHjjJnUAX97lC4c&_nc_ht=scontent-sin6-4.xx&oh=00_AfDy0hH5HZ0bv5m0HIyQnjZ3lK4gWfYNlseWEJKo64Ooqw&oe=64F248CE";
    
    Users user = Configure.login;
    if (user.id != null) {
      accountName = user.fullname!;
      accountEmail = user.email!;
    }
    
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(accountName) ,
            accountEmail: Text(accountEmail),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(accountUrl),
              backgroundColor: Colors.white,
               ),
               ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: (){
              Navigator.pushNamed(context, Home.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text("Login"),
            onTap: (){
              Navigator.pushNamed(context, Login.routeName);
            },
          )
        ]),
    );
  }

}


