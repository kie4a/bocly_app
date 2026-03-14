
import 'package:app/constants.dart';
import 'package:app/core/utils/assets.dart';
import 'package:app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSelerListViewItem extends StatelessWidget {
  const BestSelerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 3.9,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: const AssetImage(AssetsDate.testImage),
                ),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  "Harry Potter and the Goblet of Fire",
                  style: Styles.textStyle20.copyWith(
                    fontWeight: FontWeight.bold,
                    fontFamily: kGtSectraFine
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            const  SizedBox(height:6,),
              Text("J.K. Rowling",style: Styles.textStyle16,)
, const SizedBox(height: 6,),
              Row(children: [
                Text("19.99 €",style: Styles.textStyle22.copyWith(
fontWeight: FontWeight.bold
                ),)
              ],)
            ],
          ),
        ],
      ),
    );
  }
}
