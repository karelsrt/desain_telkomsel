import 'package:flutter/material.dart';
import 'package:desain_telkomsel/core.dart';
import '../controller/dasbord_controller.dart';

class DasbordView extends StatefulWidget {
  const DasbordView({Key? key}) : super(key: key);

  Widget build(context, DasbordController controller) {
    controller.view = this;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            stops: [0.1, 0.8, 1],
            begin: Alignment.centerLeft,
            end: Alignment.topRight,
            colors: [
              Colors.red,
              Colors.red,
              Color(0xffEDD501),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Row(
                children: [
                  const Text(
                    "Hi James",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.qr_code,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                  const Badge(
                    backgroundColor: Colors.black,
                    label: Text(
                      "4",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    child: Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_circle_rounded,
                      size: 24.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Text(
                    "085740756578",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      size: 24.0,
                    ),
                    color: Colors.white,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 140,
                    decoration: const BoxDecoration(
                      color: Color(0xffBA0024),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.heart_broken,
                            size: 10,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          "19 POINT",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            size: 10,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    height: 40,
                    width: 170,
                    decoration: const BoxDecoration(
                      color: Color(0xffBA0024),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          "DAILY CHECK IN",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            size: 10,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 13.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 120,
                    decoration: const BoxDecoration(
                      color: Color(0xffF5F4F2),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rp 0",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Active Until 22 Sep 2021",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff535760)),
                          ),
                          Row(
                            children: [],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DasbordView> createState() => DasbordController();
}
