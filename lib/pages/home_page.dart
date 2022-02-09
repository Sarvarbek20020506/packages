import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
static const String id="home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Packages"),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(child:Center(
              child: Text('welcome',style: TextStyle(fontSize: 25),).tr(),
            )),
            Row(
              children: [
                Expanded(
                    child:FlatButton(
                      onPressed: (){
                        context.locale=const Locale('en','US');
                      },
                      color: Colors.amber,
                      child: Text("English",),
                    ),
                ),
                SizedBox(width: 10,),
                Expanded(
                    child:FlatButton(
                      onPressed: (){
                        context.locale=const Locale('uz','UZ');
                      },
                      color: Colors.blue,
                      child: Text("Uzbek",),
                    ),
                ),
                SizedBox(width: 10,),
                Expanded(
                    child:FlatButton(
                      onPressed: (){
                        context.locale=const Locale('ru','RU');
                      },
                      color: Colors.red,
                      child: Text("Russian",textAlign: TextAlign.center,),
                    ),
                ),
                SizedBox(width: 10,),
                Expanded(
                    child:FlatButton(
                      onPressed: (){
                        context.locale=const Locale('fr','FR');
                      },
                      color: Colors.green,
                      child: Text("French",textAlign: TextAlign.center,),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
