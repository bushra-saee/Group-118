import 'package:flutter/material.dart';
import 'package:furniture/model_furniture.dart';

class FurnitureWidget extends StatelessWidget {
  final Furniture furniture;

  const FurnitureWidget(
      {required this.furniture});

  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: furniture.color),
            height: 65,
            width: 375,
            child: Row(
              children: [
                const SizedBox(
                  width: 12,
                ),
                Icon(
                furniture.icon
                  ,
                  size: 55,
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        furniture.name!,
                        style: const TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 15),
                      ),
                      Text(furniture.subtitle !),
                    ],
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Icon(Icons.delete_outline),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
