import 'package:flutter/material.dart';
class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  set taskDays(String taskDays) {}

  set taskName(String taskName) {}

  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

        child: Padding(
        padding: const EdgeInsets.all(10.0).copyWith(
      bottom: MediaQuery.of(context).viewInsets.bottom,
    ),
    child: Container(
    padding: const EdgeInsets.all(10),
    child: Form(
    child: Column(
    //mainAxisSize: MainAxisSize.min,
    children: [
    TextFormField(
    decoration: const InputDecoration(
    hintText: 'Task',
    ),
    onChanged: (val) {
    setState(() {
    taskName = val;
    });
    }
    ),
      TextFormField(
    decoration: const InputDecoration(
    hintText: 'Number of Days',
    ),
          onChanged: (val) {
            setState(() {
              taskDays = val;
            });
          },
        ),

const SizedBox(
  height: 20,
),
Row(children: [
  Icon(
    Icons.calendar_today_rounded,
    color: Colors.blue,
  ),

    MaterialButton(child:Text('Cancel'),
      onPressed: (){ Navigator.of(context).pop();

    },


    ),

  MaterialButton(child:Text('Save',style: TextStyle(color: Colors.blue),),
    onPressed: (){ Navigator.of(context).pop();

    },


  ),

],

)
    ]))))
    );
  }
}
