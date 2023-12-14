import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';
class SearchBox extends StatelessWidget {
  
  final filterSearch;

  const SearchBox({Key? key, required this.filterSearch}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return searchBox();
  }

    Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        
        onChanged: (value)=> filterSearch(value),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefixIcon: Icon(
              Icons.search,
              color: tdBlack,
              size: 20,
            ),
            prefixIconConstraints: BoxConstraints(
              maxHeight: 20,
              minWidth: 25,
            ),
            border: InputBorder.none,
            hintText: 'Search',
            hintStyle: TextStyle(color: tdGrey)),
      ),
    );
  }
}