import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_editors/models/education_model/education_model.dart';
import 'package:video_editors/models/personal_info_model/personal_info_model.dart';
import 'package:video_editors/models/resume_model/resume_model.dart';
import 'package:video_editors/models/skills_model/skills_model.dart';
import 'package:video_editors/services/resume_services.dart';
import 'package:video_editors/shared/app_theme_shared.dart';
import 'package:video_editors/shared/utility.dart';

// ignore: must_be_immutable
class BuildResume extends StatefulWidget {
  String id;
  BuildResume({super.key, required this.id});

  @override
  State<BuildResume> createState() => _BuildResumeState();
}

class _BuildResumeState extends State<BuildResume> {
  List<Education> educationList = [];
  List<Skill> skillList = [];

  final GlobalKey<FormState> _personalInfoFormKey = GlobalKey();
  TextEditingController nameController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController phnNoController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemeShared.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Form(
                    key: _personalInfoFormKey,
                    child: Column(
                      children: [
                        Text(
                          'Personal Info',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: AppThemeShared.primaryColor),
                        ),
                        const SizedBox(height: 8),
                        AppThemeShared.textFormField(
                          context: context,
                          hintText: 'Full Name',
                          controller: nameController,
                          validator: Utility.nameValidator,
                          hintStyle: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  color: AppThemeShared.primaryColor
                                      .withOpacity(0.7)),
                          textInputAction: TextInputAction.next,
                        ),
                        const SizedBox(height: 8),
                        AppThemeShared.textFormField(
                          context: context,
                          textInputAction: TextInputAction.next,
                          hintText: 'City',
                          controller: cityController,
                          validator: Utility.nameValidator,
                          hintStyle: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  color: AppThemeShared.primaryColor
                                      .withOpacity(0.7)),
                        ),
                        const SizedBox(height: 8),
                        AppThemeShared.textFormField(
                          context: context,
                          hintText: 'Phone Number',
                          controller: phnNoController,
                          validator: Utility.phoneNumberValidator,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(10)
                          ],
                          textInputAction: TextInputAction.next,
                          hintStyle: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  color: AppThemeShared.primaryColor
                                      .withOpacity(0.7)),
                        ),
                        const SizedBox(height: 8),
                        AppThemeShared.textFormField(
                            context: context,
                            hintText: 'Email',
                            textInputAction: TextInputAction.done,
                            controller: emailController,
                            validator: Utility.emailValidator)
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Education',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: AppThemeShared.primaryColor),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.89,
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: educationList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: AppThemeShared.primaryColor,
                                        width: 2.5)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      educationList[index].collegeName!,
                                      style: TextStyle(
                                          color: AppThemeShared.primaryColor,
                                          fontSize: 18),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      educationList[index].degree!,
                                      style: TextStyle(
                                          color: AppThemeShared.primaryColor,
                                          fontSize: 18),
                                    ),
                                    const SizedBox(height: 15),
                                    AppThemeShared.sharedButton(
                                      context: context,
                                      width: MediaQuery.of(context).size.width *
                                          0.89,
                                      height: 40,
                                      buttonText: 'Remove',
                                      onTap: () {
                                        educationList.removeAt(index);
                                        setState(() {});
                                      },
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 8),
                      educationCard()
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Skills',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: AppThemeShared.primaryColor),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.89,
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: skillList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: AppThemeShared.primaryColor,
                                        width: 2.5)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      skillList[index].name!,
                                      style: TextStyle(
                                          color: AppThemeShared.primaryColor,
                                          fontSize: 18),
                                    ),
                                    const SizedBox(height: 8),
                                    // Text(
                                    //   skillList[index].expertiseLevel!,
                                    //   style: TextStyle(
                                    //       color: AppThemeShared.primaryColor,
                                    //       fontSize: 18),
                                    // ),
                                    const SizedBox(height: 15),
                                    AppThemeShared.sharedButton(
                                      context: context,
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      height: 40,
                                      buttonText: 'Remove',
                                      onTap: () {
                                        skillList.removeAt(index);
                                        setState(() {});
                                      },
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 8),
                      skillsCard()
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              AppThemeShared.sharedButton(
                context: context,
                width: MediaQuery.of(context).size.width * 0.95,
                buttonText: "Save Profile",
                onTap: () {
                  final valid = _personalInfoFormKey.currentState!.validate();
                  if (valid &&
                      educationList.isNotEmpty &&
                      skillList.isNotEmpty) {
                    ResumeServices().createResume(ResumeModel(
                        userId: widget.id,
                        education: educationList,
                        skills: skillList,
                        personalInfo: PersonalInfo(
                            name: nameController.text,
                            email: emailController.text,
                            phoneNumber: phnNoController.text,
                            city: cityController.text)));
                  }
                },
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget educationCard() {
    TextEditingController collegeNameController = TextEditingController();
    TextEditingController degreeController = TextEditingController();

    return Column(
      children: [
        AppThemeShared.textFormField(
          context: context,
          hintText: 'College Name',
          textInputAction: TextInputAction.next,
          controller: collegeNameController,
          hintStyle: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: AppThemeShared.primaryColor.withOpacity(0.7)),
        ),
        const SizedBox(height: 8),
        AppThemeShared.textFormField(
          context: context,
          hintText: 'Degree',
          textInputAction: TextInputAction.done,
          controller: degreeController,
          hintStyle: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: AppThemeShared.primaryColor.withOpacity(0.7)),
        ),
        const SizedBox(height: 8),
        AppThemeShared.sharedButton(
          context: context,
          width: MediaQuery.of(context).size.width * 0.85,
          height: 50,
          buttonText: "Save",
          onTap: () {
            educationList.add(Education(
                collegeName: collegeNameController.text,
                degree: degreeController.text));

            collegeNameController.clear();
            degreeController.clear();

            setState(() {});
          },
        ),
      ],
    );
  }

  Widget skillsCard() {
    // TextEditingController skillController = TextEditingController();
    TextEditingController collegeNameController = TextEditingController();
    
    return Column(
      children: [
        const SizedBox(height: 8),
        AppThemeShared.textFormField(
            context: context,
            controller: collegeNameController,
            hintText: 'Skill',
            hintStyle: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: AppThemeShared.primaryColor.withOpacity(0.7))),
        const SizedBox(height: 8),
        // Wrap(
        //   children: skillLevels.map((value) {
        //     return Padding(
        //       padding: const EdgeInsets.symmetric(horizontal: 8.0),
        //       child: GestureDetector(
        //         onTap: () {
        //           setState(() {
        //             expertiseLevel = value;
        //             print(value);
        //           });
        //         },
        //         child: Container(
        //           padding:
        //               const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        //           decoration: BoxDecoration(
        //               color: value == expertiseLevel
        //                   ? AppThemeShared.primaryColor
        //                   : Colors.white,
        //               borderRadius: BorderRadius.circular(12),
        //               border: Border.all(color: AppThemeShared.primaryColor)),
        //           child: Text(
        //             value,
        //             style: Theme.of(context).textTheme.titleSmall!.copyWith(
        //                 color: value == expertiseLevel
        //                     ? Colors.white
        //                     : AppThemeShared.primaryColor),
        //           ),
        //         ),
        //       ),
        //     );
        //   }).toList(),
        // ),
        const SizedBox(height: 8),
        AppThemeShared.sharedButton(
          context: context,
          height: 50,
          width: MediaQuery.of(context).size.width * 0.85,
          buttonText: "Save",
          onTap: () {
            skillList.add(Skill(
              name: collegeNameController.text,
              // expertiseLevel: expertiseLevel
            ));

            collegeNameController.clear();

            setState(() {});
          },
        )
      ],
    );
  }
}
