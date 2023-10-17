import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpansionPanel Widget"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: ExpansionPanelList(
              children: [
                ExpansionPanel(headerBuilder: (context,isExpanded){
                  return ListTile(
                    title: Text("My Home District Joypurhata",style: TextStyle(
                      color: Colors.black,fontSize: 20
                    ),),
                  );
                }, body: ListTile(
                  title: Text("Joypurhat was an area under the Pala Empire & Sena dynasty for a long period of time. Till 16th and 17th centuries, there was no clear information about Joypurhat's history. Previously the local name for Joypurhat was Baghabarihat. Later it was called Gopendraganjahat in many archives. Once Lalbazar Thana was established by containing the present Joypurhat Sadar Upazila and Panchbibi Upazila. The thana was located on the east side of Small Jamuna River named Puranapoil. Then Puranapoil Union was known as Karimnagar. A post office was established in Lalbazar Thana. The sub-registry office was established in Nawabganj. There were many Neelkuthi established in this area. At that era, Lalbazar Thana was a town. Back then it was the only work for the ordinary people of that area. From Lalbazar Thana, Small Jamuna River gorge, the whole travel, commerce, and trade were maintained. At that period Lalbazar Thana, Khetlal Upazila & Badalgachhi Upazila were under Dinajpur District. As Dinajpur District, Rangpur District & Rajshahi District were very large, in 1821, a new district was formed from the three districts and named Bogra District. ",style: TextStyle(
                    color: Colors.black,
                    
                  ),),
                ),
                isExpanded: _expanded,
               // backgroundColor: Colors.pink,
                canTapOnHeader: true),  
              ],
              expandIconColor: Colors.black,
              expansionCallback: (panelIndex, isExpanded) {
                _expanded = isExpanded;
                setState(() {});
              },

            ),
          ),
          
        ],
      ),
    );
  }
}