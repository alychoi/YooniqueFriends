import 'package:flutter/material.dart';

void main() { // required function in main.dart
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _Turquoise = Color.fromRGBO(14,186,162,1.0);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: _Turquoise,
        ),
        backgroundColor: const Color.fromRGBO(253,210,165,1.0),
        body: CustomScrollView(
                slivers: <Widget>[
                //   SliverToBoxAdapter(
                //   child: Text("Text"),
                // ),
                SliverList(
                  delegate: SliverChildListDelegate( [
                    Container(
                      height: 100.0,
                      child: _buildIntro(),
                    ),
                    Container(
                      height: 200.0,
                      child: _buildChar(),
                    ),
                  ]),
                ),
                // SliverToBoxAdapter(
                //   child: Text("Text"),
                // ),
              ],
            ),
        // Container(
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       Column(
        //         children: <Widget>[_buildIntro()],
        //       ),
        //       Column(
        //         children: <Widget>[_buildChar()],
        //       ),
        //     ],
        //   )
        // )
      ),
    );
  }
}

Widget _buildIntro() {
  return Center(
    child: Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              bottom: 15,
            ),
            child: Text(
              'Choose your tutor',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildChar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/panda.png',
              width: 120,
            ),
            Text(
              'Petapand',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
      Expanded(
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/tiger.png',
              width: 120,
            ),
            Text(
              'Siba',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
      Expanded(
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/elephant.png',
              width: 120,
            ),
            Text(
              'Elle',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    ],
  );
}