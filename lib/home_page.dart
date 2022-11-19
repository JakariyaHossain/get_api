import 'package:flutter/material.dart';
import 'package:my_pars/provider/user_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<UserProvider>(context, listen: false).getFetchData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("user info"),
      ),
      body: Consumer<UserProvider>(
        builder: (context, value, child) {
          if (value.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          final users = value.users;
          return ListView.builder(
            itemCount: users.length,
            itemBuilder: ((context, index) {
              final user = users[index];
              return ListTile(
                title: Text(user.title),
                leading: CircleAvatar(child: Text(user.id.toString())),
              );
            }),
          );
        },
      ),
    );
  }
}
