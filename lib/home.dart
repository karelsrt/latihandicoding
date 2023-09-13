// ignore_for_file: must_be_immutable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:latihandicoding/themes.dart';

class Home extends StatelessWidget {
  Home({super.key});
  List<Map<String, dynamic>> menu = [
    {
      "icon": "assets/icon/phone.png",
      "menu": "Pulsa",
    },
    {
      "icon": "assets/icon/listrik.png",
      "menu": "Listrik",
    },
    {
      "icon": "assets/icon/emas.png",
      "menu": "Emas",
    },
    {
      "icon": "assets/icon/air.png",
      "menu": "Air",
    },
    {
      "icon": "assets/icon/internet.png",
      "menu": "Internet",
    },
    {
      "icon": "assets/icon/gas.png",
      "menu": "Gas",
    },
    {
      "icon": "assets/icon/kredit.png",
      "menu": "Kredit",
    },
    {
      "icon": "assets/icon/lihat.png",
      "menu": "Lihat Semua",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rp.100.000",
                      style: bold20.copyWith(color: black),
                    ),
                    CircleAvatar(
                      backgroundColor: const Color(0xff8DC4C4),
                      radius: 20.0,
                      child: Icon(
                        Icons.notifications_none_sharp,
                        color: primary,
                        size: 25.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            height: 65,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                              color: primary,
                            ),
                            child: const Icon(
                              Icons.qr_code,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                          Text(
                            "Scan",
                            style: medium12,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            height: 65,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                              color: primary,
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                          Text(
                            "Isi Saldo",
                            style: medium12,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            height: 65,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                              color: primary,
                            ),
                            child: const Icon(
                              Icons.send,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                          Text(
                            "Kirim",
                            style: medium12,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            height: 65,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                              color: primary,
                            ),
                            child: const Icon(
                              Icons.wallet,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                          Text(
                            "Minta",
                            style: medium12,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Layanan",
                  style: bold19,
                ),
                Container(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 51,
                            width: 51,
                            decoration: BoxDecoration(
                              color: primary,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            child: const Icon(
                              Icons.home,
                              size: 30.0,
                              color: Colors.white,
                            ),
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Transfer via Bank",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "Kirim Saldo Kemana Saja",
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: primary,
                              shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text("Kirim"),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      GridView.builder(
                        padding: EdgeInsets.zero,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 2 / 3,
                          crossAxisCount: 4,
                          mainAxisSpacing: 1,
                          crossAxisSpacing: 1,
                        ),
                        itemCount: menu.length,
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          var items = menu[index];
                          return Column(
                            children: [
                              Container(
                                height: 65,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(12.0),
                                  ),
                                  color: primary,
                                ),
                                child: ImageIcon(
                                  AssetImage(
                                    items['icon'],
                                  ),
                                  color: Colors.white,
                                  size: 24.0,
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                items['menu'],
                                style: const TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const Text(
                  "Deal",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Builder(builder: (context) {
                  List images = [
                    "assets/gambar/1.png",
                    "assets/gambar/2.png",
                  ];

                  return CarouselSlider(
                    options: CarouselOptions(
                      height: 160.0,
                    ),
                    items: images.map((imageUrl) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(6.0),
                              ),
                              image: DecorationImage(
                                image: AssetImage(imageUrl),
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
