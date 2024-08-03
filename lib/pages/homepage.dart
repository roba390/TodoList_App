import 'package:flutter/material.dart';
import 'package:lecture/pages/listOf.dart';
import 'package:lecture/pages/newBox.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _controller=TextEditingController();
  List taskTodo = [

  ];
    void justCancel(){
      setState(() {
        Navigator.pop(context);
      });
    }
    void newTaskSave(){
      setState(() {
        taskTodo.add([_controller.text,false]);
        _controller.clear();
      });
      Navigator.pop(context);
    }
  void newTask() {
    showDialog(context: context, builder: (context) {
      return Newbox(
        controller: _controller,
        onSave: newTaskSave,
        onCancel: justCancel
      );

    },
    );
  }


  void checkedbox(bool? value, int index) {
    setState(() {
      taskTodo[index][1] = !taskTodo[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[200],
        appBar: AppBar(
          backgroundColor: Colors.green[100],
          titleTextStyle: const TextStyle(fontWeight: FontWeight.bold,
            color: Colors.orange,),
          title: const Text("TO DO LIST"
            ,
          ),
          centerTitle: true,
          elevation: 5,
        ),
        floatingActionButton: FloatingActionButton(onPressed:
            () {
          newTask();
        },
          child: const Icon(Icons.add),
        ),
        body: ListView.builder(
          itemCount: taskTodo.length,
          itemBuilder: (context, index) {
            return Listof(
              Tname: taskTodo[index][0],
              Tcompleted: taskTodo[index][1],
              onChanged: (value) => checkedbox(value, index),
              deleteTask:(context){

                  setState(() {
                    taskTodo.removeAt(index);
                  });

              }


            );
          },
        )


    );
  }


}

