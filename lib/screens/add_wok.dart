// ignore_for_file: must_be_immutable, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:video_editors/models/work_model/work_model.dart';
import 'package:video_editors/screens/go_back_widget.dart';
import 'package:video_editors/services/portfolio_services.dart';
import 'package:video_editors/shared/app_theme_shared.dart';
import 'package:video_editors/shared/dialogs.dart';
import 'package:video_editors/shared/utility.dart';

class AddWork extends StatefulWidget {
  String id;
  AddWork({super.key, required this.id});

  @override
  State<AddWork> createState() => _AddWorkState();
}

class _AddWorkState extends State<AddWork> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController linkController = TextEditingController();
  TextEditingController projectNameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController clientNameController = TextEditingController();
  String category = 'Linear Video Editing';
  List<String> categoryList = [
    "Linear Video Editing",
    "Non linear Video Editing",
    "Offline Editing",
    "The Online Video Editing Process",
    "Cloud based Video Editing",
    "Simple Cuts",
    "Bespoke Editing",
    "Insert Editing"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemeShared.primaryColor,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 15),
                Align(alignment: Alignment.centerLeft, child: goBack(context)),
                const SizedBox(height: 20),
                const Text(
                  "Add Your Work",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Center(
                  child: AppThemeShared.textFormField(
                    context: context,
                    style: const TextStyle(color: Colors.white),
                    hintText: 'Youtube  Video Link',
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
                    controller: linkController,
                    validator: Utility().youTubeLinkValidator,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    borderColor: Colors.white,
                    enabledBorderColor: Colors.white,
                    focusedBorderColor: Colors.white,
                    disabledBorderColor: Colors.white,
                    onFieldSubmitted: (p0) => extractYouTubeVideoId(p0),
                  ),
                ),
                Text(
                  'Your youtube id is: ${extractYouTubeVideoId(linkController.text)}',
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
                const SizedBox(height: 12),
                Center(
                  child: AppThemeShared.textFormField(
                    context: context,
                    style: const TextStyle(color: Colors.white),
                    hintText: 'Project name',
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
                    controller: projectNameController,
                    validator: Utility.nameValidator,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    borderColor: Colors.white,
                    enabledBorderColor: Colors.white,
                    focusedBorderColor: Colors.white,
                    disabledBorderColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 12),
                Center(
                  child: AppThemeShared.textFormField(
                    context: context,
                    style: const TextStyle(color: Colors.white),
                    hintText: 'Description',
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
                    controller: descriptionController,
                    validator: Utility.nameValidator,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    borderColor: Colors.white,
                    enabledBorderColor: Colors.white,
                    focusedBorderColor: Colors.white,
                    disabledBorderColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 12),
                Center(
                  child: AppThemeShared.textFormField(
                    context: context,
                    style: const TextStyle(color: Colors.white),
                    hintText: 'Client Name',
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
                    controller: clientNameController,
                    validator: Utility.nameValidator,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    borderColor: Colors.white,
                    enabledBorderColor: Colors.white,
                    focusedBorderColor: Colors.white,
                    disabledBorderColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 12),
                const SizedBox(height: 12),
                AppThemeShared.sharedDropDown(
                  borderColor: Colors.white,
                  enabledBorderColor: Colors.white,
                  focusedBorderColor: Colors.white,
                  widthPercent: 0.89,
                  hintColor: Colors.white,
                  context: context,
                  labelText: 'Select Category',
                  value: category,
                  items: categoryList,
                  onChanged: (value) {
                    setState(() {
                      category = value!;
                    });
                  },
                ),
                const SizedBox(height: 20),
                AppThemeShared.sharedButton(
                  context: context,
                  color: Colors.white,
                  textColor: AppThemeShared.primaryColor,
                  width: MediaQuery.of(context).size.width * 0.89,
                  buttonText: "Save Work",
                  onTap: () {
                    final valid = _formKey.currentState!.validate();
                    if (valid) {
                      DialogShared.loadingDialog(context, "Saving Work");
                      addWorkService();
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  addWorkService() async {
    final response = await PortfolioServices().createWork(WorkModel(
      userId: widget.id,
      title: projectNameController.text,
      description: descriptionController.text,
      clientName: clientNameController.text,
      videoLink: linkController.text,
      category: category,
    ));
    if (response != null) {
      Navigator.pop(context);
      Navigator.pop(context);
    }
  }

  String? extractYouTubeVideoId(String? value) {
    if (value != null && value.isNotEmpty) {
      RegExp regExp = RegExp(
        r'^((?:https?:)?\/\/)?((?:www|m)\.)?((?:youtube(-nocookie)?\.com|youtu.be))(\/(?:[\w\-]+\?v=|embed\/|live\/|v\/)?)([\w\-]+)(\S+)?$',
        caseSensitive: false,
        multiLine: false,
      );

      Match? match = regExp.firstMatch(value);
      if (match != null) {
        String? videoId = match.group(6);
        return videoId;
      }
    }

    return null; // Return null if the link is invalid or empty
  }
}
