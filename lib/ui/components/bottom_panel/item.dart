import 'package:flutter/material.dart';

class BottomPanelItem extends StatefulWidget {
  final IconData icon;
  final Function? onClick;
  final bool isActive;
  const BottomPanelItem({super.key, required this.icon, this.onClick, this.isActive = false});

  @override
  State<BottomPanelItem> createState() => _BottomPanelItemState();
}

class _BottomPanelItemState extends State<BottomPanelItem> {
  @override
  Widget build(BuildContext context) {
    const duration = Duration(milliseconds: 500);
    
    return Expanded(
      child: GestureDetector(
        onTap: () => widget.onClick?.call(),
        child: AnimatedContainer(
          margin: const EdgeInsets.all(6),
          padding: const EdgeInsets.all(6),
          duration: duration,
          curve: Curves.easeOutCubic,
          decoration: BoxDecoration(
            color: widget.isActive ? Colors.blue.withAlpha(30) : Colors.blue.withAlpha(0),
            borderRadius: BorderRadius.circular(100 * MediaQuery.of(context).size.width),
          ),
          child: Icon(
            widget.icon,
            color: widget.isActive ? Colors.blue : Colors.blueGrey.shade700,
            size: 25,
          ),
        ),
      ),
    );
  }
}