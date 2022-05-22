import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:untitled3/about.dart';

void main() {
  runApp(Center(
    child: Center(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'First App',
        home:WelcomeScreen (),
      ),
    ),
  ));
}

class WelcomeScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<WelcomeScreen> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.info_outline,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (ctx) =>   About(),
              ),
            );
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.brown,
        title: Text(
          "",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),

      //drawer: _buildMyDrawer(context),
      body:  buildMm(context),

    );
  }
  /* Widget _buildMyDrawer(context) {
    return Drawer(
      child: ListView(
        children: [


          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (ctx) => const About(),
                ),
              );
            },
            leading: Icon(
              Icons.info,
              size: 30,
              color:Colors.pinkAccent,
            ),
            title: const Text("About Page"),
          ),


        ],
      ),
    );
  }
*/
  Widget buildMm(BuildContext context) {
    return Scaffold(
        body: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Container(
                    child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top:50,left: 110 ,right: 100),
                            child:
                            ListTile(
                              title: Text('  ROBOT   VACUUM ',
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 170),
                            child: Row(
                                children: [
                                  CircleAvatar(
                                    maxRadius: 20,
                                    backgroundColor: Colors.white,
                                    child:CircleAvatar(
                                      backgroundColor: Colors.white,
                                      maxRadius: 50,

                                      backgroundImage: AssetImage('img/m.jpeg'),

                                    ) ,),]),),
                          SizedBox(
                            height:300 ,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 100),
                            child:
                            ListTile(
                              title: Text(' Power',
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 110),
                            child: Row(
                                children: [
                                  CircleAvatar(
                                    maxRadius: 40,
                                    backgroundColor: Colors.white,
                                    child:CircleAvatar(
                                      backgroundColor: Colors.white,
                                      maxRadius: 50,
                                      backgroundImage: AssetImage('img/b.jpeg'),

                                    ) ,)
                                  ,
                                  Container(
                                      padding:EdgeInsets.symmetric(horizontal: 10),
                                      child:Column(
                                        children: [
                                          FlutterSwitch(
                                              width: 70.0,
                                              height: 50.0,
                                              activeColor: Colors.green,
                                              valueFontSize: 25.0,
                                              toggleSize: 25.0,
                                              value: status,
                                              borderRadius: 22.0,
                                              showOnOff: true,
                                              onToggle: (val) {
                                                setState(() {
                                                  status = val;
                                                  print(status);
                                                });})

                                        ],
                                      )
                                  ),
                                ]),
                          ),
                        ]),),

                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('img/www.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),),
            ]
        )
    );
  }
  }
