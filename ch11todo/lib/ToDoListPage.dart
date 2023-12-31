import 'package:ch11todo/ToDo.dart';
import 'package:flutter/material.dart';

class ToDoListPage extends StatefulWidget {
  const ToDoListPage({super.key});

  @override
  State<ToDoListPage> createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
  final _items = <ToDo>[];
  var _toDoController = TextEditingController();

  void dispose(){
    _toDoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('남은 할 일'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: TextField(
                      controller: _toDoController,
                    ),
                ),
                ElevatedButton(
                    onPressed: () => _addTodo(ToDo(_toDoController.text)),
                    child: Text('추가'),
                ),
              ],
            ),
            Expanded(
                child: ListView(
                  children: _items.map((todo) => _buildItemWidget(todo)).toList(),
                ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemWidget(ToDo todo){
    return ListTile(
      onTap: ()=>_toggleToDo(todo),
      title: Text(
        todo.title,
        style: todo.isDone
            ? TextStyle(
          decoration: TextDecoration.lineThrough,
          fontStyle: FontStyle.italic,
        )
            : null,
      ),
      trailing: IconButton(
        icon: Icon(Icons.delete_forever),
        onPressed: ()=> _deleteToDo(todo),
      ),
    );
  }
  
  void _addTodo(ToDo todo){
    setState(() {
      _items.add(todo);
      _toDoController.text = '';
    });
  }

  void _deleteToDo(ToDo todo){
    setState(() {
      _items.remove(todo);
    });
  }

  void _toggleToDo(ToDo todo){
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }
}
