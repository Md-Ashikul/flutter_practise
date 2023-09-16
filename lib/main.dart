import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Homescreen( ),
      title: "Smart App",
    );
  }
}

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        leading: Icon(
          Icons.add_business,
          color: Colors.deepPurple,
          size: 32,
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8) ,
                      )
                  ),
                  onLongPress:(){
                    print("The button is long pressed");
                  },
                  onPressed: (){
                    print("The button is working");
                  }, child: Text("About You")),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Text(
                "I am Ashikul Islam",
                style: TextStyle(
                  color: Colors.indigo,
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: RichText(text: TextSpan(
                  text: "I am ",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30 ,
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    TextSpan(
                        text: "Bangladeshi",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                        )
                    )
                  ]
              )
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 13),
              decoration: BoxDecoration(
                color: Colors.cyan[100],
                border: Border.all(color: Colors.black,width: 1),
                //borderRadius: BorderRadius.circular(10),
                borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
                //shape: BoxShape.circle ,
              ),
              child: Text(
                "Bangladesh is a riverine country situated in South-East Asia. It is a beautiful country with the sweetest and most courteous people among the whole world.",
                style: TextStyle(
                    fontSize: 16 ,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            TextButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                ),
                onPressed: () {
                  print("Willing to come in");
                },child: Text("Come and Visit",
              style: TextStyle(color: Colors.white),)),
            OutlinedButton(onPressed: (){}, child: Text("contact me")),
            IconButton(onPressed: (){}, icon: Icon(Icons.email)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: TextEditingController(),
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  hintText: ("Write your email."),
                  hintStyle: TextStyle(
                    color: Colors.white54 ,
                  ),
                  fillColor: Colors.blueGrey ,
                  filled: true ,
                  suffixIcon: Icon(Icons.check_circle_outline,color: Colors.white),
                  label: Text("Enter your email Address."),
                  labelStyle: TextStyle(
                    color: Colors.pink ,
                  ),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                  ),
                ),
              ),
            ),
            SizedBox(width: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                controller: TextEditingController(),
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  hintText: ("Write your password."),
                  hintStyle: TextStyle(
                    color: Colors.white54 ,
                  ),
                  fillColor: Colors.blueGrey ,
                  filled: true ,
                  suffixIcon: Icon(Icons.password_outlined,color: Colors.white),
                  label: Text("Enter your password."),
                  labelStyle: TextStyle(
                    color: Colors.pink ,
                  ),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                  ),
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }

}


