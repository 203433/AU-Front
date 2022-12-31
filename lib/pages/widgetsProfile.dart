import 'package:flutter/material.dart';

class profilePhoto extends StatelessWidget {
  const profilePhoto({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(
              'https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2021/06/vander-films-apvb8kmih5w-unsplash-scaled.jpeg?fit=1200%2C900&quality=60&strip=all&ssl=1%27%27'),
        ),
        Text(
          name,
          style: TextStyle(fontSize: 26),
        ),
        Text("1,300 XP",
            style: TextStyle(fontSize: 20, color: Colors.grey[500]!)),
      ],
    );
  }
}

class navBarProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 365,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1,
          color: Colors.white60,
        ),
        borderRadius: BorderRadius.circular(25.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[800]!.withOpacity(0.29),
            offset: const Offset(-2, 3),
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed("/Navigator", arguments: '1');
            },
            child: navBarItem(
              name: "Insignias",
              color: Colors.black.withOpacity(0.3),
            ),
          ),
          navBarItem(
            name: "Top tuxmapers",
            color: Colors.black.withOpacity(0.3),
          ),
          Expanded(
            child: Container(
                height: 30,
                child: Center(
                    child: Text(
                  "Estadistica",
                  style: TextStyle(color: Colors.black.withOpacity(0.3)),
                ))),
          ),
        ],
      ),
    );
  }
}

class navBarItem extends StatelessWidget {
  const navBarItem({Key? key, required this.name, required this.color})
      : super(key: key);
  final String name;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          height: 30,
          decoration: const BoxDecoration(
            border: Border(
              right: BorderSide(
                color: Colors.grey,
                width: 2,
              ),
            ),
          ),
          child: Center(
              child: Text(
            name,
            style: TextStyle(color: color),
          ))),
    );
  }
}

class navigationExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
    );
  }
}
