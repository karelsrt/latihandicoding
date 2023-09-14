import 'package:flutter/material.dart';
import 'package:latihandicoding/login.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil"),
        actions: [
          IconButton(
            onPressed: () async {
              bool confirm = false;
              await showDialog<void>(
                context: context,
                barrierDismissible: true,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Confirm'),
                    content: const SingleChildScrollView(
                      child: ListBody(
                        children: <Widget>[
                          Text('Akan Keluar Aplikasi'),
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[600],
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("No"),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                        ),
                        onPressed: () {
                          confirm = true;
                          Navigator.pop(context);
                        },
                        child: const Text("Yes"),
                      ),
                    ],
                  );
                },
              );

              if (confirm) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MyLogin()),
                );
              }
            },
            icon: const Icon(
              Icons.exit_to_app,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Profile",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 28.0,
                    backgroundImage: NetworkImage(
                      "https://i.ibb.co/PGv8ZzG/me.jpg",
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ALEX JHON",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        "1123222988999",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 28.0,
                      backgroundColor: Color(0xffB7DBC9),
                      child: Icon(
                        Icons.arrow_downward,
                        color: Colors.black,
                        size: 30.0,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Income",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Rp.0",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    CircleAvatar(
                      radius: 28.0,
                      backgroundColor: Color(0xffEECEB0),
                      child: Icon(
                        Icons.arrow_upward,
                        color: Colors.black,
                        size: 30.0,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Expense",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Rp.0",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Flow",
                style: TextStyle(
                  fontSize: 19.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Divider(
                color: Colors.black26,
                thickness: 1,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Balance",
                style: TextStyle(
                  fontSize: 19.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Divider(
                color: Colors.black26,
                thickness: 1,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Saved Card",
                style: TextStyle(
                  fontSize: 19.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Divider(
                color: Colors.black26,
                thickness: 1,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Promo Code",
                style: TextStyle(
                  fontSize: 19.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Divider(
                color: Colors.black26,
                thickness: 1,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Referal Code",
                style: TextStyle(
                  fontSize: 19.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Divider(
                color: Colors.black26,
                thickness: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
