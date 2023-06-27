import 'package:flutter/material.dart';

class VisualizeAllContactInfo extends StatelessWidget {
  const VisualizeAllContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        insetPadding: const EdgeInsets.symmetric(
            vertical: 24, horizontal: 24), //this right here

        child: SizedBox(
          height: 340,
          child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text("Informações de contato"),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(Icons.close)),
                    ],
                  ),
                  Divider(
                    height: 0,
                    color: Theme.of(context).primaryColor,
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 16,
                      right: 8,
                      left: 16,
                    ),
                    child: Column(
                      children: [
                        TextFormField(
                            readOnly: true,
                            initialValue: 'Gabriel Bueno',
                            decoration: const InputDecoration(
                              label: Text('Nome'),
                              icon: Icon(Icons.person),
                            )),
                        TextFormField(
                            readOnly: true,
                            initialValue:
                                'Rua Valério Ronchi, 160 - Uvaranas, Ponta Grossa',
                            decoration: const InputDecoration(
                              label: Text('Endereço'),
                              icon: Icon(Icons.home),
                            )),
                        TextFormField(
                            readOnly: true,
                            initialValue: 'email@email.com',
                            decoration: const InputDecoration(
                              label: Text('E-mail'),
                              icon: Icon(Icons.email),
                            )),
                        TextFormField(
                            readOnly: true,
                            initialValue: '(99)99999-9999',
                            decoration: const InputDecoration(
                              label: Text('Telefone'),
                              icon: Icon(Icons.phone),
                            )),
                      ],
                    ),
                  ),
                ],
              )),
        ));
  }
}
