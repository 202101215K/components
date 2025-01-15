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

  // Alert 2
  
  

void showMyAlert2(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Invite People to this Project"),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Invite existing team members or add new ones.",
                style: TextStyle(color: Colors.blueGrey),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Search team members...',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage('assets/images/as.jpg')),
                title: Text('Whitney Blessing'),
                subtitle: Text('whitneyblessing@gmail.com'),
                trailing: ElevatedButton(onPressed: () {}, child: Text('Add')),
              ),
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage('assets/images/z1.png')),
                title: Text('Cheryl Green'),
                subtitle: Text('cherylgreen@gmail.com'),
                trailing: ElevatedButton(onPressed: () {}, child: Text('Remove')),
              ),
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage('assets/images/user.jpg')),
                title: Text('Bonnie Lopez'),
                subtitle: Text('bonnielopez@gmail.com'),
                trailing: ElevatedButton(onPressed: () {}, child: Text('Add')),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              // Handle invite action
            },
            child: Text('Invite 3 Users'),
          ),
        ],
      );
    },
  );
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

            },
            
             child: Text("Alert 1")),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: ElevatedButton(onPressed: (){
                showMyAlert2(context);
               }, child: Text("alert 2")),
             )
             
          ],
          
        ),
      ),
    );
  }
}