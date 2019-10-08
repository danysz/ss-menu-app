import 'package:ss_menu/models/outlet.dart';
import 'ss_menu.dart';
import 'tfk_menu.dart';

Map<String, Outlet> dOutlets = {
  'ss': Outlet(
    name: 'SkewerSpot',
    menu: dSSMenu,
  ),
  'tfk': Outlet(
    name: 'TFK',
    menu: dTFKMenu,
  ),
};