import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Slidable(
                startActionPane: ActionPane(
                  motion: StretchMotion(),
                  children: [
                    SlidableAction(
                      onPressed: ((context) {
//Call number
                      }),
                      backgroundColor: Colors.green,
                      icon: Icons.phone,
                    ),
                    SlidableAction(
                    //  flex: 2,
                      onPressed: ((context) {
//Call number
                      }),
                      backgroundColor: Colors.blue,
                      icon: Icons.chat,
                    ),
                  ],
                ),
                endActionPane: ActionPane(
                  motion: StretchMotion(),
                  children: [
                    SlidableAction(
                      onPressed: ((context) {
//Call number
                      }),
                      backgroundColor: Colors.red,
                      icon: Icons.delete,
                    ),
                  ],
                ),
                child: Container(
                  color: Colors.grey[300],
                  child: ListTile(
                    title: Text('Funda Demirtaş'),
                    subtitle: Text('0555 555 55 55'),
                    leading: Icon(
                      Icons.person,
                      size: 40,
                    ),
                  ),
                ),
              ),
              Slidable(
                startActionPane: ActionPane(
                  motion: StretchMotion(),
                  children: [
                    SlidableAction(
                      onPressed: ((context) {
//Call number
                      }),
                      backgroundColor: Colors.green,
                      icon: Icons.phone,
                    ),
                    SlidableAction(
                      //  flex: 2,
                      onPressed: ((context) {
//Call number
                      }),
                      backgroundColor: Colors.blue,
                      icon: Icons.chat,
                    ),
                  ],
                ),
                endActionPane: ActionPane(
                  motion: StretchMotion(),
                  children: [
                    SlidableAction(
                      onPressed: ((context) {
//Call number
                      }),
                      backgroundColor: Colors.red,
                      icon: Icons.delete,
                    ),
                  ],
                ),
                child: Container(
                  color: Colors.grey[300],
                  child: ListTile(
                    title: Text('Funda Demirtaş'),
                    subtitle: Text('0555 555 55 55'),
                    leading: Icon(
                      Icons.person,
                      size: 40,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
