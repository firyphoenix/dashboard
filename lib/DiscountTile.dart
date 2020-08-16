import 'package:flutter/material.dart';

class DiscountTile extends StatelessWidget {
  String imgurl;
  String desc;
  String expiry;
  String shopName;
  String shopCategory;
  DiscountTile({this.imgurl : "https://previews.123rf.com/images/olechkaolia/olechkaolia1605/olechkaolia160500073/56633284-discount-sale-paper-banner-design-big-sale-tag-sale-poster-50-off-special-offer-tag-sale-vector-illu.jpg",this.desc,this.expiry,this.shopName,this.shopCategory});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black),
        image: DecorationImage(
          image: NetworkImage(imgurl),
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(
        children: <Widget>[
          //Shop Name Goes Here
          Positioned(
            top: 4,
            left: 4,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Material(
                  child: SizedBox(
                    height: 40,
                    width: 40,
                  ),
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(14),
                ),
                SizedBox(width: 8,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[

                    Text(shopName,style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w500,fontSize: 22),),

                    Text(shopCategory,style: TextStyle(color: Colors.black45,fontWeight: FontWeight.w500,fontSize: 12),),
                  ],
                )
              ],
            ),
          ),

          //Multiple Images access goes here
          Positioned(
            bottom: MediaQuery.of(context).size.width /2 - 30,
            right: 2,
            child: Icon(Icons.chevron_right,color: Colors.blueGrey,size:40 ,),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.width /2 - 30,
            left: 2,
            child: Icon(Icons.chevron_left,color: Colors.blueGrey,size:40 ,),
          ),



          //Description of the discount goes here
          Positioned(
            bottom:0,
            height: 70,
            width: MediaQuery.of(context).size.width* 0.95,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black45,
                borderRadius: BorderRadius.circular(4)
              ),
              padding: EdgeInsets.all(12),

              child: Text("%5 Cashback on any of your purchase from ANK Shop,check your nearest shop",style: TextStyle(wordSpacing:4,color: Colors.white,fontWeight: FontWeight.bold),),
            ),
          ),
          //Expiry Date of the offer goes here
          Positioned(
            bottom: 4,
            left: 12,
            child: Text("Exp Aug 30,2020",style: TextStyle(color: Colors.white,fontSize: 12),),
          ),

          //Favorites and Share button goes here
          Positioned(
            right: 12,
            bottom: 4,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text("156",style: TextStyle(color: Colors.white,fontSize: 10),),
                    Text("Favorites",style: TextStyle(color: Colors.white,fontSize: 10))
                  ],
                ),
                SizedBox(width: 2,),
                Icon(Icons.star,color: Colors.white,),
                SizedBox(width: 2,),
                Icon(Icons.share,color: Colors.white,)
              ],
            ),
          ),

        ],
      ),
    );
  }
}
