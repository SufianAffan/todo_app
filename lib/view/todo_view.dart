import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

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


      body:  Stack1(
        children: [
          tasksList(),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              color: Colors.blue,
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  InputField(
                    hintText: 'Enter Quick Task Here',
                    width: MediaQuery.of(context).size.width - 100
                    //icon: Icons.mic,
                  ),
                  IconButton(
                    onPressed: ()
                    {

                    },
                    icon: const Icon(Icons.done, color: Colors.white,),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            bottom: 80,
            right: 10,
            child: FloatingActionButton(
              onPressed: ()
              {

              },
              child: const Icon(Icons.add),
            ),
          )
        ],
      )
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

  Widget tasksList()
  {
    bool status = true;
    return ListView.builder(
      itemCount: 20 + 1,
        itemBuilder: (context, index)
        {
          if(index == 20) return const SizedBox(height: 80,);
          return TaskCard(
            taskText: 'This is a task Text',
            checkBox: Checkbox(
              value: status,
              onChanged: (value)
              {
                setState(() {
                  if(status)
                    {
                      status = value!;
                    }
                  else
                    {
                      status = value!;
                    }
                });
              },
            ),
          );
        }
    );
  }
}
