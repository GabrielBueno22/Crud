import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Criar conta',
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
        ),
        body: const CrudComponent());
  }
}

class CrudComponent extends StatelessWidget {
  const CrudComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            Text(
              'Digite seu e-mail',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(
              height: 48,
            ),
            const CrudInput(),
            const SizedBox(
              height: 96,
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Prosseguir'))
          ],
        ),
      ),
    );
  }
}

class CrudInput extends StatelessWidget {
  const CrudInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'E-mail',
        icon: Icon(Icons.email),
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );
  }
}
