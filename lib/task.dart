import 'package:flutter/material.dart';

class Task extends StatefulWidget{
  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int currentIndex = 0;
  void onTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: RichText(
          textDirection: TextDirection.rtl,
          text: TextSpan(
              text: " Al-Azhar ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white
              ),
              children: [
                WidgetSpan(child:SizedBox(width: 10,)),
                TextSpan(
                    text: "University",
                    style: TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                    )
                ),
                WidgetSpan(child:SizedBox(width: 10,)),
                TextSpan(
                    text: "in Gaza",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.amber,
                        letterSpacing: 4
                    ))]),),),
      drawer: Drawer(
          elevation: 25,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("20190821"),
                accountEmail:Text("Laila Anouar Abu Salah"),
                currentAccountPicture: CircleAvatar(
                  child: Text("L",style: TextStyle(fontSize: 30),), backgroundColor: Colors.white,
                ),
                decoration: BoxDecoration(color: Colors.teal),
              ),
              ListTile(
                leading: Icon(Icons.mail),
                title:Text("Laila@gmail.com"),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.inbox),
                title:Text("Inbox"),
              ),
              ListTile(
                leading: Icon(Icons.people),
                title:Text("Contact Us"),
              ),
              ListTile(
                leading: Icon(Icons.local_offer),
                title:Text("Offers"),),],
          )
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            padding: EdgeInsets.all(8.0), margin: EdgeInsets.all(4),width: 150.0,
            child: Text("Subject"), color: Colors.amber,
          ),
          Container(
            padding: EdgeInsets.all(8.0), margin: EdgeInsets.all(4), width: 150.0,
            color: Colors.amber, child: Text("Subject hours"),
          )
        ],),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            padding: EdgeInsets.all(8.0), margin: EdgeInsets.all(4), width: 150.0,
            child: Text("Subject 1"), color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(8.0), margin: EdgeInsets.all(4), width: 150.0,
            color: Colors.grey, child: Text("2 hours"),
          )
        ],),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            padding: EdgeInsets.all(8.0), margin: EdgeInsets.all(4), width: 150.0,
            child: Text("Subject 2"), color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(8.0), margin: EdgeInsets.all(4), width: 150.0,
            color: Colors.grey, child: Text("3 hours"),)],),],
      ),
      bottomNavigationBar:BottomAppBar(
        color: Colors.grey,
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child:SizedBox(
          height: 70,
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            InkWell(
              onTap: () {
                onTapped(0);
              },
              child: Column( //index = 0
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home,color:currentIndex==0?Colors.white:Colors.black87),
                  Text("Home",style: TextStyle(color:currentIndex==0?Colors.white:Colors.black87, ),)
                ],),),
            InkWell(
              onTap: () {
                onTapped(1);
              },
              child: Column( //index = 1
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.settings,color:currentIndex==1?Colors.white:Colors.black87,),
                  Text("Settings",style: TextStyle(color:currentIndex==1?Colors.white:Colors.black87,)) ],
              ),
            ),    ],
          ),),),
      floatingActionButton: FloatingActionButton(
        elevation:5,
        onPressed: (){},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.teal,
          ),
          child: Center(child: Icon(Icons.add)),
        ),
        backgroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    ); }}