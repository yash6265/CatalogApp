import 'package:chat_gpt/wigets/addtocart.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'models/catalog.dart';

class homeDetail extends StatelessWidget {
  final Item catalog;
  const homeDetail({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: Vx.mH8,
        children: [
          "\$${catalog.price}".text.xl3.bold.make(),
          AddToCart(
            catalog: catalog,
          ).wh(120, 50)
        ],
      ).p(15),
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: Image.network(catalog.image),
          ).h32(context),
          Expanded(
              child: VxArc(
            height: 30.0,
            arcType: VxArcType.CONVEY,
            edge: VxEdge.TOP,
            child: Container(
              color: Colors.grey[200],
              width: context.screenWidth,
              child: Column(
                children: [
                  catalog.name.text.xl4.bold.color(Colors.deepPurple).make(),
                  catalog.desc.text.xl.color(Colors.black).make(),
                  5.heightBox,
                  "Dolores eDuo takimata et justo lorem diam diam sed amet. Voluptua eirmod vero elitr tempor rebum ea. Sit et sea nonumy ipsum ut dolor amet. Duo consetetur sit sed ipsum at ut dolore ipsum. Stet amet invidunt eirmod et, no et lorem sanctus diam ipsum dolore duo. Dolore vero clita eos.st ipsum sit takimata labore erat diam takimata at. "
                      .text
                      .make()
                      .p(10)
                ],
              ).py(50),
            ),
          ))
        ]),
      ),
    );
  }
}
