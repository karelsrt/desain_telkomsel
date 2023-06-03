import 'package:flutter/material.dart';
import 'package:desain_telkomsel/core.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../controller/menuatas_controller.dart';

class MenuatasView extends StatefulWidget {
  const MenuatasView({Key? key}) : super(key: key);

  Widget build(context, MenuatasController controller) {
    controller.view = this;

    return Column(
      children: [
        Container(
          height: 185,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color(0xffF5F4F2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Rp 0",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                const Text(
                  "Active Until 22 Sep 2021",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff535760)),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 80.0,
                  child: ListView.builder(
                    itemCount: controller.menu.length,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.none,
                    itemBuilder: (context, index) {
                      var items = controller.menu[index];
                      bool isSelected =
                          controller.selecetedCaragoryIndex == index;
                      return Row(
                        children: [
                          InkWell(
                            onTap: () {
                              controller.updateindex(index);
                            },
                            child: Container(
                              width: 110,
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? const Color(0xffF00027)
                                    : Colors.transparent,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  items['nama'].toString(),
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: isSelected
                                        ? Colors.white
                                        : const Color(0xff124888),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          height: 150,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  CircularPercentIndicator(
                    radius: 20,
                    lineWidth: 3.0,
                    percent: 1.0,
                    progressColor: Colors.grey,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Internet",
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "You Have No Kouta",
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.all(2),
                    child: Text(
                      "Not yet purchased",
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 24.0,
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  CircularPercentIndicator(
                    radius: 20,
                    lineWidth: 3.0,
                    percent: 1.0,
                    progressColor: Colors.orange,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Multimedia",
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "9.2 GB / 10 GB is expiring tomorrow",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.all(2),
                    child: Text(
                      "9.2 GB / 10 GB Left",
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 24.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  State<MenuatasView> createState() => MenuatasController();
}
