import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: UserId(),
));

class UserId extends StatefulWidget {
  @override
  State<UserId> createState() => _UserIdState();
}

class _UserIdState extends State<UserId> {

  int gangsterPoints = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Friend Identifier'),
        centerTitle: true,
        backgroundColor: Colors.black38,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/myprofile.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.white24,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox (height: 10.0),
            Text(
              'Louis',
              style: TextStyle(
                color: Colors.lime,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox (height: 30.0),
            Text(
              'Gangster points',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox (height: 10.0),
            Text(
              '$gangsterPoints',
              style: TextStyle(
                color: Colors.lime,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox (height: 30.0),
          Row(
            children: [
              Icon(
                Icons.email_outlined,
                color: Colors.white,
              ),
              SizedBox (width: 10.0),
              Text(
                  'info@gangster.com',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1.0,
                  fontSize: 18.0,
                ),
              )
            ],
          ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            gangsterPoints += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.lime,
      ),
    );
  }
}
