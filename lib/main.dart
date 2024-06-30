import 'dart:convert';
import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/JustForTest.dart';
import 'package:untitled1/knopka.dart';
import 'package:untitled1/subject_page.dart';
import 'package:untitled1/MainSubjectPage.dart';
import 'package:untitled1/GeneralTest.dart';
void main()=>runApp( MaterialApp(
  home:
      //GeneralTest(),
  MainSubjectPage(appbartxt: 'CHOOSE THE SUBJECT',jsonChoice: 'assets/Containers.json',),
  //SubjectPage(),
  //Azamat(),
)
);
