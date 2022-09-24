import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var _rating = 0;
var _isFavorite = true;

class D121201015ProfileScreen extends StatelessWidget {
  const D121201015ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final appBar = AppBar(
      title: Text(
        "D121201015-Muhammad Rifqy Yudhiestra R.",
        style: GoogleFonts.lato(
          fontWeight: FontWeight.w600,
        ),
      ),
      backgroundColor: const Color(0xff2c3e50),
      elevation: 0,
    );
    final bodyHeight = mediaQueryHeight -
        appBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    final bool _isLandsacape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      appBar: appBar,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff2c3e50),
                  Color(0xffbdc3c7),
                ],
              ),
            ),
          ),
          _isLandsacape
              ? ListView(
                  children: [
                    Stack(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 20,
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 400,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white70,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 40),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Click My Picture",
                                      style: GoogleFonts.openSans(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const Icon(
                                      Icons.arrow_downward_rounded,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                GestureDetector(
                                  onTap: () => {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return const PageDua();
                                        },
                                      ),
                                    ),
                                  },
                                  child: const CircleAvatar(
                                    radius: 60,
                                    backgroundImage: AssetImage(
                                      'lib/assets/foto.png',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 60),
                                  height: 35,
                                  width: 250,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.purple[600]!,
                                        Colors.blue,
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Muhammad Rifqy Yudhiestra R.",
                                      style: GoogleFonts.openSans(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 8),
                                  height: 35,
                                  width: 220,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.purple[600]!,
                                        Colors.blue,
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Bermain badminton dan gitar",
                                      style: GoogleFonts.openSans(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 8),
                                  height: 35,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.purple[600]!,
                                        Colors.blue,
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Hitam",
                                      style: GoogleFonts.openSans(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              : Center(
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: bodyHeight * 0.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white70,
                          ),
                        ),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Click My Picture",
                                  style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Icon(
                                  Icons.arrow_downward_rounded,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () => {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const PageDua();
                                    },
                                  ),
                                ),
                              },
                              child: const CircleAvatar(
                                radius: 60,
                                backgroundImage: AssetImage(
                                  'lib/assets/foto.png',
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 60),
                              height: 35,
                              width: 250,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.purple[600]!,
                                    Colors.blue,
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text(
                                  "Muhammad Rifqy Yudhiestra R.",
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 8),
                              height: 35,
                              width: 220,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.purple[600]!,
                                    Colors.blue,
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text(
                                  "Bermain badminton dan gitar",
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 8),
                              height: 35,
                              width: 80,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.purple[600]!,
                                    Colors.blue,
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text(
                                  "Hitam",
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}

class PageDua extends StatefulWidget {
  const PageDua({Key? key}) : super(key: key);

  @override
  State<PageDua> createState() => _PageDuaState();
}

class _PageDuaState extends State<PageDua> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _isFavorite = !_isFavorite;
              });
            },
            color: Colors.red,
            icon: _isFavorite
                ? const Icon(Icons.favorite_border)
                : const Icon(Icons.favorite),
          ),
        ],
        backgroundColor: const Color(0xff2c3e50),
        elevation: 0,
        title: Text(
          "D121201015-Muhammad Rifqy Yudhiestra R.",
          style: GoogleFonts.lato(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff2c3e50),
                  Color(0xffbdc3c7),
                ],
              ),
            ),
          ),
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 24,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                right: 10,
                              ),
                              width: 100,
                              height: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'lib/assets/IMG_9045.JPG',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: mediaQueryWidth * 0.65,
                              child: Text(
                                "Muhammad Rifqy Yudhiestra R.",
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                                style: GoogleFonts.openSans(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 2,
                              ),
                              width: mediaQueryWidth * 0.65,
                              child: Text(
                                "Hobi: Bermain badminton dan gitar",
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                                style: GoogleFonts.openSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Divider(),
                            Row(
                              children: List.generate(
                                5,
                                (index) => IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _rating = index + 1;
                                    });
                                  },
                                  color: Colors.amber,
                                  icon: index < _rating
                                      ? const Icon(Icons.star)
                                      : const Icon(Icons.star_border),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(
                        top: 24,
                      ),
                      child: Text(
                        "Deskripsi",
                        style: GoogleFonts.openSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Text(
                        "Halo! saya Muhammad Rifqy Yudhiestra Rachman biasa dipanggil Rifqy. Saya adalah seorang mahasiswa di Universitas Hasanuddin departemen Teknik Informatika dan sedang berada di semester 5. Saya tertarik pada mobile development dengan menggunakan framework Flutter karena tampilannya yang menarik dan modern.\n\nSelain itu, saya juga tertarik pada bidang Cyber Security karena dalam proses development sebuah aplikasi tidak hanya memperhatikan dari segi tampilan saja namun juga perlu untuk memperhatikan segi keamanannya.",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.openSans(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
