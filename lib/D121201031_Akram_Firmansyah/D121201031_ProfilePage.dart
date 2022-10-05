import 'package:flutter/material.dart';

var _isFavorite = true;
const whiteColor = Color(0xfff6f6f6);
const blackColor = Color(0xff0d1017);
const redColor = Color(0xfffd363b);

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('D121201031_Akram Firmansyah'),
        backgroundColor: redColor,

      ),

      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AboutPage())
                  );
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(160, 160),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80)
                  ),
                  backgroundColor: whiteColor,
                ),
                child: const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/D121201031-image.png"),
                  radius: 160.0,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                color: whiteColor,
                margin: const EdgeInsets.fromLTRB(0, 24, 0, 0),
                child: const Center(
                  child: Text(
                    "Akram Firmansyah",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: blackColor,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                color: whiteColor,
                margin: const EdgeInsets.fromLTRB(0, 24, 0, 0),
                child: const Center(
                  child: Text(
                    "D121201031",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: blackColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ),
      backgroundColor: blackColor,
    );
  }
}


class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions : [
          IconButton(
            onPressed: () {
              setState(() {
                _isFavorite = !_isFavorite;
              });
            },
            color: whiteColor,
            icon: _isFavorite? const Icon(Icons.favorite_border) : const Icon(Icons.favorite),
          ),
        ],
        title: const Text('About'),
        backgroundColor: redColor,
      ),
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Flex(
          direction: Axis.vertical,
          children: [
            Flex(
              direction: Axis.horizontal,
              children: [
                const Image(
                  image: AssetImage("assets/images/D121201031-image.png"),
                  height: 100,
                ),
                Container(
                  child: Flex(
                    direction: Axis.vertical,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: const Text(
                          "Akram Firmansyah",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            color: whiteColor,
                          ),
                        ),
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                      ),
                      const Text(
                        "D121201031",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xfff6f6f6),
                        ),
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 24),
              child: Flex(
                direction: Axis.vertical,
                children: const [
                  Text(
                    "Lorem ipsum dolor sit amet consectetur adipiscing elit ultricies, accumsan auctor condimentum quam cursus hendrerit eget tellus, cubilia leo ultrices ridiculus nostra maecenas felis. Eleifend elit neque facilisis turpis interdum luctus orci est, mollis blandit iaculis vel consequat nascetur cubilia, platea metus accumsan curabitur sollicitudin pharetra himenaeos.",
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.justify,
                    softWrap: true,
                  ),Text(
                    "Vitae vehicula semper ligula penatibus dignissim tortor morbi accumsan, fames sem placerat facilisis metus himenaeos. Nunc per massa dui accumsan nullam interdum feugiat, ac ultricies proin porttitor lectus cubilia iaculis eleifend, quis a netus odio nostra suscipit.",
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.justify,
                    softWrap: true,
                  ),

                ],
              ),
            )
          ],
        ),
      ),
      backgroundColor: blackColor,
    );
  }
}