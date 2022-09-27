import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tif_flutter/D121201016_Zid Irsyadin Sartono Wijaogy/widget/profil_widget.dart';
import 'package:tif_flutter/D121201016_Zid Irsyadin Sartono Wijaogy/widget/button_widget.dart';
import 'package:tif_flutter/D121201016_Zid%20Irsyadin%20Sartono%20Wijaogy/utility/user_preferences.dart';
import 'package:tif_flutter/D121201016_Zid%20Irsyadin%20Sartono%20Wijaogy/widget/appbar_widget.dart';
import 'model/user.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {},
          ),
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 48),
          buildAbout(user),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.nim,
            style: TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              user.about,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
}