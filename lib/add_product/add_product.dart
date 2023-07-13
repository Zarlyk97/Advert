// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:advert/components/custom_text_field.dart';
import 'package:advert/constants/app_sizes.dart';
import 'package:advert/services/date_time_service.dart';

import 'package:flutter/material.dart';

class AddProduct extends StatelessWidget {
  AddProduct({super.key});

  final _title = TextEditingController();
  final _description = TextEditingController();
  final _name = TextEditingController();
  final _dateTime = TextEditingController();
  final _phoneNumber = TextEditingController();
  final _address = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('AddProduct'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            CustomTextField(
              hintText: 'title',
              controller: _title,
            ),
            AppSizes.height10,
            CustomTextField(
              hintText: "description",
              controller: _description,
              maxLines: 5,
            ),
            CustomTextField(
              prefixIcon: Center(
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.photo_camera))),
              controller: _description,
              maxLines: 5,
            ),
            AppSizes.height10,
            CustomTextField(
              hintText: 'name',
              controller: _name,
            ),
            AppSizes.height10,
            CustomTextField(
                hintText: 'dateTime',
                controller: _dateTime,
                onTap: () async {
                  await DateTimeService.showDateTimePicker(context, (value) {
                    _dateTime.text = value.toString();
                  });
                }),
            AppSizes.height10,
            CustomTextField(
              hintText: 'phoneNumber',
              controller: _phoneNumber,
            ),
            AppSizes.height10,
            CustomTextField(
              hintText: 'address',
              controller: _address,
            ),
          ],
        ),
      ),
    );
  }
}
