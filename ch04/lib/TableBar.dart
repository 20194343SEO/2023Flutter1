import 'package:flutter/material.dart';

class TableBar extends StatefulWidget {
  const TableBar({super.key});

  @override
  State<TableBar> createState() => _TableBarState();
}

class _TableBarState extends State<TableBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tab'),
            backgroundColor: Colors.cyan,
            bottom: TabBar(
              tabs:<Widget> [
                Tab(
                  icon: Icon(Icons.tag_faces),
                ),
                Tab(
                  text: '메뉴2',
                ),
                Tab(
                  icon: Icon(Icons.info),
                  text: '메뉴3',
                ),
              ],
            ),
          ),

        ),
    );
  }
}
