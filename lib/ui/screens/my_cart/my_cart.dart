import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucky_draw_app/data/values/my_colors.dart';

import '../../../data/controllers/cart_controller.dart';
import '../../../data/controllers/drawer_controller.dart';
import '../../../data/values/styles.dart';
import '../../common_widgets/custom_button.dart';
import '../drawer/drawer.dart';

class MyCartScreen extends StatelessWidget {
   MyCartScreen({Key? key}) : super(key: key);


   DrawerControl drawerController=Get.put(DrawerControl());
   CartControl cartController=Get.put(CartControl());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      key: drawerController.scaffoldKey,
      backgroundColor: MyColors.bodyColor,

      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
            onTap: ()=>
                drawerController.openDrawer(),

            child: Image.asset("assets/images/drawerIcon.png")),
        backgroundColor: MyColors.bodyColor,
        title: Text(
          "Personal Detail",
          style: Styles.appTheme.textTheme.headline4,
        ),
        centerTitle: true,
      ),
      drawer: drawerScreen(context),
      bottomNavigationBar: SingleChildScrollView(
        child: SizedBox(
          //alignment: Alignment.center,
          height: MediaQuery.of(context).size.height*0.25,
          width: MediaQuery.of(context).size.width,
          child: Card(
            margin: EdgeInsets.zero,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft:Radius.circular(20), ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0,20,0,0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Expanded(
                          flex: 6,
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: _promoCodeInputField(context))),
                          SizedBox(width: 10,),
                          Expanded(
                            flex: 3,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: MyColors.primary,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30), // <-- Radius
                                ),
                              ),
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                child: Text(
                                  "Apply",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16
                                  ),



                            ))),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    
                   // height: 30,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [


                         Text("Total Amount",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                        ),
                         Text("(Tax Included)",
                          style: Theme.of(context).textTheme.bodySmall,
                        )]),
                        Text("INR 3998",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ]),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  CustomButton(title: "Proceed to Checkout",onTap: (){})
                ],
              ),
            ),

          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(

          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/pngwing.png",
                    width: 40,
                      height: 49,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Classy Hoodie",
                        style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 15),
                        ),
                        const SizedBox(height: 3),
                        Text("Royal Enfield classic",
                        style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(height: 5),
                        Text("INR 1999",
                        style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold,color: MyColors.primary),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          decoration: BoxDecoration(
                            color: MyColors.primary,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Icon(Icons.add,color: Colors.white,),

                        ),
                      ),
                        const SizedBox(height: 5,),
                        Text("1"),
                        const SizedBox(height: 5,),
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            decoration: BoxDecoration(
                                color: MyColors.primary,
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: Icon(Icons.remove,color: Colors.white,),

                          ),
                        ),


                      ],
                    ),
                    Image.asset("assets/images/jacket.png",
                    width: 86,
                      height: 66,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

   Widget _promoCodeInputField(BuildContext context) {
     return Container(
       height: 50,
       child: TextFormField(
         controller: cartController.promoController,
         keyboardType: TextInputType.number,
         autocorrect: false,
         maxLength: 128,
         style: const TextStyle(
           color: Colors.black54,
         ),
         decoration: InputDecoration(
           filled: true,
           fillColor:  Color(0xFFD9D9D9),
             counterText: "",
             contentPadding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
             border: OutlineInputBorder(
                 borderSide: const BorderSide(
                   // color: Color.fromARGB(255, 232, 232, 232),
                     color: Color(0xFFD9D9D9),
                     width: 0.0),
                 borderRadius: BorderRadius.circular(10)),
             enabledBorder: OutlineInputBorder(
                 borderSide: const BorderSide(
                   // color: Color.fromARGB(255, 232, 232, 232),
                     color: Color(0xFFD9D9D9),
                     width: 0.0),
                 borderRadius: BorderRadius.circular(10)),
             focusedBorder: OutlineInputBorder(
                 borderSide: const BorderSide(
                   // color: Color.fromARGB(255, 232, 232, 232),
                     color: Color(0xFFD9D9D9),
                     width: 0.0),
                 borderRadius: BorderRadius.circular(10)),
             errorBorder: OutlineInputBorder(
                 borderSide: const BorderSide(
                   // color: Color.fromARGB(255, 232, 232, 232),
                     color: Color(0xFFD9D9D9),
                     width: 0.0),
                 borderRadius: BorderRadius.circular(10)),
             errorStyle: const TextStyle(fontSize: 12),
             hintText: "Enter Promo Code",
             hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                 fontWeight: FontWeight.normal,
                 color: Colors.black38,
                 letterSpacing: 1.0)

           // errorStyle: AppTypoGraphy.errorHintStyle
         ),
         validator: (String? lastName) {
           if (lastName!.isEmpty) {
             return "Enter Promo Code";
           } else {
             return null;
           }
         },
       ),
     );
   }
}
