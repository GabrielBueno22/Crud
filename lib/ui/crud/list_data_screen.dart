import 'package:crud_app/ui/crud/delete_alert.dart';
import 'package:crud_app/ui/crud/edit_screen.dart';
import 'package:crud_app/ui/crud/visualize_all_contact_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ListDataScreen extends StatelessWidget {
  const ListDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [CrudListItem(), CrudListItem(), CrudListItem()],
    );
  }
}

class CrudListItem extends StatelessWidget {
  const CrudListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {
              Navigator.of(context).push(MaterialPageRoute<void>(
                  builder: (BuildContext context) => const EditScreen()));
            },
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            icon: Icons.edit,
            label: 'Edit',
          ),
          SlidableAction(
            onPressed: (context) {
              showDialog(
                  context: context,
                  builder: (context) {
                    return const DeleteAlertDialog();
                  });
            },
            backgroundColor: const Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: ListTile(
          title: const Text('João contato'),
          subtitle: const Text('429999999'),
          onTap: () {
            showDialog(
                context: context,
                builder: (context) {
                  return const VisualizeAllContactInfo();
                });
          },
          shape: const Border(
              bottom: BorderSide(
            width: 0.5,
          ))),
    );
  }
}
