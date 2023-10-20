import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});
  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  TextEditingController _fieldonecontroller = TextEditingController( ) ;
  TextEditingController _fieldtwocontroller = TextEditingController( ) ;
  GlobalKey<FormState> _formkey = GlobalKey<FormState>() ;
  double add=0.0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text("Sum APP"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                controller: _fieldonecontroller,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: 'Field1' ,
                ),
                validator: (String? value){
                  if (value?.isEmpty?? true) {
                    return "Enter legit value" ;
                  }
                  else {
                    return null ;
                  }
                },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: _fieldtwocontroller,
                decoration: InputDecoration(
                  hintText: 'Field2' ,
                ),
                validator: (String? value){
                  if (value?.isEmpty?? true) {
                    return "Enter legit value" ;
                  }
                  else {
                    return null ;
                  }
                },
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(onPressed: (){
                    if(_formkey.currentState!.validate()) {
                      double firstNumber = double.parse(_fieldonecontroller.text.trim()) ;
                      double secondNumber = double.parse(_fieldtwocontroller.text.trim()) ;
                      add = firstNumber+secondNumber ;
                      setState(() {
                        //_fieldonecontroller.clear() ;
                        //_fieldtwocontroller.clear() ;
                      });
                    }
                  }, icon: Icon(Icons.add), label: Text("Add"),),

                  ElevatedButton.icon(onPressed: (){
                    if(_formkey.currentState!.validate()) {
                      double firstNumber = double.parse(_fieldonecontroller.text.trim()) ;
                      double secondNumber = double.parse(_fieldtwocontroller.text.trim()) ;
                      add = firstNumber-secondNumber ;
                      setState(() {
                        //_fieldtwocontroller.clear() ;
                        //_fieldonecontroller.clear() ;
                      });
                    }
                  }, icon: Icon(Icons.remove), label: Text("MINUS"),)
                ],
              ),
              OutlinedButton(onPressed: (){}, child: Text("Result: $add"))
            ],
          ),
        ),
      ),
    );
  }
}

