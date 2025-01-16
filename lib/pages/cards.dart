import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Card Page",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body:  Container(
        child: Column(
        
          children: [
            Container(
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(4, 4),
                    blurRadius: 12.0,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    "Exercitation eiusmod ad aliquip pariatur nulla aliqua fugiat consequat Lorem. Quis sit ad non cillum enim minim dolor culpa ex Lorem exercitation duis excepteur. Commodo reprehenderit adipisicing sint minim in commodo id fugiat. Quis aliqua aute aliqua tempor ex eu veniam nulla aliqua magna fugiat est. Exercitation do fugiat aliquip consectetur enim. Sint occaecat eiusmod pariatur amet. Nostrud eiusmod elit labore elit elit labore in commodo dolor non irure.Elit in tempor commodo incididunt ullamco dolore eiusmod ut ullamco irure adipisicing cillum et. Eiusmod minim proident proident aliquip ut minim cupidatat officia duis consectetur. Do velit consectetur culpa mollit quis.",
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    width: double.infinity,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                       const BoxShadow(
                          color: Colors.deepPurpleAccent,
                          blurRadius: 10,
                          offset: Offset(4, 4),
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Follow me",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                  )
                ],
              ),
            ),


             //SEGUNDO COTAINER
            const SizedBox(
              height: 10.0,
            ),
            Container(
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18.0),
                boxShadow: [
                  BoxShadow(
                    
                    // ignore: deprecated_member_use
                    color: Colors.black.withOpacity(0.2),
                    offset: const Offset(4, 4),
                    blurRadius: 12.0,
                  ),
                ],
              ),
              child: Row(
                children: [
                  
                  Container(
                    height: 120.0,
                    width: 120.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/car.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                  ),
                  const SizedBox(width: 12.0),
                 
                 const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text(
                          "Fiorella Guadalupe de las Nieves Azules",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6.0),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...",
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),





            //TERCER COTAINER
            const SizedBox(
              height: 10.0,
            ),
            Container(
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18.0),
                boxShadow: [
                  BoxShadow(
                    
                    // ignore: deprecated_member_use
                    color: Colors.black.withOpacity(0.2),
                    offset: const Offset(4, 4),
                    blurRadius: 12.0,
                  ),
                ],
              ),
              child: Row(
                children: [
                  
                  
                 
                 const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        SizedBox(height: 6.0),
                        Text(
                          "Loren ispsun dolor sit amet, consectetur adisposing elit, sed do eisumod tempor incididunt ut labore et dolore magna aliqua. ut enim ad minim vaniam, quis nostrud exertitation,ullamco laboris nisi ut aliquip ex ea ........",
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                  ),

                  //imagen 
                  Container(
                    height: 120.0,
                    width: 120.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/plant.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                  ),
                  const SizedBox(width: 12.0),
                ],
              ),
            ),
          ],
        ),
      ),
      
      
    );
    
  }
}