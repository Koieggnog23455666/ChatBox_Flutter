import 'package:bmi/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

var data=[{
  'name':'krishna',
  'mobnum':'7891226914',
  'unread':'4'
},
  {
    'name':'krishna',
    'mobnum':'7891226914',
    'unread':'4'
  },{
    'name':'krishna',
    'mobnum':'7891226914',
    'unread':'4'
  },{
    'name':'krishna',
    'mobnum':'7891226914',
    'unread':'4'
  },{
    'name':'krishna',
    'mobnum':'7891226914',
    'unread':'4'
  },{
    'name':'krishna',
    'mobnum':'7891226914',
    'unread':'4'
  },{
    'name':'krishna',
    'mobnum':'7891226914',
    'unread':'4'
  },{
    'name':'krishna',
    'mobnum':'7891226914',
    'unread':'4'
  },{
    'name':'krishna',
    'mobnum':'7891226914',
    'unread':'4'
  }];

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
       child: ListView(
         children: data.map((value)  {
           return Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               decoration: BoxDecoration(
                 color: Colors.white60
                   ,
                 borderRadius: BorderRadius.circular(10)
               ),
               child: Center(child: ListTile(leading:Icon(Icons.person) ,title: Text(value['name'].toString(),style: TextStyle(fontFamily: 'Poppins'),),subtitle: Text(value['mobnum'].toString()),trailing: CircleAvatar(child: Text(value['unread'].toString(),style:TextStyle(fontFamily: 'Poppins',color: Colors.red))),)),
             ),
           );
         }).toList(),
       ),

     )
      );
  }
}
