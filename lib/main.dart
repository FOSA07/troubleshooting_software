import 'package:example_flutter/writer.dart';
import 'package:flutter/material.dart';
import 'action.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String question="choose an action in the preference page";
  late int question_counter;
  late int page_counter;
  bool actVisibility=false;
  bool resVisibility=false;
  late int number;
  String header="";
  var question_numbers=[-2,5,3,-3,6,9,-4,-7,-9,-13,13,11,-11,14];
  final nk=1;


  bool switchs=false;
  int butTabIndex=0;

  final _kt=<Tab>[
    const Tab(icon: Icon(Icons.home),text: 'Home',key: ValueKey(1),),
    const Tab(icon: Icon(Icons.room_preferences),text: 'Preference'),
  ];

  final _ct=<Tab>[
    const Tab(icon: Icon(Icons.chat),text: 'Chat',),
  ];

  final _st=<Tab>[
    const Tab(icon: Icon(Icons.settings),text: 'Settings',),
  ];

  get _ktView => <Widget>[
        Container(

          child: Column(key: ValueKey('1'),
            children: [
              Visibility(visible: resVisibility,child: Text(header)),
              Expanded(
                flex:  1,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Visibility(
                      visible: resVisibility,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox( child: ElevatedButton(onPressed: () {
                            setState(() {
                              actVisibility=true;
                              question_counter = 0;
                              if(page_counter==1) {
                                question =
                                Control(question_counter).operation()!;
                              }else if(page_counter==2) {
                                question =
                                Control(question_counter).MBOperation()!;
                              }
                              val=_kt;
                              view=_ktView;
                              butTabIndex=0;
                              meth(val);
                            });
                          }, child: Text('Reset'),)),
                          SizedBox( child: IconButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>const Writer()));
                          }, icon: Icon(Icons.read_more_sharp),color: Colors.blue[800],)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(question,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Visibility(
                  visible: actVisibility,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FloatingActionButton(onPressed: (){
                        setState(() {
                          stateChange(1,page_counter);
                          val=_kt;
                          view=_ktView;
                          butTabIndex=0;
                          meth(val);
                        });
                      },child: Text('Yes'),backgroundColor: Colors.blue[800],),
                      FloatingActionButton(backgroundColor: Colors.blue[800],onPressed: (){
                        stateChange(2,page_counter);
                        print('$question_counter');
                        val=_kt;
                        view=_ktView;
                        butTabIndex=0;
                        meth(val);
                      },child: Text('No')),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),


        Padding(key: const ValueKey('2'),
          padding: const EdgeInsets.all(20.0),
            child: ListView(
              children:  [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  child: Card(
                    child: ListTile(
                        tileColor: Colors.blue[800],
                        title: Text('Power Supply TroubleShooting',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      onTap: (){
                          page_counter=1;
                          setState(() {
                            resVisibility=true;
                            actVisibility=true;
                            question_counter=0;
                            question=Control(question_counter).operation()!;
                            val=_kt;
                            view=_ktView;
                            butTabIndex=0;
                            meth(val);
                            header="PowerSupply troubleshooting";
                            ValueKey('1');
                          });
                      },
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  child:Card(child: ListTile(tileColor: Colors.blue[800], title: const Text('MotherBoard TroubleShooting',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),onTap: (){
                    page_counter=2;
                    setState(() {
                      resVisibility=true;
                      actVisibility=true;
                      question_counter=0;
                      question=Control(question_counter).MBOperation()!;
                      val=_kt;
                      view=_ktView;
                      butTabIndex=0;
                      meth(val);
                      header="MotherBoard troubleshooting";
                    });
                  },)),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  child: Card(child: ListTile(tileColor: Colors.blue[800],title: Text('Video Card Problem',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),onTap: (){
                    page_counter=3;
                  },)),
                ),
              ],
            ),
          ),
    ];

  final _ctView=<Widget>[
    Column(
      children: [
        Expanded(
          flex: 1,
          child: TextFormField(
            keyboardType: TextInputType.multiline,
            maxLines: null,
            minLines: null,
            expands: true,
            decoration: InputDecoration(
              filled: true,
              border: UnderlineInputBorder(),
            ),
          ),
        ),
        TextField(
          minLines: 1,
          maxLines: 5,
          decoration: InputDecoration(
            filled: true,
            border: UnderlineInputBorder(),
            hintText: 'Type a message',
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: (){}, child:
                Text('Send',
                  style: TextStyle(
                  ),
                )
              ,),
          ),
        ),
      ],
    )

  ];

  final _stView=<Widget>[
    Center(key: ValueKey('1'), child: Text('1'),),
  ];

  void stateChange(int num,int choice){
    setState(() {
      if (choice == 1) {
        if (num == 1) {
          question = Control(question_counter).yes()!;
          number = Control(question_counter).counter(question_counter, 1,page_counter);
          question_counter = number;
        } else if (num == 2) {
          question = Control(question_counter).no()!;
          number = Control(question_counter).counter(question_counter, 2,page_counter);
          question_counter = number;
        }
        for (int a = 0; a < question_numbers.length; a++) {
          if (question_counter == question_numbers.elementAt(a)) {
            actVisibility = false;
          }
        }
      }else if (choice == 2) {
        var stopNumbers=[-2,-4,-6,-8,9,10,-10,-15,-14,-11,-3,-12,-5,7,];
          if (num == 1) {
            question = Control(question_counter).MByes()!;
            number = Control(question_counter).counter(question_counter, 1, page_counter);
            question_counter = number;
          } else if (num == 2) {
            question = Control(question_counter).MBno()!;
            number = Control(question_counter).counter(question_counter, 2,page_counter);
            question_counter = number;
          }
          for (int a = 0; a < stopNumbers.length; a++) {
            if (question_counter == stopNumbers.elementAt(a)) {
              actVisibility = false;
            }
          }
      }
    });
  }

  var viewer=[];

  List<Widget> val=<Tab>[];
  var view=<Widget>[];

  List<Widget> meth(mm){
    List<Widget> vv=<Tab>[];
    vv=mm;
    return vv;
  }

  int count=0;

  @override
  Widget build(BuildContext context) {
    if(count==0) {
      view = _ktView;
      val=_kt;
      count=2;
    }

    final GlobalKey<ScaffoldState> _skey=GlobalKey<ScaffoldState>();

    return DefaultTabController(length: view.length, child:Scaffold(
      key: _skey,
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        leading: IconButton(icon: Icon(Icons.menu),
          onPressed: () {
            _skey.currentState?.openDrawer();
          },
        ),
        title: Text('TROUBLESHOOTING'),
        actions: [
          Switch(value: switchs, onChanged: (bool newSwitchs) {
            setState(() => this.switchs = newSwitchs);
          }),
          SizedBox(width: 10.0,),
          IconButton(onPressed: (){
            setState(() {
              val=_st;
              view=_stView;
              butTabIndex=2;
              meth(val);
            });
          },icon:Icon(Icons.settings)),
          SizedBox(width: 20.0,),
        ],
        bottom: TabBar(
          // tabs: _kt,
          tabs: val,
        ),
      ),
      body: TabBarView(
        children: view,
      ),
    drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.all(0.0),
        children: [
          DrawerHeader(child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Row(
              children: [
                IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
                  Navigator.pop(context);
                },),
                Text('TroubleShooting Software'),
              ],
            ),
          )),
          ListTile(
            leading: Icon(Icons.engineering),
            title: Text('Power Supply TroubleShooting'),
             onTap: (){
              page_counter=1;
              setState(() {
                resVisibility=true;
                actVisibility=true;
                question_counter=0;
                question=Control(question_counter).operation()!;
                val=_kt;
                view=_ktView;
                butTabIndex=0;
                meth(val);
                header="PowerSupply Troubleshooting";
                Navigator.pop(context);
              });
             },
          ),
          ListTile(
            leading: Icon(Icons.engineering),
            title: Text('MotherBoard TroubleShooting'),
            onTap: (){
              page_counter=2;
              Navigator.pop(context);
              setState(() {
                resVisibility=true;
                actVisibility=true;
                question_counter=0;
                question=Control(question_counter).MBOperation()!;
                val=_kt;
                view=_ktView;
                butTabIndex=0;
                meth(val);
                header="MotherBoard Troubleshooting";
              });
            },
          ),
          ListTile(
            leading: Icon(Icons.engineering),
            title: Text('Video Card Problem'),
            onTap: (){
              page_counter=3;
              Navigator.pop(context);
              setState(() {
                val=_kt;
                view=_ktView;
                butTabIndex=0;
                meth(val);
              });
            },
          ),
          ListTile(
            leading: Icon(Icons.messenger),
            title: Text('Messenger'),
            onTap: (){
              Navigator.pop(context);
              setState(() {
                val=_ct;
                view=_ctView;
                butTabIndex=1;
              });
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: (){
              Navigator.pop(context);
              setState(() {
                val=_st;
                view=_stView;
                butTabIndex=2;
                meth(val);
              });
            },
          ),
          ListTile(
            leading: Icon(Icons.rate_review_outlined),
            title: Text('Rate us'),
            onTap: (){
              Navigator.pop(context);
              setState(() {

              });
            },
          ),
          ListTile(
            leading: Icon(Icons.account_box_outlined),
            title: Text('About'),
            onTap: (){
              Navigator.pop(context);
              setState(() {

              });
            },
          ),
        ],
      ),
    ),
    bottomNavigationBar: BottomNavigationBar(
  // backgroundColor: Colors.blue,
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home', backgroundColor: Colors.blue),
      BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat',backgroundColor: Colors.blue,),
      BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings', backgroundColor: Colors.blue),
    ],
    type: BottomNavigationBarType.fixed,
    currentIndex: butTabIndex,
    onTap: (int index){
      setState((){
        butTabIndex=index;
        print(index);
        if(index==0){
          val=_kt;
          view=_ktView;
        }else if(index==1){
          val=_ct;
          view=_ctView;
        }else if(index==2){
          val=_st;
          view=_stView;
        }
        meth(val);
        // vv=_kt;
      });
    },
      selectedItemColor: Colors.blue[800],
    ),

    //   bottomNavigationBar: DefaultTabController(length: 3,child:
    //   Material(
    //     color: Colors.blue,
    //     child: TabBar(
    //       tabs: [
    //         Tab(icon:Icon(Icons.home), text: 'Home',),
    //         Tab(icon:Icon(Icons.chat), text: 'Chat',),
    //         Tab(icon:Icon(Icons.settings), text: 'Settings',),
    //       ],
    //     ),
    //   ),
    // ),
    ),
    );
  }
}
// bottomNavigationBar: BottomNavigationBar(
//   // backgroundColor: Colors.blue,
//   items: [
//     BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home', backgroundColor: Colors.blue),
//     BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat',backgroundColor: Colors.blue,),
//     // BottomNavigationBarItem(icon: Icon(Icons.room_preferences),label: 'Preference', backgroundColor: Colors.blue),
//     BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings', backgroundColor: Colors.blue),
//   ],
//     onTap: (int index){
//       setState((){
//         butTabIndex=index;
//       });
//     },
//   selectedItemColor: Colors.blue,
// ),

class NewClass{

  late int dede;
}