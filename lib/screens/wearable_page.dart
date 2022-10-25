import 'package:ecommerce/models/product_model.dart';
import 'package:ecommerce/screens/info_page.dart';
import 'package:ecommerce/utils/colors.dart';
import 'package:ecommerce/utils/images.dart';
import 'package:ecommerce/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WearablePage extends StatelessWidget {
  WearablePage({super.key});

  List numberTruthList = [
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: ListView.builder(
                  // shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        color: Color(0xFFF2F2F2F2),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) => InfoPage(productModel: ProductModel.products[index])));
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 60),
                                child: Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 6),
                                  width: 220,
                                  height: 290,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.grey.withOpacity(0.1)),
                                    borderRadius: BorderRadius.circular(20)),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 190,
                                        width: 190,
                                        child: Image.asset(ProductModel.products[index].image,)),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Container(
                                        child: Text(ProductModel.products[index].name,style: Mystyle.RalewayBold700.copyWith(fontSize: 22),),
                                      ),
                                      SizedBox(height: 4,),
                                      Container(
                                        child: Text(ProductModel.products[index].series,style: Mystyle.RalewayBold700.copyWith(fontSize: 16, color: myColors.C_868686),),
                                      ),
                                      SizedBox(height: 12,),
                                      Container(
                                        child: Text('\$ ${ProductModel.products[index].price.toString()}',style: Mystyle.RalewayBold700.copyWith(fontSize: 17, color: myColors.C_5956E9),),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (){

                    },
                    child: Text("see more",style: Mystyle.RalewayBold700.copyWith(fontSize: 17, color: myColors.C_5956E9),)),
                  SizedBox(width: 8,),
                  SvgPicture.asset(myImages.next_icon, color: myColors.C_5956E9,)
                ],
              ),
            )
          ],
        ));
  }
}
