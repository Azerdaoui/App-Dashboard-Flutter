import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Awesome dashboard !'),
        backgroundColor: Color.fromRGBO(41,58,84,1),
      ),
      body: new Container(
        padding: EdgeInsets.all(20),
        color: Color.fromRGBO(250,250,250, 1),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            makeCardDashboarItem("Home", Icons.home),
            makeCardDashboarItem("Messages", Icons.message),
            makeCardDashboarItem("Offers", Icons.local_offer),
            makeCardDashboarItem("Charts", Icons.insert_chart),
            makeCardDashboarItem("Profile", Icons.person),
            makeCardDashboarItem("Settings", Icons.settings),
            makeCardDashboarItem("Sign out", Icons.exit_to_app),
          ],
        ),
      ),
    );
  }
  
  Card makeCardDashboarItem(String title, IconData icon){
    return new Card(
      margin: EdgeInsets.all(10),
      child: Container(
        color: Color.fromRGBO(224,235,244, 1),
        child: InkWell(
          onTap: () {},
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 25),
              Center(
                child: Icon(
                  icon,
                  size: 40,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  title, 
                  style: new TextStyle(fontSize: 18, fontStyle: FontStyle.normal, fontWeight: FontWeight.w600, color: Colors.black)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}