import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';

class AppBarComponent{
  static AppBar buildAppBar(){
    return 
      AppBar(
        backgroundColor: tdBGColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.menu,
              color: tdBlack,
              size: 30,
            ),
            Container(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/avatar.jpeg')
              ),
            ),
          ],
        ),
      );
  }
}