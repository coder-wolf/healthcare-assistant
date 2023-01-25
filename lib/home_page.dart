import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_assistant/dropdown_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectedDate;
  callBack(String value) {
    setState(() {
      selectedDate = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(17.5.w),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 25.r,
                                backgroundImage: NetworkImage(
                                  "https://i.pravatar.cc/300",
                                ),
                              ),
                              SizedBox(
                                width: 13.w,
                              ),
                              // name
                              Text(
                                "John Doe",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          // side drawer button
                          IconButton(
                            icon: Icon(Icons.menu),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      // big text, says Health Overview
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Health Overview",
                            style: TextStyle(
                              fontSize: 30.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      // small grey text, says Your Daily Health Statistics
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Your Daily Health Statistics",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      // card. rounded border inside 1 pie chart, and 2 rows of texts
                      // aspect ratio is 2:2.5
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomCard(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // dropdown menu
                              Container(
                                width: 152.w,
                                child: Padding(
                                  padding: EdgeInsets.all(2.w),
                                  child: SearchDropdownOption(
                                      fieldTitle: selectedDate ?? "Today",
                                      dropDownItems: [
                                        "Today",
                                        "Yesterday",
                                        "Last week"
                                      ],
                                      onChanged: callBack),
                                ),
                              ),
                              SizedBox(
                                height: 22.w,
                              ),
                              // 4 items, 2 by 2. circle buttons
                              Row(
                                children: [
                                  // circle button
                                  CusotmButton(
                                      icon:
                                          Icons.download_for_offline_outlined),
                                  SizedBox(
                                    width: 22.w,
                                  ),
                                  CusotmButton(icon: CupertinoIcons.doc_chart),
                                ],
                              ),
                              SizedBox(
                                height: 15.w,
                              ),
                              // 4 items, 2 by 2. circle buttons
                              Row(
                                children: [
                                  // circle button
                                  CusotmButton(icon: Icons.edit_outlined),
                                  SizedBox(
                                    width: 22.w,
                                  ),
                                  CusotmButton(
                                      icon: CupertinoIcons.chart_pie_fill),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 22.w,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomSmallerCard(
                            title: "Water",
                            icon: Icons.water_drop_outlined,
                            quantity: "2.1",
                            unit: "Liters",
                          ),
                          CustomSmallerCard(
                            title: "Calories",
                            icon: Icons.local_pizza_outlined,
                            quantity: "1.2k",
                            unit: "kCal",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.w,
                      ),
                      Stack(
                        alignment: Alignment(-1, 1),
                        children: [
                          Container(
                            width: 254.5.w,
                            // width: double.infinity,
                            height: 90.w,
                            decoration: BoxDecoration(
                                color: Color(0xFFDDD2F8),
                                borderRadius: BorderRadius.circular(21.r)),
                          ),
                          Container(
                            // width: 270.w,
                            width: double.infinity,
                            height: 30.w,
                            decoration: BoxDecoration(
                                color: Color(0xFFDDD2F8),
                                borderRadius: BorderRadius.circular(21.r)),
                          ),
                          Container(
                            width: 285.w,
                            // width: double.infinity,
                            height: 70.w,
                            decoration: BoxDecoration(
                                color: Color(0xFFDDD2F8),
                                borderRadius: BorderRadius.circular(21.r)),
                          ),
                          // TODO - uncomment later
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              height: 60.w,
                              width: 70.w,
                              decoration: BoxDecoration(
                                color: Color(0xFFFAFAFA),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(32.r),
                                  // topRight:
                                ),
                              ),
                              child: Container(
                                child: Center(
                                    child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 40.w,
                                      height: 40.w,
                                      child: Center(
                                        child: Icon(
                                          Icons.more_horiz,
                                          color: Colors.white,
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(1000.r)),
                                    ),
                                    Container(),
                                  ],
                                )),
                              ),
                            ),
                          ),
                          Container(
                            // width: 180.w,
                            height: 90.w,
                            // color: Colors.red,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                InsideTextData(
                                    title: "Pulse",
                                    icon: Icons.favorite_border,
                                    quantity: "78",
                                    unit: "BPM"),
                                InsideTextData(
                                    title: "Weight",
                                    icon: Icons.scale_rounded,
                                    quantity: "64",
                                    unit: "KG")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CusotmButton extends StatelessWidget {
  CusotmButton({
    Key? key,
    this.icon,
  }) : super(key: key);
  var icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.w,
      height: 50.w,
      decoration: BoxDecoration(
        color: Color(0xFFDDD2F8),
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: Center(
        child: Icon(icon),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 152.w,
      height: 175.h,
      decoration: BoxDecoration(
        color: Colors.white,
        // color: Color(0xFFDDD2F8),
        borderRadius: BorderRadius.circular(23.r),
        border: Border.all(
          color: Colors.grey.withOpacity(0.2),
          width: 1.3.w,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // pie chart
            Container(
              width: 90.w,
              height: 90.w,
              decoration: BoxDecoration(
                // color: Color(0xFFDDD2F8),
                color: Colors.white,
                borderRadius: BorderRadius.circular(50.r),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.2),
                  width: 5.w,
                ),
              ),
              child: Center(
                child: Text(
                  "80%",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "8k",
                  style: TextStyle(
                    fontSize: 34.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "steps",
                  style: TextStyle(color: Colors.green.shade900),
                ),
              ],
            ),
            Text(
              "Out of 10,000",
              style: TextStyle(color: Colors.green.shade900),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSmallerCard extends StatelessWidget {
  CustomSmallerCard({
    Key? key,
    required this.title,
    required this.icon,
    required this.quantity,
    required this.unit,
  }) : super(key: key);
  String title;
  var icon;
  String quantity;
  String unit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 152.w,
      height: 100.h,
      decoration: BoxDecoration(
        color: Colors.white,
        // color: Color(0xFFDDD2F8),
        borderRadius: BorderRadius.circular(23.r),
        border: Border.all(
          color: Colors.grey.withOpacity(0.2),
          width: 1.3.w,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // pie chart
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(icon),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  quantity,
                  style: TextStyle(
                    fontSize: 34.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 4.w,
                ),
                Text(unit),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class InsideTextData extends StatelessWidget {
  InsideTextData({
    Key? key,
    required this.title,
    required this.icon,
    required this.quantity,
    required this.unit,
  }) : super(key: key);
  String title;
  var icon;
  String quantity;
  String unit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.w,
      height: 90.h,
      decoration: BoxDecoration(
        // color: Colors.white,
        // color: Color(0xFFDDD2F8),
        borderRadius: BorderRadius.circular(23.r),
        // border: Border.all(
        //   color: Colors.grey.withOpacity(0.4),
        //   width: 1.3.w,
        // ),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // pie chart
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    // color: Color(0xFF7F749C),
                  ),
                ),
                Icon(
                  icon,
                  // color: Colors.grey[500],
                  color: Color.fromARGB(255, 117, 104, 150),
                  size: 18.w,
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  quantity,
                  style: TextStyle(
                    fontSize: 34.sp,
                    // color: Color(0xFF7F749C),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 6.w,
                ),
                Text(
                  unit,
                  style: TextStyle(
                    // color: Color(0xFF7F749C),
                    color: Color.fromARGB(255, 117, 104, 150),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
