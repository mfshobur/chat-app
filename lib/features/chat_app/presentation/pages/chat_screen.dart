import 'package:chat_app/core/theme/theme.dart';
import 'package:chat_app/features/chat_app/presentation/pages/friends_profile_page.dart';
import 'package:chat_app/features/chat_app/presentation/widgets/received_chat_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../widgets/send_chat_bubble.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  double bottomMargin = 64;
  late ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      scrollController.jumpTo(
        scrollController.position.maxScrollExtent,
        // duration: const Duration(milliseconds: 10),
        // curve: Curves.easeOut,
      );
    });
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final globalkey = GlobalKey();

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: color.onSurface),
        backgroundColor: color.surface,
        leading: IconButton(
          color: color.onSurface,
          iconSize: 24,
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FriendsProfilePage(),
              ),
            );
          },
          child: Row(
            children: [
              const Placeholder(
                fallbackHeight: 48,
                fallbackWidth: 48,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fullsnack Designer',
                    style: TextStyle(
                      color: color.onSurface,
                    ),
                  ),
                  Text(
                    'Online',
                    style: TextStyle(
                      fontSize: 14,
                      color: color.onSurface,
                      fontWeight: fontNormal,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          Image.asset(
            'assets/images/vc-icon.png',
            width: 24,
            height: 24,
          ),
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  child: Text('Tes'),
                ),
              ];
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    color.surface,
                    backgroundGradient,
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 64,
              ),
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                controller: scrollController,
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const SendChatBubble(text: 'efjeifiejf'),
                    const ReceivedChatBubble(
                        text:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
                    const ReceivedChatBubble(
                        text:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
                    const ReceivedChatBubble(
                        text:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
                    ReceivedChatBubble(
                        key: globalkey,
                        text:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                // height: 64,
                color: color.surface,
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: TextFormField(
                        maxLines: null,
                        onTap: () async {
                          if (scrollController.position.pixels ==
                              scrollController.position.maxScrollExtent) {
                            await Future.delayed(
                                const Duration(milliseconds: 350));
                            scrollController.jumpTo(
                              scrollController.position.maxScrollExtent,
                              // duration: Duration(milliseconds: 100),
                              // curve: Curves.easeIn,
                            );
                          }
                        },
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Write a message...',
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: color.primary,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.send,
                        color: color.onPrimary,
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
