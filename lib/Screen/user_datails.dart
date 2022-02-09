import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class UserDatails extends StatelessWidget {
   UserDatails({Key? key, required this.fulName,required this.imagePath}) : super(key: key);
   String fulName;
   String imagePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("UserDetails",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),
      ),
      centerTitle: true,
        backgroundColor: Colors.red
        ,
      ),
      body: Center(
        child: Card(
          elevation: 10,
          shadowColor: Colors.black12,
          color: Colors.red,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          margin: EdgeInsets.all(20),
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(20),
            height: 200,
            child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 70,
            backgroundImage: NetworkImage(imagePath),
            backgroundColor: Colors.transparent,
          ),
          SizedBox(height: 20,),
          Text(fulName,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
        ],
      ),

          ),
        ),

        // child: Card(
        //   elevation: 5,
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       CircleAvatar(
        //         radius: 100,
        //         backgroundImage: NetworkImage(imagePath),
        //         backgroundColor: Colors.transparent,
        //       ),
        //       SizedBox(height: 20,),
        //       Text(fulName,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
        //
        //
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
