import 'package:flutter/material.dart';
import 'package:furniture/view/screens/components/furniture_widget.dart';

import 'package:furniture/model_furniture.dart';
import 'package:furniture/view/screens/components/text_widget.dart';

class  HomePage extends StatelessWidget {
  HomePage({super.key});
  List<Furniture> furnitures = [
    Furniture(
         name: 'Bed',
            subtitle: 'King Size Bed',
            color: Color(0xff4BB9FD),
            icon: Icons.bed_sharp,),
    Furniture(
          
            name: 'Chair',
            subtitle: 'King Size Chair',
            color: Color(0xff00CCBB),
            icon: Icons.chair_alt_outlined,
),
    Furniture(
       name: 'Table',
              subtitle: 'King Size Table',
              color: Color(0xff8DABD8),
              icon: Icons.table_bar_outlined),
  
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Column(
          children: [
            SafeArea(
              child: Container(
                margin: const EdgeInsets.all(25),
                width: 375,
                height: 150,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black54),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 23),
                          child: Text(
                            'Top Raled',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        TextWidget(
                          text: 'Buy\nFurniture',
                        )
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 45),
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2016/12/14/08/50/table-1905821_960_720.png',
                        width: 130,
                        height: 100,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return FurnitureWidget(furniture: furnitures[index]);
                },
                itemCount: 3,
              ),
            )
          ],
        ),
      ),
    );
  }
}
