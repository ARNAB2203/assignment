import 'package:flutter/material.dart';

class SpaceXLaunchDataModel {
  final String strId;
  final String strIconId;
  final String strLaunchOption;
  final String strTitle;
  final String strSpaceNo;
  final String strSpaceDate;

  SpaceXLaunchDataModel(
    this.strId,
    this.strIconId,
    this.strLaunchOption,
    this.strTitle,
    this.strSpaceNo,
    this.strSpaceDate,
  );
}

class SpaceXUpcomingDataModel {
  final String strId;
  final String strIconId;
  final String strLaunchOption;
  final String strTitle;
  final String strSpaceNo;
  final String strSpaceDate;
  final String strLaunchDate;
  final String strLaunchSite;
  final String strCountDown;

  SpaceXUpcomingDataModel(
    this.strId,
    this.strIconId,
    this.strLaunchOption,
    this.strTitle,
    this.strSpaceNo,
    this.strSpaceDate,
    this.strLaunchDate,
    this.strLaunchSite,
    this.strCountDown,
  );
}

class SpaceXRocketDataModel {
  final String strId;
  final String strIconId;
  final String strRocketOption;
  final String strTitle;
  final String strActiveInActiveStatus;
  final String strLaunchSite;
  final String strLaunchDate;
  final String strDetails;
  final String strType;
  final String strYoutubeUrl;
  final String strFirstStage;
  final String strSecondStage;
  final String strStatus;
  final List<String> listImgUrl;

  SpaceXRocketDataModel(
    this.strId,
    this.strIconId,
    this.strRocketOption,
    this.strTitle,
    this.strActiveInActiveStatus,
    this.strLaunchSite,
    this.strLaunchDate,
    this.strDetails,
    this.strType,
    this.strYoutubeUrl,
    this.strFirstStage,
    this.strSecondStage,
    this.strStatus,
    this.listImgUrl,
  );
}

List<SpaceXRocketDataModel> spacex_rockets_data = [
  SpaceXRocketDataModel(
    "R001",
    "assets/falconsat01.png",
    "ROCKET",
    "Falcon 1",
    "Inactive",
    "CCAES SLC 40",
    "16-12-2014",
    "Last launch of the original Falcon 9 v1.0 launch vehicle",
    "V1.0",
    "https://youtube.com",
    "Cores: 4",
    "Payloads: 150kg",
    "Success",
    ["assets/falconsat01.png, assets/falconsat01.png, assets/falconsat01.png, assets/falconsat01.png"],
  ),
  SpaceXRocketDataModel(
    "R002",
    "assets/falcon09.png",
    "ROCKET",
    "Falcon 9",
    "Active",
    "CCAES SLC 40",
    "16-12-2014",
    "Cape Canaveral Air Force Station Space LAUNCH Complex 40",
    "V1.0",
    "https://youtube.com",
    "Cores: 4",
    "Payloads: 150kg",
    "",
    ["assets/falconsat01.png, assets/falconsat01.png, assets/falconsat01.png, assets/falconsat01.png"],
  ),
  SpaceXRocketDataModel(
    "R003",
    "assets/demosat02.png",
    "ROCKET",
    "Big Falcon Rocket",
    "Inactive",
    "CCAES SLC 40",
    "16-12-2014",
    "Cape Canaveral Air Force Station Space LAUNCH Complex 40",
    "V1.0",
    "https://youtube.com",
    "Cores: 4",
    "Payloads: 150kg",
    "Success",
    ["assets/falconsat01.png, assets/falconsat01.png, assets/falconsat01.png, assets/falconsat01.png"],
  ),
];

List<SpaceXUpcomingDataModel> spacex_upcoming_data = [
  SpaceXUpcomingDataModel(
    "U001",
    "assets/crs.png",
    "LAUNCH",
    "Starlink 2",
    "CCAES SLC 40",
    "16-12-2014",
    "Thu Oct 17 5:30:00 2019",
    "Cape Canaveral Air Force Station Space LAUNCH Complex 40",
    "5 Hrs 30 Mins more...",
  ),
];

List<SpaceXLaunchDataModel> spacex_launches_data = [
  SpaceXLaunchDataModel(
    "L001",
    "assets/falconsat01.png",
    "LAUNCH",
    "Starlink 2",
    "CCAES SLC 40",
    "16-12-2014",
  ),
  SpaceXLaunchDataModel(
    "L002",
    "assets/falcon9.png",
    "LAUNCH",
    "DemoSat",
    "AAAES SLC 40",
    "06-07-2018",
  ),
  SpaceXLaunchDataModel(
    "L003",
    "assets/demosat02.png",
    "LAUNCH",
    "Falcon 9 Test",
    "CCAES SEC 40",
    "18-03-2019",
  ),
  SpaceXLaunchDataModel(
    "L004",
    "assets/crs.png",
    "LAUNCH",
    "CRS 2",
    "CAAES SLC 40",
    "18-12-2019",
  ),
];
