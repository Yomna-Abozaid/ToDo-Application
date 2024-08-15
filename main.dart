import 'package:flutter/material.dart';
import 'package:untitled29/add.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



 @override
    Widget build(BuildContext context) {
      DateTime now = DateTime.now();



      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(backgroundColor: Colors.white,
drawer: Drawer(),
            appBar: AppBar(backgroundColor: Colors.blue,title: Text('Tasker',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
            )
            ,floatingActionButton: FloatingActionButton(backgroundColor: Colors.blue,foregroundColor: Colors.white,
            child: Icon(Icons.add,),onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Add())),
          ) ,body: Column(
              children:[
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(12),width: double.infinity,height: 150,color: Colors.blue,child: Row(
                  children:[
                    Text('21'
                     ,
                      style: const TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text(
                          'AUG',
                          style:  TextStyle(color: Colors.white,fontSize: 15),
                        ),
                        Text(
                          '2019',
                          style:  TextStyle(color: Colors.white,fontSize: 15),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Text(
                      'WEDNESDAY',
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                ),
                  ],
                ),
                )
              






    );
  }}


