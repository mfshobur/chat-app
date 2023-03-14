import 'package:chat_app/core/theme/theme.dart';
import 'package:flutter/material.dart';

class AddNewFriend extends StatefulWidget {
  const AddNewFriend({super.key});

  @override
  State<AddNewFriend> createState() => _AddNewFriendState();
}

class _AddNewFriendState extends State<AddNewFriend> {
  late TextEditingController idController;

  @override
  void initState() {
    idController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    idController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: color.background,
        leading: IconButton(
          color: textSecondary,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
        title: Text(
          'Friend search',
          style: TextStyle(color: color.onBackground),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Friend ID',
                style: TextStyle(
                  color: textPrimary,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                controller: idController,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: color.background,
                  filled: true,
                  hintText: 'Enter your friend\'s ID',
                  suffixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      idController.text.isNotEmpty
                          ? IconButton(
                              color: textSecondary,
                              splashColor: Colors.transparent,
                              onPressed: () {
                                setState(() {
                                  idController.text = '';
                                });
                              },
                              icon: Icon(Icons.cancel),
                            )
                          : const SizedBox(),
                      IconButton(
                        color: textSecondary,
                        splashColor: Colors.transparent,
                        onPressed: () {},
                        icon: Icon(Icons.search),
                      ),
                    ],
                  ),
                ),
                autofocus: true,
              ),
              const SizedBox(
                height: 32,
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      color: Colors.red,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Hernan Hernandez',
                      style: TextStyle(color: textPrimary, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Add'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
