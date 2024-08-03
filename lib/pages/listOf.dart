

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Listof extends StatelessWidget {

  final String Tname;
  final bool Tcompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteTask;


  Listof({super.key,
    required this.Tname,
    required this.Tcompleted,
    required this.onChanged,
    required this.deleteTask});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Slidable(
        endActionPane: ActionPane(motion: const StretchMotion(),
            children: [
              SlidableAction(onPressed: deleteTask,
              icon: Icons.delete,
              backgroundColor: Colors.redAccent,)
            ]),
        child: Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Row(
            children: [
              Checkbox(value: Tcompleted,

                  onChanged: onChanged),
              Text(Tname,style: TextStyle(decoration:Tcompleted?
              TextDecoration.lineThrough:TextDecoration.none,),),
            ],
          ),



        ),
      ),
    );
  }
}

