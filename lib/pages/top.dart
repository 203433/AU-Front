import 'package:flutter/material.dart';
import 'package:frontend/pages/profile.dart';
import 'package:frontend/pages/widgetsProfile.dart';

class Top extends StatelessWidget {
  const Top({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SizedBox(
          width: double.infinity,
          child: ListView(
            children: <Widget>[
              Navigation(
                index: '1',
              ),
            ],
          )),
      bottomNavigationBar: navigationExample(),
    );
  }
}

class TableUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 365,
      height: 400,
      child: ListView(
        padding: const EdgeInsets.all(8),
        children: const <Widget>[
          TopUser(
              image:
                  'https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2021/06/vander-films-apvb8kmih5w-unsplash-scaled.jpeg?fit=1200%2C900&quality=60&strip=all&ssl=1%27%27',
              name: "MilleniumDay",
              experience: "1300"),
          SizedBox(
            height: 15,
          ),
          TopUser(
              image:
                  'https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2021/06/vander-films-apvb8kmih5w-unsplash-scaled.jpeg?fit=1200%2C900&quality=60&strip=all&ssl=1%27%27',
              name: "RobinJunior",
              experience: "1200"),
          SizedBox(
            height: 15,
          ),
          TopUser(
              image:
                  'https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2021/06/vander-films-apvb8kmih5w-unsplash-scaled.jpeg?fit=1200%2C900&quality=60&strip=all&ssl=1%27%27',
              name: "Adam Velrod",
              experience: "1000"),
          SizedBox(
            height: 15,
          ),
          TopUser(
              image:
                  'https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2021/06/vander-films-apvb8kmih5w-unsplash-scaled.jpeg?fit=1200%2C900&quality=60&strip=all&ssl=1%27%27',
              name: "Gabo Downloading",
              experience: "900"),
          SizedBox(
            height: 15,
          ),
          TopUser(
              image:
                  'https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2021/06/vander-films-apvb8kmih5w-unsplash-scaled.jpeg?fit=1200%2C900&quality=60&strip=all&ssl=1%27%27',
              name: "Kimberly PowerRanger",
              experience: "900"),
          SizedBox(
            height: 15,
          ),
          TopUser(
              image:
                  'https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2021/06/vander-films-apvb8kmih5w-unsplash-scaled.jpeg?fit=1200%2C900&quality=60&strip=all&ssl=1%27%27',
              name: "Voloban del Tec",
              experience: "800"),
        ],
      ),
    );
  }
}

class TopUser extends StatelessWidget {
  const TopUser(
      {Key? key,
      required this.image,
      required this.name,
      required this.experience})
      : super(key: key);
  final String image;
  final String name;
  final String experience;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 120,
          height: 65,
          child: CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(image),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              name,
              style: TextStyle(color: Colors.black),
            ),
            Text(
              experience + " XP",
              style: TextStyle(color: Colors.black.withOpacity(0.3)),
            ),
          ],
        )
      ],
    );
  }
}

class Navigation extends StatelessWidget {
  const Navigation({Key? key, required this.index}) : super(key: key);
  final String index;
  @override
  Widget build(BuildContext context) {
    if (index == "1") {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 30,
            alignment: Alignment.topRight,
            child: Icon(Icons.settings_outlined),
          ),
          profilePhoto(
            name: "MilleniumDayy",
          ),
          SizedBox(
            height: 20,
          ),
          navBarProfile(),
          SizedBox(
            height: 40,
          ),
          //TableUser(),
          //Navigation()
          tableBadges()
        ],
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 30,
          alignment: Alignment.topRight,
          child: Icon(Icons.settings_outlined),
        ),
        profilePhoto(
          name: "MilleniumDayy",
        ),
        SizedBox(
          height: 20,
        ),
        navBarProfile(),
        SizedBox(
          height: 40,
        ),
        TableUser(),
        //Navigation()
        //tableBadges()
      ],
    );
  }
}

                  // profilePhoto(
                  //   name: "MilleniumDayy",
                  // ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  // navBarProfile(),
                  // SizedBox(
                  //   height: 40,
                  // ),

                  //TableUser(),
                  //Navigation()
                  //tableBadges()