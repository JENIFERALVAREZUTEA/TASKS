import 'package:flutter/material.dart';
import 'package:tasks/ui/widgets/item_category_widget.dart';

class ItemTaskWidget extends StatelessWidget {
  const ItemTaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return    Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ItemCategoryWidget(
                    text: "Datos Personal",
                  ),
                    Text("Un dato puede ser un carácter leıdo de un teclado, ",),
                   Text("Un dato puede ser un carácter leıdo de un teclado, ",),
                ],
                
                ),
              );
  }
}