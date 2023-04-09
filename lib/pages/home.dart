import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> _posts = ['post1', 'post2', 'post3'];

  List _stories = ['story1', 'story2', 'stroy3'];

  List _likedPosts = [];

  // List<Quote> quotes = [Quote(author: "daniel",text: "123")];

  void addLikedPosts(id) {
    setState(() {
      _likedPosts.add(id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: GradientText(
            'Tinder',
            style: const TextStyle(
                fontSize: 40,
                fontFamily: 'Lobster',
                fontWeight: FontWeight.bold),
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 239, 118, 205),
              Color(0xffac255e),
              Color(0xffca485c),
              Color(0xffe16b5c),
              Color(0xfff39060),
              Color(0xffffb56b),
            ]),
          ),
          actions: [Icon(Icons.favorite)],
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: Container(
            child: Column(
          children: [
            Container(
                height: 120,
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  StoryPreview(),
                  StoryPreview(),
                  StoryPreview(),
                  StoryPreview(),
                  StoryPreview(),
                  StoryPreview(),
                  StoryPreview(),
                  StoryPreview()
                ])),
            Expanded(
              child: ListView(children: [
                Image(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1649844232985-6daab6b19778?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=985&q=80')),
                Column(children: _posts.map((post) => Text(post)).toList())
              ]),
            ),
          ],
        )),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              print(index);
            },
            currentIndex: 0,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled, color: Colors.black),
                  label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Likes'),
              BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Pairs'),
              BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Back'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Back')
            ]));
  }
}

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}

class StoryPreview extends StatelessWidget {
  @override
  build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/profile");
          },
          child: Column(children: [
            CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1649844232985-6daab6b19778?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=985&q=80"),
                radius: 36.0),
            Center(child: Text('post', style: TextStyle(fontFamily: 'Ubuntu'))),
          ]),
        ));
  }
}

class Post extends StatelessWidget {
  @override
  build(BuildContext context) {
    return Container(child: Text("Hello"), height: 300.0);
  }
}
