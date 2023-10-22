import 'package:flutter/material.dart';
import 'package:start_project1/features/authentication/screens/home_screen.dart';
import 'package:start_project1/features/authentication/screens/productitemwidget.dart';
import 'package:start_project1/utils/app_colors.dart';

class Favouritesreen extends StatelessWidget {
  Favouritesreen({super.key});
  static const image =
      'https://5.imimg.com/data5/SELLER/Default/2022/3/QX/DC/DV/12982737/whatsapp-image-2022-03-26-at-2-45-17-pm-500x500.jpeg';
  static const image2 =
      'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/ccb15778ba924a508c51af7900e1d508_9366/Avryn_Shoes_White_HP5973_01_standard.jpg';
  static const image3 =
      'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/ccb15778ba924a508c51af7900e1d508_9366/Avryn_Shoes_White_HP5973_01_standard.jpg';
  final List<Map<String, dynamic>> Listofproducts = [
    {
      'title': 'Tshirt',
      'price': "100",
      'image': image,
    },
    {
      'title': 'Tshirt',
      'price': "100",
      'image': image2,
    },
    {
      'title': 'Tshirt',
      'price': "100",
      'image': image3,
    },
    {
      'title': 'Tshirt',
      'price': "100",
      'image': image,
    },
    {
      'title': 'Tshirt',
      'price': 100,
      'image': image2,
    },
    {
      'title': 'Tshirt',
      'price': 100,
      'image': image3,
    },
    {
      'title': 'Tshirt',
      'price': 100,
      'image': image,
    },
    {
      'title': 'Tshirt',
      'price': "100",
      'image': image,
    },
    {
      'title': 'Tshirt',
      'price': 100,
      'image': image2,
    },
    {
      'title': 'Tshirt',
      'price': 100,
      'image': image3,
    },
    {
      'title': 'Tshirt',
      'price': 100,
      'image': image,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context){
                        return home_screen();
                      })
                    );
                  },
                  icon: const Icon(Icons.arrow_back_outlined),
                ),
                const Text(
                  "   Favorite Product",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Appcolors.textcolor,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 260,
              width: MediaQuery.sizeOf(context).width,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: Listofproducts.length,
                itemBuilder: (context, index) {
                  Listofproducts[index];
                  return productitemwidget(productitem: Listofproducts[index]);
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 15,
                  );
                },
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 260,
              width: MediaQuery.sizeOf(context).width,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: Listofproducts.length,
                itemBuilder: (context, index) {
                  Listofproducts[index];
                  return productitemwidget(productitem: Listofproducts[index]);
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 15,
                  );
                },
              ),
            )
          ]),
        ));
  }
}
