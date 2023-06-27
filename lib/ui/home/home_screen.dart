import 'package:crud_app/ui/crud/list_data_screen.dart';
import 'package:crud_app/ui/permision_control/users_permisions_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'CRUD APP',
            style: TextStyle(color: Colors.white),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Theme.of(context).primaryColorDark,
                    Theme.of(context).primaryColorLight,
                  ]),
            ),
          ),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Agenda',
              ),
              Tab(text: 'Permissões'),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[ListDataScreen(), UsersPermissionsScreen()],
        ),
      ),
    );
  }
}
