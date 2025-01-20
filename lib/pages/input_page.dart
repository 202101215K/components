import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPage extends StatelessWidget {
  const InputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Input Page",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              style: TextStyle(color: Colors.redAccent,
               fontSize: 20.0,),
               maxLines: 3,
              decoration: InputDecoration(label: Text("Direccion del usuario"),
              hintText: "Escribe la direccion....",
               icon: Icon(Icons.location_on),
               prefixIcon: Icon(Icons.star),
               suffixIcon: Icon(Icons.check_box)),
              
            ),
            SizedBox(
              height: 21.0,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Buscar producto",
                prefixIcon: Icon(Icons.search),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple, 
                  width: 3.0,),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green, width: 3.0,
                  ),
                  borderRadius: BorderRadius.circular(20.0)
                )

              ),
              onChanged: (String value) {
                print(value);
                
              },
            ),
            SizedBox(height: 20.0,),
            Container(
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2),
                offset: Offset(4,4),
                blurRadius: 12.0)]
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Buscar Productos",
                  hintStyle: GoogleFonts.poppins(fontSize: 14.0, 
                  color: Colors.black54),
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: Container(
                    decoration: BoxDecoration(color: Colors.pinkAccent, 
                    borderRadius: BorderRadius.circular(14.0),
                    ),
                    child: Icon(Icons.search,
                    color: Colors.white,),
                    
                    ),
                    
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0),
                    borderSide: BorderSide(color: Colors.grey,
                    width: 1.0)
                    
                  ),

                   focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0),
                    borderSide: BorderSide(color: Colors.grey,
                    width: 1.0)
                    
                  )
              
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}