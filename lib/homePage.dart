import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Cars", style: TextStyle(color:Colors.pink[600], fontSize: 25),),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.notifications_none_outlined, color: Colors.pink[600],)),
          SizedBox(width: 5,),
          IconButton(onPressed: null, icon: Icon(Icons.shopping_cart, color: Colors.pink[600],)),
        ],
      ),
      body: Padding(padding: EdgeInsets.only(left: 10,right: 10),
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [GItems(true,"All"),
                    GItems(false,"Red"),
                    GItems(false,"Yellov"),
                    GItems(false,"Blue"),
                    GItems(false,"Green"),],
                ),
              )),
          SizedBox(height: 5,),
          Expanded(
              flex: 16,
              child: ListView(
                children: [
                  CarItems("https://imageio.forbes.com/specials-images/imageserve/5d35eacaf1176b0008974b54/2020-Chevrolet-Corvette-Stingray/0x0.jpg?format=jpg&crop=4560,2565,x790,y784,safe&width=960"),
                  CarItems("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKaEevTb6HC14cJEFnaQPzXsVrZSRsnNDiOA&usqp=CAU"),
                  CarItems("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPGDuduXiMB6UflBjejIEecvCZVyZyPDNA4A&usqp=CAU"),
                  CarItems("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMV-Je_UM9zxsU_3Lhd2hjt-H4wElQaTt9Fg&usqp=CAU"),

                ],
              ))
        ],
      ),)

    );
  }
  Widget CarItems(String image){
    return Container(

      margin: EdgeInsets.only(bottom: 10),
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: NetworkImage(image, ),fit: BoxFit.cover),
        boxShadow: [
          BoxShadow(color: Colors.black12,
          blurRadius: 10,
          offset: Offset(0,10)),

        ]
      ),
      child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.5),
          borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("PDP Car  \n100\$", style: TextStyle(color: Colors.white, fontSize: 20),),
                  Text("Electric", style: TextStyle(color: Colors.pink[600], fontSize: 18),),
                ],),
              Icon(Icons.favorite,color: Colors.pink[600],)

            ],
          ),),
      )
    );
  }
  Widget GItems(bool type, String text){
    return AspectRatio(aspectRatio: 2.2/1,child:
      Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: type? Colors.pink[600]: Colors.white,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Center(
          child: Text(text,style: TextStyle(fontSize: type? 20:17),),
        ),
      ));
  }
}
