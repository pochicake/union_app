import 'package:flutter/material.dart';
import 'package:union_app/ui/components/bottom_panel/bottom_panel.dart';
import 'package:union_app/ui/pages/chat.dart';
import 'package:union_app/ui/pages/checklist.dart';
import 'package:union_app/ui/pages/notes.dart';
import 'package:union_app/ui/pages/profile.dart';
import 'package:union_app/ui/pages/schedule.dart';

class MainUI extends StatefulWidget {
  const MainUI({super.key});

  @override
  State<MainUI> createState() => _MainUIState();
}

class _MainUIState extends State<MainUI> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: _pageController,
            pageSnapping: true,
            children: [
              const Notes(),
              const Checklist(),
              const Schedule(),
              const Chat(),
              const Profile()
            ],
          ),
        ),
        BottomPanel(
          pageController: _pageController
        ),
      ],
    );
  }
}