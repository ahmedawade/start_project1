import 'package:flutter/material.dart';

class productitemwidget extends StatelessWidget {
  final Map<String ,dynamic> productitem;
  const productitemwidget({super.key,required this.productitem});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 141,
      height: 242,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
        border: Border.all(color: const Color(0xFFEBF0FF),),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //image
          Container(
            width: 110,
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image:  DecorationImage(
                image:  NetworkImage(
                  productitem['image'],
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Text(
            "FS - Nike Air Max 270 React",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Color(0xff223263),
              fontWeight: FontWeight.w700,
              fontSize: 12,
              letterSpacing: 0.5,
            ),
          ),
           Text(
            productitem['price'].toString(),
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Color(0xff40BFFF),
              fontWeight: FontWeight.w700,
              fontSize: 12,
              letterSpacing: 0.5,
            ),
          ),
          const Row(
            children: [
              Text(
                "\$534,33",
                style: TextStyle(
                  decoration: TextDecoration.lineThrough  ,
                  color: Color(0xff9098B1),
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  letterSpacing: 0.5,
                ),
              ),
              Text(
                "  24% Off",
                style: TextStyle(
                  color: Color(0xFFFB7181),
                  fontWeight: FontWeight.w700,
                  fontSize: 10,
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// class productmodel {
//   final String id;
//   final String price;
//   final String old_price;
//   final String discount;
//   final String name;
//   final List<String> images;
//   final bool isfav;
//   final bool incart;
//   productmodel({
//     required this.id,
//     required this.price,
//     required this.old_price,
//     required this.discount,
//     required this.name,
//     required this.images,
//     required this.isfav,
//     required this.incart,
//   }){}
//   factory productmodel.frommap(Map<dynamic,dynamic> data){
//     return productmodel(
//         id: data["id"],
//         price: data["price"],
//         old_price: data["old_price"],
//         discount: data["discount"],
//         name: data["name"],
//         images: data["images"],
//         isfav: data["isfav"],
//         incart: data["incart"]);
//   }
// }
// void main(){
//   Map<String,dynamic> dataa={
//     "id":"100",
//     "price":"250",
//     "old_price":"300",
//     "discount":"10",
//     "name":"ajkssjn",
//     "images":["koljljiljnwljnwjnl"],
//     "isfav":true,
//     "incart":false,
//   };
//
//   print(productmodel.frommap(dataa).name);
//
//
//
// }
