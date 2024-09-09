import 'package:flutter/widgets.dart';

class NavBarItemEntity {
  final IconData icon, activeIcon;
  final String label;

  NavBarItemEntity( {required this.label, required this.icon, required this.activeIcon});
}
