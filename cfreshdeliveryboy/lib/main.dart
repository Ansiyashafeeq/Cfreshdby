import 'package:cfreshdeliveryboy/Accountdetails.dart';
import 'package:cfreshdeliveryboy/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: const  Cfresh()));
}

class Cfresh extends StatefulWidget {
  const Cfresh({Key? key}) : super(key: key);

  @override
  State<Cfresh> createState() => _CfreshState();
}

class _CfreshState extends State<Cfresh> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  height: 45,
                  width: 300,
                  child: TextField(
                    decoration:InputDecoration(hintText: 'username',label: Text('username',style: TextStyle(color: Colors.green),),enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.green),
                        borderRadius: BorderRadius.circular(10.0),),focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)) ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  height: 45,
                  width: 300,
                  child: TextField(
    decoration:InputDecoration(hintText: 'password',label: Text('password',style: TextStyle(color: Colors.green),),
      border: OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.green),
        borderRadius: BorderRadius.circular(10.0),) ,focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)))
                  ),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: 300,
                height: 40,
                child: ElevatedButton(onPressed:() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),);
    }, child: Text('Login'),
                style:  ElevatedButton.styleFrom(primary: Colors.green,),),
              ),

                ],

                )

        ),
      );

  }
}
