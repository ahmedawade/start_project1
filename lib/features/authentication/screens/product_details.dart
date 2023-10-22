import 'package:dio/dio.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:start_project1/features/authentication/screens/home_screen.dart';
import 'package:start_project1/utils/app_colors.dart';

class productdetails extends StatelessWidget {
  productdetails({super.key});
  final List<String> listOfImages = [
    'https://5.imimg.com/data5/SELLER/Default/2022/3/QX/DC/DV/12982737/whatsapp-image-2022-03-26-at-2-45-17-pm-500x500.jpeg',
    'https://5.imimg.com/data5/SELLER/Default/2022/3/QX/DC/DV/12982737/whatsapp-image-2022-03-26-at-2-45-17-pm-500x500.jpeg',
    'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/ccb15778ba924a508c51af7900e1d508_9366/Avryn_Shoes_White_HP5973_01_standard.jpg',
    'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/ccb15778ba924a508c51af7900e1d508_9366/Avryn_Shoes_White_HP5973_01_standard.jpg',
    'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/ccb15778ba924a508c51af7900e1d508_9366/Avryn_Shoes_White_HP5973_01_standard.jpg',
  ];
  final List<String> listofsizes = [
    "5",
    "5.5",
    "6",
    "6.5",
    "7",
    "7.5",
    "8",
    "8.5"
  ];
  final List<String> listofcolors = [
    'https://5.imimg.com/data5/SELLER/Default/2022/3/QX/DC/DV/12982737/whatsapp-image-2022-03-26-at-2-45-17-pm-500x500.jpeg',
    'https://5.imimg.com/data5/SELLER/Default/2022/3/QX/DC/DV/12982737/whatsapp-image-2022-03-26-at-2-45-17-pm-500x500.jpeg',
    'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/ccb15778ba924a508c51af7900e1d508_9366/Avryn_Shoes_White_HP5973_01_standard.jpg',
    'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/ccb15778ba924a508c51af7900e1d508_9366/Avryn_Shoes_White_HP5973_01_standard.jpg',
    'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/ccb15778ba924a508c51af7900e1d508_9366/Avryn_Shoes_White_HP5973_01_standard.jpg',
  ];


  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (context) {
                      return home_screen();
                    }));
                  },
                  icon: const Icon(Icons.arrow_back_outlined),
                ),
                const Text(
                  " text 1",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Appcolors.textcolor,
                  ),
                ),
                SizedBox(
                  width: screenwidth * 0.83 ,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
                const SizedBox(
                  width: 40,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.settings),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                autoPlayInterval: const Duration(
                  milliseconds: 1500,
                ),
                autoPlayCurve: Curves.easeInOut,
              ),
              items: listOfImages.map(
                (i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            image: NetworkImage(i),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                },
              ).toList(),
            ),
            //to do the points in the underr
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Nike Air Zoom Pegasus 36 Miami",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Appcolors.textcolor,
                  ),
                ),
                Icon(Icons.favorite_border_outlined),
                //to do stARS
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "\$299,43",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Appcolors.primarycolor,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Select Size",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Appcolors.textcolor,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
                height: 59,
                width: screenwidth,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    //shrinkWrap: true,
                    itemCount: listofsizes.length,
                    itemBuilder: (context, i) {
                      return choosesize(listofsizes[i]);
                    }),
            ),
            const Text(
              "Color Select",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Appcolors.textcolor,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
                height: 59,
                width: screenwidth,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    //shrinkWrap: true,
                    itemCount: listofsizes.length,
                    itemBuilder: (context, i) {
                      return choosecolor(listofcolors[i]);
                    })),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Specification",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Appcolors.textcolor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  "shown :",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Appcolors.textcolor,
                  ),
                ),
                SizedBox(
                  width: screenwidth * .85,
                ),
                const Text(
                  "Laser ",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Appcolors.textcolor,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: screenwidth*.9,
                  child:   const Text("Anthracite\n"
                      "Blue/\n"
                      "/Watermelon/White\n",
                    textAlign: TextAlign.right,style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Appcolors.textcolor,
                    ),
                  ),

                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              
              children: [
                const Text(
                  "Style:",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Appcolors.textcolor,
                  ),
                ),
                SizedBox(
                  width: screenwidth * .84,
                ),
                const Text(
                  "CD0113-400",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Appcolors.textcolor,
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

Widget choosesize(String size) {
  return CircleAvatar(
    backgroundColor: Colors.cyan,
    radius: 200,
    child: CircleAvatar(
      radius: 48,
      backgroundColor: Colors.white,
      child: Text(
        size,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 14,
          color: Appcolors.textcolor,
        ),
      ),
    ),
  );
}
Widget choosecolor(String i) {
  final Dio dio=Dio();
  dio.get("https://student.valuxapps.com/api/products?category_id=40");
  return CircleAvatar(
    backgroundColor: null,
    radius: 200,
    child: CircleAvatar(
      backgroundImage: NetworkImage(i),
      radius: 40,
    ),
  );
}
