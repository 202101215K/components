import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});
  showMyAlert1( BuildContext context){
    showDialog(context: context, 
    builder: (BuildContext context){
      return AlertDialog(title: Text("Alert 1"),
      content: Text("Hola este es el contenido del alert1"),
      backgroundColor: Colors.white,
      actions: [
        ElevatedButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("Cancelar"),
       ),
       ElevatedButton(onPressed: (){}, child: Text("Aceptar"),
       ),
       ],
      );
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Alert"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 58, 183, 91),
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              showMyAlert1(context);

            }, child: Text("Alert 1"))
          ],
        ),
      ),
    );
  }
}