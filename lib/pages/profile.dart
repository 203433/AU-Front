import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: <Widget>[
          Card(
            margin: const EdgeInsets.only(top: 20.0),
            child: SizedBox(
                height: 170.0,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        "Milenium Day",
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),
                      Text("1,000 exp",
                          style: TextStyle(color: Colors.grey, fontSize: 22))
                    ],
                  ),
                )),
          ),
          Container(
            padding: const EdgeInsets.only(top: 15.0),
            height: 400,
            alignment: Alignment.topCenter,
            child: const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2021/06/vander-films-apvb8kmih5w-unsplash-scaled.jpeg?fit=1200%2C900&quality=60&strip=all&ssl=1%27%27'),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            label: 'Save',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.route),
            label: 'Route',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'User',
          ),
        ],
      ),
    );
  }
}
