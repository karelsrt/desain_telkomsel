import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:desain_telkomsel/state_util.dart';
import '../view/menubawah_view.dart';

class MenubawahController extends State<MenubawahView>
    implements MvcController {
  static late MenubawahController instance;
  late MenubawahView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  int selecetedCaragoryIndex = 0;
  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();
  List menu = [
    {
      'id': 1,
      'nama': 'Buy Packet',
    },
    {
      'id': 2,
      'nama': 'Top up',
    },
    {
      'id': 3,
      'nama': 'Send Gift',
    },
  ];

  updateindex(newIndex) {
    selecetedCaragoryIndex = newIndex;
    var menu2 = menu;
    print(menu2[newIndex]['nama']);
    setState(() {});
  }
}
