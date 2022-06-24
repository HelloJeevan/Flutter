import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_basic/models/catalog.dart';
import 'package:flutter_basic/utils/routes.dart';
import 'package:flutter_basic/widgets/home_widgets/catalog_header.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/home_widgets/catalog_list.dart';

class HomePage extends StatefulWidget {
  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items= List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {
       
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.cardColor,
      floatingActionButton: FloatingActionButton(onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute ) , 
      backgroundColor: context.theme.buttonColor,
      child: Icon(CupertinoIcons.cart,color: Colors.white,),) ,
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if(CatalogModel.items!=null && CatalogModel.items.isNotEmpty)
                CatalogList().py16().expand()
              else 
                  CircularProgressIndicator().centered().py16(),
                
            ],
          ),
        ),
      ),
      );
  }
}



  