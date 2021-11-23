import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final imageMercu = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(50.0),
        child: CircleAvatar(
          radius: 82.0,
          //backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/logomercubuana.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Tugas Besar 1',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit condimentum mauris id tempor. Praesent eu commodo lacus. Praesent eget mi sed libero eleifend tempor. Sed at fringilla ipsum. Duis malesuada feugiat urna vitae convallis. Aliquam eu libero arcu.',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.green,
          Colors.lightGreenAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[
          imageMercu,
          welcome,
          Text(
            "Pemrograman mobile programming",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15,
                color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.verified_user),
                  Text('Kampus Meruya')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.mail),
                  Text('E-Mail : info@mercubuana.ac.id')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on),
                  Text('Alamat : Jl. Meruya Selatan No. 1')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Kembangan - Jakarta Barat 11650')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.phone), Text('Phone : +62 21 5840816')],
              ) ],
          ) ],
      ), );
    return Scaffold( body: body,
    ); }
}