import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController from=TextEditingController();
  TextEditingController to=TextEditingController();

  void swipe(fromValue,toValue){
    var fromVal=fromValue;
    from.text=toValue;
    to.text=fromVal;
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: from,
                decoration: InputDecoration(
                  hintText: 'From',
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black))
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  swipe(from.text,to.text);
                },
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black)
                    ),
                    child: Icon(Icons.swap_horiz)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: to,
                decoration: InputDecoration(
                    hintText: 'To',
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black))
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
