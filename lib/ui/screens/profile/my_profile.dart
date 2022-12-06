import 'package:flutter/material.dart';

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
                        pinned: true,
                        leading: IconButton(
                          onPressed: () {},
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
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          width: 28.0,
                                          height: 28.0,
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
                                        style: Styles.appTheme.textTheme.headline6?.copyWith(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                // SizedBox(
                                //   width: 60,
                                // ),
                                Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      color: Colors.orangeAccent.withOpacity(0.7),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                    size: 12,
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
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children:  [
                  SizedBox(height: 220,),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.person,color: Colors.black,),
                      title: Text("Personal Details",
                        style: Styles.appTheme.textTheme.bodyMedium,
                      ),
                      trailing: Icon(Icons.arrow_right,color: Colors.black,size: 28,),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.key,color: Colors.black,),
                      title: Text("Change Password",
                        style: Styles.appTheme.textTheme.bodyMedium,
                      ),
                      trailing: Icon(Icons.arrow_right,color: Colors.black,size: 28,),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.person,color: Colors.black,),
                      title: Text("Personal Details",
                        style: Styles.appTheme.textTheme.bodyMedium,
                      ),
                      trailing: Icon(Icons.arrow_right,color: Colors.black,size: 28,),
                    ),
                  ),   SizedBox(height: 10,),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.person,color: Colors.black,),
                      title: Text("Personal Details",
                        style: Styles.appTheme.textTheme.bodyMedium,
                      ),
                      trailing: Icon(Icons.arrow_right,color: Colors.black,size: 28,),
                    ),
                  ),

                ],
              ),
            )),
      ),
    );
  }
}
