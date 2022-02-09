import 'package:flutter/material.dart';
import 'package:try_flutter_api/Screen/user_datails.dart';
userListWidget(String picture, String fulName, String email,BuildContext context){

  return GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>UserDatails(fulName: fulName, imagePath: picture)));
    },
    child: Card(
      color: Colors.red,
      margin: EdgeInsets.all(8),
      child: Container(
        padding: EdgeInsets.all(8),
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(picture),
              backgroundColor: Colors.transparent,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(fulName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                Text(email,style: TextStyle(fontSize: 10,fontWeight: FontWeight.normal,color: Colors.white),)
              ],
            )
          ],
        ),
      ),
    ),
  );
}