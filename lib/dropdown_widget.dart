import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchDropdownOption extends StatefulWidget {
  SearchDropdownOption({
    Key? key,
    required this.fieldTitle,
    required this.dropDownItems,
    required this.onChanged,
    // required this.searchController,
  }) : super(key: key);
  String fieldTitle;
  List dropDownItems;
  Function onChanged;

  // text controller
  // TextEditingController searchController;

  @override
  State<SearchDropdownOption> createState() => _SearchDropdownOptionState();
}

class _SearchDropdownOptionState extends State<SearchDropdownOption> {
  var selectedItem;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 40.h,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey.withOpacity(0.2),
            width: 1.3.w,
          ),
          // border: ,
          borderRadius: BorderRadius.circular(30.r),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.grey.withOpacity(0.4),
          //     spreadRadius: 0.00005,
          //     blurRadius: 10,
          //     // offset: Offset(0, 3),
          // ),
          // ],
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(10.w),
            child: DropdownButton(
              value: selectedItem,
              underline: SizedBox(),
              isExpanded: true,
              hint: Text(
                widget.fieldTitle,
              ),
              items: widget.dropDownItems.map((value) {
                return DropdownMenuItem(
                  child: Text(
                    value,
                    style: TextStyle(),
                  ),
                  value: value,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedItem = value;
                });
                widget.onChanged(value);
              },
            ),
          ),
        ),
      ),
    );
  }
}
