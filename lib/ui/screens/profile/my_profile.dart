import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lucky_draw_app/ui/screens/profile/personal_detail.dart';

import '../../../data/values/values.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
            physics: BouncingScrollPhysics(),
            headerSliverBuilder: (context, innerScrolled) => <Widget>[
                  SliverOverlapAbsorber(
                      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                          context),
                      sliver: SliverAppBar(
                       // pinned: true,
                        leading: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(Icons.arrow_back_ios),
                        ),
                        title: Text(
                          "My Profile",
                          style: Styles.appTheme.textTheme.headline4
                              ?.copyWith(color: Colors.white),
                        ),
                        centerTitle: true,
                        expandedHeight: 200.0,
                        collapsedHeight: 200.0,
                        flexibleSpace: FlexibleSpaceBar(
                          centerTitle: true,
                          title: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                             //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          width: 50.0,
                                          height: 50.0,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(
                                                      "assets/images/profile.png")))),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Manish Kumar",
                                        style: Styles.appTheme.textTheme.headline3?.copyWith(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      color: Colors.orangeAccent.withOpacity(0.7),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                          background: Image.asset(
                            'assets/images/ecllipse.png',
                            height: 30,
                            width: 40,
                            //fit: BoxFit.contain,
                            alignment: Alignment.topRight,
                          ),
                        ),
                      ))
                ],
            body: SingleChildScrollView(
              child: Container(
                color: MyColors.bodyColor,
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                   // SizedBox(height: 220,),
                    GestureDetector(
                      onTap: (){
                        Get.to(PersonalDetail());
                      },
                      child: Card(
                        child: ListTile(
                          leading: Icon(Icons.person,color: Colors.black,),
                          title: Text("Personal Details",
                            style: Styles.appTheme.textTheme.bodyMedium,
                          ),
                          trailing: Icon(Icons.arrow_right,color: Colors.black,size: 28,),
                        ),
                      ),
                    ),
                    SizedBox(height: 3,),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.key,color: Colors.black,),
                        title: Text("Change Password",
                          style: Styles.appTheme.textTheme.bodyMedium,
                        ),
                        trailing: Icon(Icons.arrow_right,color: Colors.black,size: 28,),
                      ),
                    ),
                    SizedBox(height: 3,),

                    Card(
                      child: ListTile(
                        leading: Image.asset('assets/images/info.png',height: 20,width: 20,),
                        title: Text("How it works?",
                          style: Styles.appTheme.textTheme.bodyMedium,
                        ),
                        trailing: Icon(Icons.arrow_right,color: Colors.black,size: 28,),
                      ),
                    ),
                    SizedBox(height: 3,),
                    Card(
                      child: ListTile(
                        leading: Image.asset('assets/images/shop.png',height: 20,width: 20,),
                        title: Text("Our Products",
                          style: Styles.appTheme.textTheme.bodyMedium,
                        ),
                        trailing: Icon(Icons.arrow_right,color: Colors.black,size: 28,),
                      ),
                    ),
                    SizedBox(height: 3,),
                    Card(
                      child: ListTile(
                        leading: Image.asset('assets/images/logout.png',height: 20,width: 20,),
                        title: Text("Logout",
                          style: Styles.appTheme.textTheme.bodyMedium,
                        ),
                        trailing: Icon(Icons.arrow_right,color: Colors.black,size: 28,),
                      ),
                    ),
                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
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
                              "Call Us",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16
                              ),
                            ),
                          ),

                        ),
                        SizedBox(width: 20,),
                        ElevatedButton(
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
                              "Email Us",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16
                              ),
                            ),
                          ),

                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            IconButton(onPressed: (){}, icon: Icon(Icons.facebook),),
                            IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.youtube),),
                            IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.instagram),),
                            IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.linkedin),),
                            IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.whatsapp),),
                            IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.twitter),),


                        ],),
                      ),
                    ),
                    SizedBox(height: 40,),
                    Text("User Agreement",
                    style: Theme.of(context).textTheme.bodySmall,
                    ),
                    SizedBox(height: 5,),
                    Text("Frequently Asked Questions",
                    style: Theme.of(context).textTheme.bodySmall,
                    ),
                    SizedBox(height: 5,),
                    Text("Privacy Policy",
                    style: Theme.of(context).textTheme.bodySmall,
                    ),

                  ],
                ),
              ),
            )),
      ),
    );
  }
}
