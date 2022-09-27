import 'package:flutter/material.dart';
import 'package:tif_flutter/widgets/info_card.dart';
import 'package:tif_flutter/nPage/edit_profile.dart';

const nama = "Amiqatun Nasyati Yusri";
const nim = "D121201080";
const gender = "Perempuan";
const alamat = "Bulukumba";

class NimProfileScreen extends StatefulWidget {
  const NimProfileScreen({Key? key}) : super(key: key);

  @override
  State<NimProfileScreen> createState() => _NimProfileScreenState();
}

class _NimProfileScreenState extends State<NimProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Screen'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 30.0),
              height: 100,
              width: 100,
              child: Stack(
                children: <Widget>[
                  CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage('image/chanyang.png'),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        shape: BoxShape.circle,
                        border: Border.all(width: 4, color: Colors.blue),
                      ),
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return EditProfile();
                              },
                            ),
                          ),
                        },
                        child: Center(
                          heightFactor: 15,
                          widthFactor: 15,
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),


            SizedBox(height: 20),
            Text(
              "meeyow02",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),

            Container(
              height: 20,
            ),
            InfoCard(text: nama, icon: Icons.person ),
            InfoCard(text: nim, icon: Icons.card_membership),
            InfoCard(text: gender, icon: Icons.female),
            InfoCard(text: alamat, icon: Icons.location_city)

          ],
        ),
      ),
    );
  }
}