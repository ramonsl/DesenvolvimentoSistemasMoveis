
import 'package:flutter/material.dart';
import 'todo_detail.dart';
import 'package:my_todo/models/todo.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
 // DatabaseHelper databaseHelper = DatabaseHelper();
  //List<Todo> todoList = List<Todo>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ///updateListView();
   // print(todoList.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: getTodosListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Clicl');
          navigateToDetail(Todo('', '', ''), 'Adicionar');
        },
        tooltip: '+ 1 A fazer',
        child: Icon(Icons.add),
      ),
    );
  }

  Widget getTodosListView() {
    return Text(
      "Fazer"
    );
  }

  getAvatar(String title) {
    if (title.length < 2) {
      return '';
    } else {
      return title.substring(0, 2);
    }
  }
/*
  void _delete(BuildContext context, Todo todo) async {
   // int result = await databaseHelper.deleteTodo(todo.id);
    int result = 0;

    if (result != 0) {
      _showSnackBar(context, 'Deletado...');
      updateListView();
    }
  }
  */


  void _showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    Scaffold.of(context).showSnackBar(snackBar);
  }
/*
  void updateListView() {
    final Future<Database> dbFuture = databaseHelper.initializeDatabase();
    dbFuture.then((database) {
      Future<List<Todo>> todoListFuture = databaseHelper.getTodoList();
      todoListFuture.then((todoList) {
        setState(() {
          this.todoList = todoList;
        });
      });
    });
  }*/

  void navigateToDetail(Todo todo, String title) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return TodoDetail(todo, title);
      debugPrint("Chamou a segunda tela");

      //return TodoDetail(todo, title);
    })).then((result) {
      if (result ?? true) {
    //    updateListView();
      }
    });
  }
}

