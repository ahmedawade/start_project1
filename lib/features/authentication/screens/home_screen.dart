import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:start_project1/features/authentication/screens/favorite_screen.dart';
import 'package:start_project1/features/authentication/screens/productitemwidget.dart';
import 'package:start_project1/utils/category_repo.dart';

class home_screen extends StatelessWidget {
  home_screen({super.key});
  final List<String> listOfImages = [
    'assets/images/image 50.jpg',
    'assets/images/image 51.jpg'
  ];
  final List<String> listofview = [
    'https://5.imimg.com/data5/SELLER/Default/2022/3/QX/DC/DV/12982737/whatsapp-image-2022-03-26-at-2-45-17-pm-500x500.jpeg',
    'https://5.imimg.com/data5/SELLER/Default/2022/3/QX/DC/DV/12982737/whatsapp-image-2022-03-26-at-2-45-17-pm-500x500.jpeg',
    'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/ccb15778ba924a508c51af7900e1d508_9366/Avryn_Shoes_White_HP5973_01_standard.jpg',
    'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/ccb15778ba924a508c51af7900e1d508_9366/Avryn_Shoes_White_HP5973_01_standard.jpg',
    'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/ccb15778ba924a508c51af7900e1d508_9366/Avryn_Shoes_White_HP5973_01_standard.jpg',
  ];
  static const image =
      'https://5.imimg.com/data5/SELLER/Default/2022/3/QX/DC/DV/12982737/whatsapp-image-2022-03-26-at-2-45-17-pm-500x500.jpeg';
  static const image2 =
      'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/ccb15778ba924a508c51af7900e1d508_9366/Avryn_Shoes_White_HP5973_01_standard.jpg';
  static const image3 =
      'https://i.ebayimg.com/00/s/MTEwMFgxMTAw/z/fX0AAOSw4FpiGRvk/\$_12.JPG?set_id=880000500F';
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
      backgroundColor: const Color(0x000000ff),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffEBF0FF),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 20,
                          color: Color(0xff40BFFF),
                        ),
                        hintText: "Search Product",
                        hintStyle: TextStyle(
                          color: Color(0xff9098B1),
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  IconButton(
                      onPressed: () {
                        {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) {
                                return Favouritesreen();
                              },
                            ),
                          );
                        }
                      },
                      icon: const Icon(Icons.favorite_border_outlined)),
                  const SizedBox(
                    width: 15,
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 450,
                  autoPlay: true,
                  autoPlayInterval: const Duration(
                    milliseconds: 1500,
                  ),
                  autoPlayCurve: Curves.easeInOut,
                ),
                items: listOfImages.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            image: AssetImage(i),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: const Text(
                          '  Super Flash Sale \n  50% Off!',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Category",
                    style: TextStyle(
                      color: Color(0XFF223263),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  InkWell(
                    hoverColor: Colors.cyan,
                    onTap: () {},
                    child: const Text(
                      "More Category",
                      style: TextStyle(
                        color: Color(0XFF40BFFF),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              FutureBuilder(
                future: categoryRepo.getcategories(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator(); // Loading indicator while data is being fetched
                  } else if (snapshot.hasError) {
                    return Text(
                        'Error: ${snapshot.error}'); // Display error message
                  } else if (!snapshot.hasData || snapshot.data!.data == null) {
                    return Text('No data available'); // Handle the case when no data is available
                  } else {
                    return SizedBox(
                      width: MediaQuery.of(context)
                          .size
                          .width, // Correct the typo here (sizeOf -> of)
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data!.data.data.length,
                        itemBuilder: (context, i) {
                          return buildCircleAvatar(
                              snapshot.data!.data.data[i].image);
                        },
                      ),
                    );
                  }
                },
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Flash Sale",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff223263),
                    ),
                  ),
                  InkWell(
                    hoverColor: const Color(0XFF223263),
                    onTap: () {},
                    child: const Text(
                      "See More",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff40BFFF),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 220,
                child: (ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: Listofproducts.length,
                  itemBuilder: (context, index) {
                    Listofproducts[index];
                    return productitemwidget(
                        productitem: Listofproducts[index]);
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 20,
                    );
                  },
                )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Mega Sale",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff223263),
                    ),
                  ),
                  InkWell(
                    hoverColor: const Color(0XFF223263),
                    onTap: () {},
                    child: const Text(
                      "See More",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff40BFFF),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 220,
                child: (ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: Listofproducts.length,
                  itemBuilder: (context, index) {
                    Listofproducts[index];
                    return productitemwidget(
                        productitem: Listofproducts[index]);
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 20,
                    );
                  },
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCircleAvatar(String image) {
    return CircleAvatar(
      backgroundColor: Colors.cyan,
      radius: 200,
      child: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(image),
        backgroundColor: Colors.cyan,
        child: const Icon(Icons.person_2_outlined),
      ),
    );
  }
}
