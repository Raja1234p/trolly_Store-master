import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trolly_store/UI/CategoryFolder/Category.dart';
class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              CustomListTile(
                  title: 'Profile',
                  icon: Icon(
                    Icons.person,
                    color: Colors.black87,
                    size: 35,
                  ),
                  onTap: () {
                    print('Profile');
                  }),


             CustomListTile(title: 'History',icon: Icon(Icons.receipt),onTap: (){},),
              CustomListTile(title: 'Categories',icon: Icon(Icons.receipt_long_sharp),onTap: (){

                Get.to(()=>CategoryWidget());
              },),
              CustomListTile(title: 'Create Order',icon: Icon(Icons.screen_lock_portrait_sharp),onTap: (){},),
              CustomListTile(title: 'Instant Order',icon: Icon(Icons.integration_instructions_sharp),onTap: (){},),
              CustomListTile(title: 'Review',icon: Icon(Icons.star),onTap: (){},),
              CustomListTile(title: 'Earning',icon: Icon(Icons.circle),onTap: (){},),
              CustomListTile(title: 'Bank Details',icon: Icon(Icons.account_balance_outlined),onTap: (){},),



              CustomListTile(
                  title: 'Bank Details',
                  icon: Icon(Icons.home_repair_service_rounded,
                      color: Colors.black87, size: 35),
                  onTap: () {
                    print('Bank Details');
                  }),
              CustomListTile(
                  title: 'Documnets',
                  icon: Icon(Icons.menu_book_outlined,
                      color: Colors.black87, size: 35),
                  onTap: () {
                    print('Documnets');
                  }),
              CustomListTile(
                  title: 'Share',
                  icon: Icon(Icons.share, color: Colors.black87, size: 35),
                  onTap: () {
                    print('Share');
                  }),
              CustomListTile(
                  title: 'Settings',
                  icon: Icon(Icons.settings, color: Colors.black87, size: 35),
                  onTap: () {
                    print('Settings');
                  }),
              CustomListTile(
                  title: 'Payments',
                  icon: Icon(Icons.payment, color: Colors.black87, size: 35),
                  onTap: () {
                    print('Payments');
                  }),
              CustomListTile(
                  title: 'Vehicle',
                  icon: Icon(Icons.car_repair, color: Colors.black87, size: 35),
                  onTap: () {

                  }),
              CustomListTile(
                  title: 'Help',
                  icon: Icon(Icons.info, color: Colors.black87, size: 35),
                  onTap: () {
                    print('Help');
                  }),
              CustomListTile(
                  title: 'Logout',

                  icon: Icon(Icons.logout, color: Colors.black87, size: 35),
                  onTap: () {
                    Get.defaultDialog(
                        title: "Logout",
                        middleText: "Are you sure?",
                        actions: [
                          FlatButton(
                            child: Text("CANCEL".toUpperCase()),
                            onPressed: (){
                              Get.back();
                            },
                          ),

                          FlatButton(
                            onPressed: (){

                            },
                            child: Text("YES".toUpperCase()),
                          ),
                        ]
                    );
                  }),
              SizedBox(height: 75),
              Text("App Version 1.0.4", )
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNvaBar(),
    );
  }
}


class CustomListTile extends StatelessWidget {
  final String title;
  final Icon icon;
  final Function onTap;

  const CustomListTile({this.title, this.icon, Key key, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '${title}',

      ),
      leading: icon,
      onTap: onTap,
    );
  }
}