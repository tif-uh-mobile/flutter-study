import 'package:flutter/material.dart';

void main() {
  runApp(const D121201024ProfileScreen());
}

class D121201024ProfileScreen extends StatelessWidget {
  const D121201024ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile', selectionColor: Color(0x95484848)),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xff484848),
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: const D121201024ProfileBodyScreen(),
    );
  }
}

class D121201024ProfileBodyScreen extends StatelessWidget {
  const D121201024ProfileBodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(1.0),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  offset: Offset(0, 4),
                ),
              ],
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
              color: Color(0xff008080),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => const D121201024ProfileDetail()));
              },
              child: const CircleAvatar(
                backgroundImage:
                    AssetImage('assets/D121201024_NabilahAzZahra.jpg'),
                radius: 50.0,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xff008080),
              borderRadius: BorderRadius.circular(12.0),
            ),
            padding: const EdgeInsets.all(12.0),
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      'Name',
                      selectionColor: Colors.white,
                    ),
                    Spacer(),
                    Text(
                      'Nabilah Az Zahra',
                      selectionColor: Colors.white,
                    ),
                    SizedBox(width: 9.0),
                  ],
                ),
                const Divider(color: Colors.white),
                Row(
                  children: const [
                    Text(
                      'Hobby',
                      selectionColor: Colors.white,
                    ),
                    Spacer(),
                    Text(
                      'Coding',
                      selectionColor: Colors.white,
                    ),
                  ],
                ),
                const Divider(color: Colors.white),
                Row(
                  children: const [
                    Text(
                      'Favorite Color',
                      selectionColor: Colors.white,
                    ),
                    Spacer(),
                    Text(
                      'Black',
                      selectionColor: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class D121201024ProfileDetail extends StatelessWidget {
  const D121201024ProfileDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Profile', selectionColor: Color(0x95484848)),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xff484848),
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: const D121201024ProfileBodyDetail(),
    );
  }
}

class D121201024ProfileBodyDetail extends StatelessWidget {
  const D121201024ProfileBodyDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 80,
                  height: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/D121201024_Nabilah.jpg')),
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(
                      width: 200,
                      child: Text(
                        'Nabilah Az Zahra',
                        textAlign: TextAlign.center,
                        //overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      width: 200,
                      child: Text(
                        'Coding',
                        textAlign: TextAlign.center,
                        //overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.sentiment_neutral),
                        Icon(Icons.account_balance),
                        Icon(Icons.music_note),
                        Icon(Icons.book),
                        Icon(Icons.wifi),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: const Text(
                'Saya Mahasiswa Teknik Informatika',
              ),
            ),
            const Divider(),
            const SizedBox(
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
                ' Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
