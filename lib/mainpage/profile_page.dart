import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:influencer_connect_v1/model/user_preferences.dart';

import '../model/User.dart';
import '../widgets/ProfileWidget.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context){
    final user = UserPreferrences.myUser;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(height: 20,),
            ProfileWidget(
              imagePath: user.imagePath,
              onClicked: () async {
                //await updateProfilePicture();
              },
            )
          ],
        ),
      ),
    );
  }
}



AppBar buildAppBar(BuildContext context) {
  final icon = CupertinoIcons.moon_stars;

  return AppBar(
    leading: BackButton(),
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          onTap: () {
            // Add your search functionality here
            print('Search tapped');
          },
          child: Icon(
            Icons.search,
            size: 26.0,
          ),
        ),
      ),
      IconButton(
        onPressed: (){},
        icon: Icon(icon),
      ),

    ],
  );
}