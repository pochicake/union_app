import 'package:flutter/material.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';
import 'package:union_app/ui/components/bottom_panel/item.dart';

class BottomPanel extends StatefulWidget {
    final PageController pageController;
    const BottomPanel({super.key, required this.pageController});

  @override
  State<BottomPanel> createState() => _BottomPanelState();
}

class _BottomPanelState extends State<BottomPanel> {
    double _currentActive = 0;
    @override
    void initState() {
        super.initState();

        widget.pageController.addListener(() {
            if (widget.pageController.page != null) {
                setState(() => _currentActive = widget.pageController.page!);
            }
        });
    }
  @override
  Widget build(BuildContext context) {
    const duration = Duration(milliseconds: 500);

    return Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
            ),
            boxShadow: [
                BoxShadow(
                    color: Colors.black.withAlpha(80),
                    blurRadius: 8,
                ),
            ],
        ),
        child: Row(
            children: [
                BottomPanelItem(
                    icon: MingCuteIcons.mgc_diary_line,
                    isActive: _currentActive == 0,
                    onClick: () {
                        setState(() {
                            _currentActive = 0;
                            widget.pageController.animateToPage(0, duration: duration, curve: Curves.easeOutCubic);
                        });
                    },
                ),
                BottomPanelItem(
                    icon: MingCuteIcons.mgc_list_check_2_line,
                    isActive: _currentActive == 1,
                    onClick: () {
                        setState(() {
                            _currentActive = 1;
                            widget.pageController.animateToPage(1, duration: duration, curve: Curves.easeOutCubic);
                        });
                    },
                ),
                BottomPanelItem(
                    icon: MingCuteIcons.mgc_calendar_2_line,
                    isActive: _currentActive == 2,
                    onClick: () {
                        setState(() {
                            _currentActive = 2;
                            widget.pageController.animateToPage(2, duration: duration, curve: Curves.easeOutCubic);
                        });
                    },
                ),
                BottomPanelItem(
                    icon: MingCuteIcons.mgc_chat_1_line,
                    isActive: _currentActive == 3,
                    onClick: () {
                        setState(() {
                            _currentActive = 3;
                            widget.pageController.animateToPage(3, duration: duration, curve: Curves.easeOutCubic);
                        });
                    },
                ),
                BottomPanelItem(
                    icon: MingCuteIcons.mgc_user_3_line,
                    isActive: _currentActive == 4,
                    onClick: () {
                        setState(() {
                            _currentActive = 4;
                            widget.pageController.animateToPage(4, duration: duration, curve: Curves.easeOutCubic);
                        });
                    },
                ),
            ],
        ),
    );
  }
}