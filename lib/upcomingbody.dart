import 'package:flutter/material.dart';
import 'package:spacex/spacex_data_model.dart';

class UpcomingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
            child: _showUpcomingListItems(context, spacex_upcoming_data),
          ),
        ],
      ),
    );
  }

  Widget _showUpcomingListItems(BuildContext context,
      List<SpaceXUpcomingDataModel> spacex_upcoming_data) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: spacex_upcoming_data.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  margin: EdgeInsets.only(
                    left: 25.0,
                    top: 25.0,
                    right: 30.0,
                    bottom: 50.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            // Image.network(repo.avatar, width: 110, height: 100),
                            Container(
                              margin: EdgeInsets.fromLTRB(20, 20, 0, 20),
                              child: Image.asset(
                                spacex_upcoming_data[index].strIconId,
                                width: 90,
                                height: 90,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(50, 20, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              spacex_upcoming_data[index].strLaunchOption,
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 10.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            SizedBox(height: size.height * 0.01),
                            Text(
                              spacex_upcoming_data[index].strTitle,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: size.height * 0.01),
                            Text(
                              spacex_upcoming_data[index].strSpaceNo,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: size.height * 0.01),
                            Text(
                              spacex_upcoming_data[index].strSpaceDate,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
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
                    spacex_upcoming_data[index].strLaunchDate,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
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
                  margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Expanded(
                    child: Text(
                      spacex_upcoming_data[index].strLaunchSite,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: size.height * 0.02),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Text(
                    "COUNT DOWN",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Expanded(
                    child: Text(
                      spacex_upcoming_data[index].strCountDown,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
