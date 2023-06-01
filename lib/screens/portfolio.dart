import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:video_editors/models/work_model/work_model.dart';
import 'package:video_editors/screens/go_back_widget.dart';
import 'package:video_editors/screens/video_player.dart';
import 'package:video_editors/services/portfolio_services.dart';
import 'package:video_editors/shared/app_theme_shared.dart';

class Portfolio extends StatefulWidget {
  String id;
  Portfolio({super.key, required this.id});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  String category = "All";
  List<String> categoryList = [
    "All",
    "Linear Video Editing",
    "Non linear Video Editing",
    "Offline Editing",
    "The Online Video Editing Process",
    "Cloud based Video Editing",
    "Simple Cuts",
    "Bespoke Editing",
    "Insert Editing"
  ];

  List<WorkModel> workList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialWorkData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemeShared.primaryColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            goBack(context),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  Flexible(
                      flex: 2,
                      child: AppThemeShared.sharedDropDown(
                        borderColor: Colors.white,
                        enabledBorderColor: Colors.white,
                        focusedBorderColor: Colors.white,
                        hintColor: Colors.white,
                        context: context,
                        labelText: 'Select Category',
                        value: category,
                        items: categoryList,
                        onChanged: (value) {
                          setState(() {
                            category = value!;
                            getWorkByCategory(category);
                          });
                        },
                      )),
                  Flexible(
                      flex: 1,
                      child: AppThemeShared.sharedButton(
                        context: context,
                        width: 150,
                        color: Colors.white,
                        buttonText: "Add Work",
                        textColor: AppThemeShared.primaryColor,
                        onTap: () {
                          Navigator.pushNamed(context, '/addWork',
                              arguments: widget.id);
                        },
                      ))
                ],
              ),
            ),
            workList.isEmpty
                ? const Center(
                    child: Text(
                      "No work in this category",
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
                  )
                : ListView.builder(
                    itemCount: workList.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Fluttertoast.showToast(msg: "You touched me");
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                VideoPlayer(
                                  videoId: extractYouTubeVideoId(
                                      workList[index].videoLink!)!,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  "Project: ${workList[index].title!}",
                                  style: TextStyle(
                                    color: AppThemeShared.primaryColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  "Description: ${workList[index].description!}",
                                  style: TextStyle(
                                    color: AppThemeShared.primaryColor,
                                    fontSize: 18,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  "Category: ${workList[index].category!}",
                                  style: TextStyle(
                                    color: AppThemeShared.primaryColor,
                                    fontSize: 18,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  "Client: ${workList[index].clientName!}",
                                  style: TextStyle(
                                    color: AppThemeShared.primaryColor,
                                    fontSize: 18,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  )
          ],
        ),
      )),
    );
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

  initialWorkData() async {
    workList = await PortfolioServices().getWorkById(widget.id);
    setState(() {});
  }

  getWorkByCategory(String categoryC) async {
    workList.clear();
    if (categoryC == "All") {
      workList = await PortfolioServices().getWorkById(widget.id);
    } else {
      workList =
          await PortfolioServices().getWorkByCategory(widget.id, categoryC);
    }

    setState(() {});
  }
}
