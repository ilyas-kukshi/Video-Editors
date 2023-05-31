import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:video_editors/models/resume_model/resume_model.dart';
import 'package:video_editors/models/skills_model/skills_model.dart';
import 'package:video_editors/services/resume_services.dart';
import 'package:video_editors/shared/app_theme_shared.dart';
import 'package:video_editors/shared/slide_in_widget.dart';

class DashboardMain extends StatefulWidget {
  String id;
  DashboardMain({super.key, required this.id});

  @override
  State<DashboardMain> createState() => _DashboardMainState();
}

class _DashboardMainState extends State<DashboardMain> {
  ResumeModel? resumeModel;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // fetchResume(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemeShared.primaryColor,
      body: FutureBuilder<ResumeModel?>(
          future: fetchResume(widget.id),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (!snapshot.hasError) {
                if (snapshot.hasData) {
                  return SafeArea(
                      child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 30),
                        Center(
                          child: SlideInWidget(
                              direction: SlideDirection.top,
                              duration: const Duration(milliseconds: 1200),
                              child: personalnfoCard(context)),
                        ),
                        const SizedBox(height: 20),
                        SlideInWidget(
                            direction: SlideDirection.left,
                            duration: const Duration(milliseconds: 1500),
                            child: educationContainer(context)),
                        const SizedBox(height: 20),
                        SlideInWidget(
                            direction: SlideDirection.left,
                            duration: const Duration(milliseconds: 1800),
                            child: skillContainer(context)),
                        const SizedBox(height: 20),
                        SlideInWidget(
                          direction: SlideDirection.left,
                          duration: const Duration(milliseconds: 2000),
                          child: AppThemeShared.sharedButton(
                            context: context,
                            width: MediaQuery.of(context).size.width * 0.9,
                            borderRadius: 12,
                            buttonText:
                                "Take a look at my Portfolio by clicking here",
                            textColor: AppThemeShared.primaryColor,
                            color: Colors.white,
                            onTap: () {
                              Navigator.pushNamed(context, '/portfolio',
                                  arguments: widget.id);
                            },
                          ),
                        ),
                      ],
                    ),
                  ));
                } else {
                  return const Text(
                    "No Data",
                    style: TextStyle(color: Colors.white),
                  );
                }
              } else {
                return Text(
                  snapshot.error.toString(),
                  style: const TextStyle(color: Colors.white),
                );
              }
            } else {
              return const CircularProgressIndicator();
            }
          }),
    );
  }

  Container skillContainer(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Skills",
                style: TextStyle(
                    color: AppThemeShared.primaryColor,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              alignment: WrapAlignment.start,
              children: resumeModel!.skills!.map((skill) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child: skillCard(skill),
                );
              }).toList(),
            ),
          ],
        ));
  }

  Container skillCard(Skill skill) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppThemeShared.primaryColor),
      ),
      child: Text(
        skill.name!,
        style: TextStyle(
          color: AppThemeShared.primaryColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Container educationContainer(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Text(
            "Education",
            style: TextStyle(
                color: AppThemeShared.primaryColor,
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: resumeModel!.education!.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: educationCard(index),
              );
            },
          ),
        ],
      ),
    );
  }

  Container educationCard(int index) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppThemeShared.primaryColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            resumeModel!.education![index].collegeName!,
            style: TextStyle(
                color: AppThemeShared.primaryColor,
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
          Text(
            resumeModel!.education![index].degree!,
            style: TextStyle(
              color: AppThemeShared.primaryColor,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  Container personalnfoCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Text(
            resumeModel!.personalInfo!.name!,
            style: TextStyle(
                color: AppThemeShared.primaryColor,
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          Text(
            resumeModel!.personalInfo!.phoneNumber!,
            style: TextStyle(
              color: AppThemeShared.primaryColor,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            resumeModel!.personalInfo!.email!,
            style: TextStyle(
              color: AppThemeShared.primaryColor,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            resumeModel!.personalInfo!.city!,
            style: TextStyle(
              color: AppThemeShared.primaryColor,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }

  Future<ResumeModel?> fetchResume(String userId) async {
    final response = await ResumeServices().fetchResume(userId);
    resumeModel = ResumeModel.fromJson(jsonDecode(response!));
    return resumeModel;
  }
}
