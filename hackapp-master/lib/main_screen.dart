import 'package:flutter/material.dart';
import 'package:fluttercookie/bottom_bar.dart';
import 'package:fluttercookie/books.dart';
import 'package:fluttercookie/furniture.dart';
import 'package:fluttercookie/gadgets.dart';
import 'package:fluttercookie/lost_found.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
        // onPressed: () {},
        // ),
        title: Text('College Thrift',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFC88D67))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20.0, right: 20),
        children: <Widget>[
          SizedBox(height: 15.0),
          GestureDetector(onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LostFound()),
                    );
                  },
          child: Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(color: Color(0xFFF17532),
            borderRadius:BorderRadius.all(Radius.circular(50)) ),
            child: Text('Lost anything, Click Here!',
            textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 20.0,
                  color: Colors.white)
                  )
                  )
                  ),
          SizedBox(height: 15.0),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Color(0xFFC88D67),
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 45.0),
              unselectedLabelColor: Color(0xFFCDCDCD),
              tabs: [
                Tab(
                  child: Text('Books',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Furniture',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Gadgets',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                )
              ]),
          Container(
              height: MediaQuery.of(context).size.height - 50.0,
              width: double.infinity,
              child: TabBarView(controller: _tabController, children: [
                Books(),
                Furniture(),
                Gadgets(),
              ]))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.add)
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
