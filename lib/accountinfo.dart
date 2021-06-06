import 'package:assignment_3/history.dart';
import 'package:assignment_3/productlist.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Center(
                child: Text(
              'Ecom App UI',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            )),
          ),
          body: Wrap(children: [
            Column(
              children: [
                Row(
                  children: [
                    Image(
                      image: AssetImage('assets/userlogo.png'),
                      width: 200,
                      height: 200,
                    ),
                    Column(
                      children: [
                        Container(
                            child: Text('Umer',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24))),
                        Container(
                          margin: EdgeInsets.only(left: 50),
                          child: Text(
                            'waqasumer30@gmail.com',
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'logout',
                              style: TextStyle(color: Colors.purple),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          'ACCOUNT INFORMATION',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ))),
                ListTile(
                  title: Text(
                    'Full Name',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Umer Waqas'),
                  trailing: Icon(Icons.create_rounded),
                ),
                ListTile(
                  title: Text(
                    'Email',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('waqasumer30@gmail.com'),
                ),
                ListTile(
                  title: Text(
                    'Phone',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('+92300123456'),
                ),
                ListTile(
                  title: Text(
                    'Address',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Defence, Karachi'),
                ),
                ListTile(
                  title: Text(
                    'Gender',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Male'),
                ),
                ListTile(
                  title: Text(
                    'Date of Birth',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('September 09, 1996'),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 100),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductList()));
                          },
                          child: Text('Product List'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.indigo,
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => History()));
                        },
                        child: Text('History'),
                        style: ElevatedButton.styleFrom(primary: Colors.indigo),
                      ),
                    )
                  ],
                )
              ],
            )
          ])),
    );
  }
}
