import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[200],
        title: Text("Home"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              trailing: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              trailing: Icon(Icons.info),
              title: Text("About"),
            ),
            ListTile(
              trailing: Icon(Icons.cake),
              title: Text("what's cooking"),
            ),
            ListTile(
              trailing: Icon(Icons.local_bar),
              title: Text("what's coming"),
            ),
            ListTile(
              trailing: Icon(Icons.contacts),
              title: Text("Contact us"),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/BG.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: <Widget>[
            GridView.count(
              shrinkWrap: true,
              primary: true,
              crossAxisCount: 2,
              children: <Widget>[
                Card(
                  child: RaisedButton(
                    onPressed: null,
                    child: Text("About"),
                  ),
                ),
                Card(
                  child: RaisedButton(
                    onPressed: null,
                    child: Text("contact us"),
                  ),
                ),
                Card(
                  child: RaisedButton(
                    onPressed: null,
                    child: Text("book"),
                  ),
                ),
                Card(
                  child: RaisedButton(
                    onPressed: null,
                    child: Text("whats cooking"),
                  ),
                ),
                Card(
                  child: RaisedButton(
                    onPressed: null,
                    child: Text("whats new"),
                  ),
                ),
                Card(
                  child: RaisedButton(
                    onPressed: null,
                    child: Text("review"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 300,
                height: 100,
                child: Card(
                  child: RaisedButton(
                    color: Colors.grey,
                    child: Text("exit"),
                    onPressed: () {},
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
