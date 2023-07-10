import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Screen'),
      ),
      body: buildProfile(),
    );
  }

  Padding buildProfile() {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildImageProfile(),
          buildNameProfile(),
          buildDivider(),
          buildEmailProfile(),
          buildPhoneProfile()
        ],
      ),
    );
  }

  Padding buildDivider() {
    return const Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Divider(
        thickness: 2,
        height: 2,
        color: Colors.lightBlue,
      ),
    );
  }

  Padding buildPhoneProfile() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: const [
          Icon(
            Icons.call,
            color: Colors.lightBlue,
            size: 50,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "089-3456780",
          )
        ],
      ),
    );
  }

  Padding buildEmailProfile() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: const [
          Icon(
            Icons.mail_outline,
            color: Colors.lightBlue,
            size: 50,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "pattaraporn.w@psu.ac.th",
          )
        ],
      ),
    );
  }

  Padding buildNameProfile() {
    return const Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Text(
        "Pattaraporn Warintarawej",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Padding buildImageProfile() {
    return const Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Image(
        image: AssetImage("assets/images/profile.png"),
        width: 200,
        fit: BoxFit.cover,
      ),
    );
  }
}
