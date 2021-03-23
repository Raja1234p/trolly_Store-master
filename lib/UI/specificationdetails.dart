import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  InkWell(
                    onTap: () {

                    },
                    child: Container(
                      // color: Colors.red,
                      height: Get.height * 0.4,
                      width: MediaQuery.of(context).size.width,
                      child: Hero(
                          tag: 1,
                          child: Image.asset(
                            'assets/images/placeholder.png',
                            fit: BoxFit.contain,
                            // color: Colors.grey[50].withOpacity(0.5),
                          )),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    child: Container(
                      decoration: new BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            spreadRadius: 20,
                            blurRadius: 0,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: InkWell(
                        onTap: (){

                       Get.back();
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 240,
                    child: InkWell(
                      onTap: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => CheckoutForm()));
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        height: Get.height * 0.15,
                        width: Get.width,
                        child: Card(
                          elevation: 5,
                          child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "A quick and big brown fox jumps over a lazy dog, A quick and big brown fox jumps over a lazy dog, ",
                                  style: TextStyle(color: Colors.black, fontSize: 15),
                                ),
                              )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 80,),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Description",
                    style: TextStyle(fontSize: 20),
                  )),
              SizedBox(height: Get.height * 0.6,),
            ],
          ),
        ),
      ),
    );
  }
}