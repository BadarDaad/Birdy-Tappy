import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  //logout

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          "HomePage",
        ),
        shape:
            const RoundedRectangleBorder(borderRadius: BorderRadius.vertical()),
        centerTitle: true,
        actions: const [
          //logout button
          // IconButton(onPressed: logout, icon: const Icon(Icons.logout))
        ],
      ),
    );
  }
}
