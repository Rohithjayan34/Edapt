import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Tabs Demo';
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {

  TabController _tabController;

  bool pressAttention = false;
  bool pressAttention1 = false;
  bool pressAttention2 = false;
  bool pressAttention3 = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: new Scaffold(
          bottomNavigationBar: new Material(
            color: Colors.blue,
            child: new TabBar(
              controller: _tabController,
              tabs: [
                Tab(text: 'Case 1'),
                Tab(text: 'Case 2'),
              ],
            ),
          ),
          body: TabBarView(

            controller: _tabController,
            children: [

              Card(
                child: Column(


                  children: <Widget>[
                    SafeArea(

                      child: Container(

                        child: Align(),
                      ),
                    ),


                    Align(
                      alignment: Alignment(-0.8, 0.9),
                      child: Text('Case 1 ', style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),),
                      heightFactor: 3.0,
                    ),




                     SizedBox(height: 150),
                    RaisedButton(

                        onPressed: () =>
                            setState(() => pressAttention = !pressAttention),
                        child: const Text(
                            'Red',
                            style: TextStyle(fontSize: 20)
                        ),
                        color: pressAttention ? Colors.red : Colors.white70,

                    ),

                    new SizedBox(height: 30),
                    RaisedButton(
                        onPressed: () =>
                            setState(() => pressAttention1 = !pressAttention1),
                        child: const Text(
                            'Green',
                            style: TextStyle(fontSize: 20)
                        ),
                        color: pressAttention1 ? Colors.green : Colors.white70,
                    ),

                    const SizedBox(height: 30),
                    RaisedButton(
                        onPressed: () =>
                            setState(() => pressAttention2 = !pressAttention2),
                        child: const Text(
                            'Blue',
                            style: TextStyle(fontSize: 20)
                        ),
                        color: pressAttention2 ? Colors.blue : Colors.white70,
                    ),
                    const SizedBox(height: 30),
                    RaisedButton(
                        onPressed: () =>
                            setState(() => pressAttention3 = !pressAttention3),
                        child: const Text(
                            'Yellow',
                            style: TextStyle(fontSize: 20)
                        ),
                        color: pressAttention3 ? Colors.yellow : Colors.white70,
                    ),
                  ],
                ),
              ),


              Card(

                child: Column(

                    children: <Widget>[
                      SafeArea(
                        child: Container(

                          child: Align(),
                        ),
                      ),

                      Align(
                        alignment: Alignment(-0.8, 0.9),
                        child: Text('Case 2 ', style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),),
                        heightFactor: 3.0,
                      ),

                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[

                            const SizedBox(height: 250),
                            RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RedRoute()),
                                );
                              },
                              child: const Text(
                                  'Red',
                                  style: TextStyle(fontSize: 20)
                              ),
                            ),


                             const SizedBox(height: 30),
                            RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => GreenRoute()),
                                );

                              },
                              child: const Text(
                                  'Green',
                                  style: TextStyle(fontSize: 20)
                              ),
                            ),
                          ]),
                      Column(

                        children: <Widget>[
                          const SizedBox(height: 1),

                          RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BlueRoute()),
                              );
                            },
                            child: const Text(
                                'Blue',
                                style: TextStyle(fontSize: 20)
                            ),
                          ),

                        ],
                      ),

                    ]),
              ),
            ],
          ),
        ));
  }
}

  class RedRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.red,
    appBar: AppBar(
      backgroundColor: Colors.white70,
  ),
   body: SafeArea(

     child: Text('Red ', style: TextStyle(
         fontSize: 25.0, fontWeight: FontWeight.bold,color: Colors.white),),
  ),


  );
  }
}
   class GreenRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.white70,
      ),
      body: SafeArea(
        child: Text('Green ', style: TextStyle(
            fontSize: 25.0, fontWeight: FontWeight.bold,color: Colors.white),),
        ),

    );
  }
}

  class BlueRoute extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.white70
      ),
      body: SafeArea(
        child: Text('Blue ', style: TextStyle(
            fontSize: 25.0, fontWeight: FontWeight.bold,color: Colors.white),),
        ),

    );
  }
}
