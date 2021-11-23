import 'package:flutter/material.dart';

class TodoView extends StatefulWidget {
  const TodoView({Key? key}) : super(key: key);


  @override
  _TodoViewState createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  var searchController = TextEditingController();
  String appBarTitle = "All Lists";
  bool isDefault = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isDefault == true ? defaultAppBar() : searchAppBar(),
    );
  }

  searchAppBar()
  {
    return AppBar(
      leading: IconButton(
      onPressed: ()
        {
          setState(() {
            isDefault = true;
          });
        },
      icon: const Icon(Icons.keyboard_arrow_left, size: 30,),
      ),
      title: TextField(

        controller: searchController,
        style: const TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        decoration: const InputDecoration(
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.white),
          icon: Icon(Icons.search, color:  Colors.white,),
          border: InputBorder.none
        ),
      )
    );
  }

  defaultAppBar()
  {
    return AppBar(
      leading: const Icon(Icons.check_circle, size: 30,),
      title: Row(
        children: <Widget>[
          Text(appBarTitle),
          IconButton(
            onPressed: ()
            {

            },
            icon: const Icon(Icons.home),
            splashRadius: 20,
          ),
        ],
      ),
      actions: <Widget>[
        IconButton(
          onPressed: ()
          {
            setState(() {
              isDefault = false;
            });
          },
          icon: const Icon(Icons.search),
          splashRadius: 20,
        ),
        IconButton(
          onPressed: ()
          {

          },
          icon: const Icon(Icons.more_horiz),
          splashRadius: 20,
        ),
      ],
    );
  }

}
