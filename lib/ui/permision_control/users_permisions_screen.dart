import 'package:flutter/material.dart';

class UsersPermissionsScreen extends StatefulWidget {
  const UsersPermissionsScreen({super.key});

  @override
  State<UsersPermissionsScreen> createState() => _UsersPermissionsScreenState();
}

class _UsersPermissionsScreenState extends State<UsersPermissionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [ListItem(), ListItem(), ListItem()],
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    final permisions = ['ADMIN', 'PADRÃO', 'VISUAL'];
    var dropdownValue = permisions.first;
    return Card(
      elevation: 2,
      shape: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColorLight),
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Nome usuário'),
                Row(
                  children: [
                    DropdownButton<String>(
                      value: dropdownValue,
                      elevation: 16,
                      onChanged: (String? value) {},
                      items: permisions
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                )
              ],
            ),
            Divider(
              height: 8,
              thickness: 1,
              color: Theme.of(context).primaryColorDark,
            ),
            const Text('Cadastrado em: 23/03/2003')
          ],
        ),
      ),
    );
  }
}
