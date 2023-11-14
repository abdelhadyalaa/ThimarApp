import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalletPaid extends StatelessWidget {
  const WalletPaid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: IconButton(
          onPressed: () {},
          icon: Image.asset("assets/images/greenarrow.png"),
        ),
      ),
      title: Text(
        "شحن المحفظة",
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor),
      ),
      trailing: Text("27,يونيو,2021"),
      subtitle: Text(
        "255 ر.س",
        style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 24),
      ),
    );
  }
}

class WalletAndPaid extends StatelessWidget {
  const WalletAndPaid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List images = [
      "https://images.vanityfair.it/gallery/24988/Big/d5a0e91a-7264-4911-ac10-6c62768a8a57.jpeg",
      "https://www.vitatree.com/hubfs/shutterstock_250834906.jpeg",
      "https://fitnesspell.com/wp-content/uploads/2018/06/watermelon.png",
      "https://avatars.mds.yandex.net/i?id=a8f6f160ea438a27dfff5172c8675035a337b786-9657256-images-thumbs&n=13",
    ];
    var text = images.length - 3;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/redarrow.png",
                width: 25.w,
                height: 25.h,
              ),
              Text(
                "دفعت مقابل هذا الطلب",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Theme.of(context).primaryColor),
              ),
              Spacer(),
              Text("27,يونيو,2021"),
            ],
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Text(
              "طلب #4587",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Row(
              children: [
                ...List.generate(
                  3,
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        images[index],
                        width: 25.w,
                        height: 25.h,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                if (images.length >= 4)
                  Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(.13),
                        borderRadius: BorderRadius.circular(16)),
                    width: 25.w,
                    height: 25.h,
                    child: Center(
                        child: Text(
                      "+$text",
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    )),
                  ),
                Spacer(),
                Text(
                  "255 ر.س",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor, fontSize: 13),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
