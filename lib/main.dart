import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: const Text('mi card'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //profile Picture
              const CircleAvatar(
                radius: 100,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('images/mano.jpg'),
              ),
              //Name
              const Text(
                'Eman Gillani',
                style: TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              //Designation
              Text(
                'Future Developer',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5),
              ),
              const SizedBox(
                width: 10,
                child: Divider(
                  thickness: 5,
                  color: Colors.white,
                ),
              ),
              //  phone number
              const Card(
                margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                color: Colors.white,
                child: const Row(
                  children: [
                    //phone icon
                    Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),

                    const SizedBox(
                      width: 10,
                    ),
                    //  phone number
                    Text(
                      '+92 313 5613437',
                      style: TextStyle(color: Colors.teal),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              //Email
              const Card(
                margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'sesgillani@gmail.com',
                    style: TextStyle(color: Colors.teal),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
