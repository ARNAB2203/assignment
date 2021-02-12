import 'package:flutter/material.dart';
import 'package:spacex/spacex_data_model.dart';

import 'carouselcard.dart';

class RocketDetailsPage extends StatelessWidget {
  final SpaceXRocketDataModel spacex_rockets_data;

  RocketDetailsPage(this.spacex_rockets_data);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.black,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 50,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(
                Icons.share,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Container(
          margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    spacex_rockets_data.strIconId,
                    width: 90,
                    height: 90,
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Text(
                    "ROCKET",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Text(
                    spacex_rockets_data.strTitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Text(
                    "LAUNCH DATE",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Text(
                    spacex_rockets_data.strLaunchDate,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Text(
                    "LAUNCH SITE",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Text(
                    spacex_rockets_data.strLaunchSite,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Text(
                    "LAUNCH STATUS",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Text(
                    spacex_rockets_data.strStatus,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Text(
                    "DETAILS",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Text(
                        spacex_rockets_data.strDetails,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Text(
                    "ROCKET SUMMARY",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Text(
                    spacex_rockets_data.strTitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Text(
                    "TYPE",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Text(
                    spacex_rockets_data.strType,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Text(
                              "FIRST STAGE",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 10.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: size.height * 0.01),
                          Container(
                            margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Text(
                              spacex_rockets_data.strFirstStage,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Text(
                              "SECOND STAGE",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 10.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: size.height * 0.01),
                          Container(
                            margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Text(
                              spacex_rockets_data.strSecondStage,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Text(
                              "YOUTUBE",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 10.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: size.height * 0.01),
                          Container(
                            margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  side: BorderSide(color: Colors.red)),
                              onPressed: () {},
                              color: Colors.red,
                              textColor: Colors.white,
                              child: Icon(Icons.pause_outlined),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Text(
                              "REDDIT",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 10.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: size.height * 0.01),
                          Container(
                            margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  side: BorderSide(color: Colors.deepOrange)),
                              onPressed: () {},
                              color: Colors.deepOrange,
                              textColor: Colors.white,
                              child: Icon(Icons.face),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Text(
                    "SNEAK PEAK",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 0, 20),
                  child: CarouselCardUi(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
