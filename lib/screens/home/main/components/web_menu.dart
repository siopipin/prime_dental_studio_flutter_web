import 'package:admin/constants.dart';
import 'package:admin/screens/home/providers/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WebMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final providerHome = Provider.of<HomeProvider>(context);

    return Row(
      children: List.generate(
        providerHome.menuItems.length,
        (index) => WebMenuItem(
          text: providerHome.menuItems[index],
          isActive: index == providerHome.selectedIndex,
          press: () => providerHome.setMenuIndex(index),
        ),
      ),
    );
  }
}

class WebMenuItem extends StatefulWidget {
  const WebMenuItem({
    Key key,
    @required this.isActive,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final bool isActive;
  final String text;
  final VoidCallback press;

  @override
  _WebMenuItemState createState() => _WebMenuItemState();
}

class _WebMenuItemState extends State<WebMenuItem> {
  bool _isHover = false;

  Color _borderColor() {
    if (widget.isActive) {
      return kMainColor;
    } else if (!widget.isActive & _isHover) {
      return kMainColor.withOpacity(0.4);
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: kHomeDefaultDuration,
        margin: EdgeInsets.symmetric(horizontal: kHomeDefaultPadding),
        padding: EdgeInsets.symmetric(vertical: kHomeDefaultPadding / 2),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: _borderColor(), width: 3),
          ),
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: widget.isActive ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
