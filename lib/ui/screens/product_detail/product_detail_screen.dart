import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../../data/values/values.dart';
import '../../common_widgets/custom_button.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
          backgroundColor: MyColors.bodyColor,
          title: Text(
            "Classy Hoodie",
            style: Styles.appTheme.textTheme.headline4,
          ),
          centerTitle: true,
        ),
        bottomSheet: SizedBox(
          //alignment: Alignment.center,
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width,
          child: Card(
            elevation: 20,
            margin: EdgeInsets.zero,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              color: MyColors.primary,
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        "1",
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              color: MyColors.primary,
                              borderRadius: BorderRadius.circular(50)),
                          child: const Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(10)),

                    // height: 30,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Total Amount",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "(Tax Included)",
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  )
                                ]),
                            Text(
                              "INR 3998",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ]),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomButton(title: "Add to Cart", onTap: () {})
                ],
              ),
            ),
          ),
        ),
        body: NestedScrollView(
          physics: const BouncingScrollPhysics(),
          headerSliverBuilder: (context, innerScrolled) => <Widget>[
            // SliverOverlapAbsorber(
            //     handle:
            //         NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            //     sliver: SliverAppBar(
            //       // pinned: true,
            //       leading: IconButton(
            //         onPressed: () {},
            //         icon: const Icon(Icons.arrow_back_ios),
            //       ),
            //       title: Text(
            //         "My Profile",
            //         style: Styles.appTheme.textTheme.headline4
            //             ?.copyWith(color: Colors.white),
            //       ),
            //       centerTitle: true,
            //       expandedHeight: 200.0,
            //       collapsedHeight: 200.0,
            //       flexibleSpace: FlexibleSpaceBar(
            //         centerTitle: true,
            //         title: Padding(
            //           padding: const EdgeInsets.all(8.0),
            //           child: Row(
            //             //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               Padding(
            //                 padding: const EdgeInsets.all(12.0),
            //                 child: Row(
            //                   children: [
            //                     Container(
            //                         width: 50.0,
            //                         height: 50.0,
            //                         decoration: const BoxDecoration(
            //                             shape: BoxShape.circle,
            //                             image: DecorationImage(
            //                                 fit: BoxFit.fill,
            //                                 image: AssetImage(
            //                                     "assets/images/profile.png")))),
            //                     const SizedBox(
            //                       width: 10,
            //                     ),
            //                     Text(
            //                       "Manish Kumar",
            //                       style: Styles.appTheme.textTheme.headline3
            //                           ?.copyWith(color: Colors.white),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               SizedBox(
            //                 width: 20,
            //               ),
            //               Container(
            //                 padding: EdgeInsets.all(4),
            //                 decoration: BoxDecoration(
            //                     color: Colors.orangeAccent.withOpacity(0.7),
            //                     borderRadius: BorderRadius.circular(50)),
            //                 child: Icon(
            //                   Icons.edit,
            //                   color: Colors.white,
            //                   size: 20,
            //                 ),
            //               )
            //             ],
            //           ),
            //         ),
            //         background: Image.asset(
            //           'assets/images/ecllipse.png',
            //           height: 30,
            //           width: 40,
            //           //fit: BoxFit.contain,
            //           alignment: Alignment.topRight,
            //         ),
            //       ),
            //     ))
          ],
          body: SingleChildScrollView(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/jacket.png",
                    height: 200,
                    // width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyLarge,
                    children: const <TextSpan>[
                      TextSpan(
                          text: '175',
                          style: TextStyle(fontWeight: FontWeight.bold)),

                      TextSpan(
                          text: ' sold out of ',
                          style: TextStyle(fontWeight: FontWeight.normal)),
                      TextSpan(
                          text: '200',
                          style: TextStyle(fontWeight: FontWeight.bold)),

                      // TextSpan(text: ' severity with ',style: TextStyle(fontWeight: FontWeight.normal)),
                      // TextSpan(text: '${potentialAlternate[position].affectedIngredient!.name!}',style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: LinearPercentIndicator(
                      barRadius: const Radius.circular(50),
                      alignment: MainAxisAlignment.center,
                      width: MediaQuery.of(context).size.width * 0.5,
                      animation: true,
                      lineHeight: 10.0,
                      animationDuration: 2500,
                      percent: 0.8,
                      //  center: Text("80.0%"),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      progressColor: MyColors.primary,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: MyColors.bodyColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  child: Card(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Buy",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            "Classic Hoodie".toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                ?.copyWith(
                                    color: MyColors.primary,
                                    fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "WIN: Royal Enfield Classic",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Text(
                            "Detail:",
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: MyColors.primary,
                                    fontSize: 18),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Text(
                              "jnkjnw xwhbchw xhgwe gwe cgwe exgw gwe xhwe x ew eyge xgw exy weyx wgx ywe xywe x aisubxw xwuyvxuwe xuweevxgw xutwevxgw xytwevdxhw exytw xwe xytw xywfe xyfwe xywe xhgw xywe xyfw xywe xgfw xywx gfwe xywexuywhiwueh xwyevyuwe xywgevdywte",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(color: Colors.black),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.25,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
