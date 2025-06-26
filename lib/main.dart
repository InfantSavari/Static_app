import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Layout Demo",
      home: HomeScreen(),
      // home: TitleSection(),
      // theme: ThemeData.light(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Layout Demo"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(179, 234, 142, 3),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageSection(),
            TitleSection(),
            ButtonSection(),
            TextSection(),
          ],
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  final String name = "Oeschinen Lake Campground";
  final String location = "Kandersteg, Switzerland";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(location, style: TextStyle(fontStyle: FontStyle.italic)),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red[500]),
          Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    // return Padding(
    //   padding: const EdgeInsets.only(left: 8, right: 8),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //     children: [
    //       ButtonWithText(colour: color, icon: Icons.call, label: "CALL"),
    //       ButtonWithText(colour: color, icon: Icons.near_me, label: "ROUTE"),
    //       ButtonWithText(colour: color, icon: Icons.share, label: "SHARE"),
    //     ],
    //   ),
    // );
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(colour: color, icon: Icons.call, label: "CALL"),
          ButtonWithText(colour: color, icon: Icons.near_me, label: "ROUTE"),
          ButtonWithText(colour: color, icon: Icons.share, label: "SHARE"),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.colour,
    required this.icon,
    required this.label,
  });

  final Color colour;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: colour),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              color: colour,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({super.key});
  final String description =
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
      'Bernese Alps. Situated 1,578 meters above sea level, it '
      'is one of the larger Alpine Lakes. A gondola ride from '
      'Kandersteg, followed by a half-hour walk through pastures '
      'and pine forest, leads you to the lake, which warms to 20 '
      'degrees Celsius in the summer. Activities enjoyed here '
      'include rowing, and riding the summer toboggan run.';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(description, softWrap: true),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Image.asset("images/lakes.jpg", fit: BoxFit.fill);
  }
}
