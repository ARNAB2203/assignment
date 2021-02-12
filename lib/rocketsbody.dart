import 'package:flutter/material.dart';
import 'package:spacex/rocketdetailspage.dart';
import 'package:spacex/spacex_data_model.dart';

class RocketsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
            child: _showUpcomingListItems(context, spacex_rockets_data),
          ),
        ],
      ),
    );
  }

  Widget _showUpcomingListItems(
      BuildContext context, List<SpaceXRocketDataModel> spacex_rockets_data) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: spacex_rockets_data.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Card(
              margin: EdgeInsets.only(
                left: 25.0,
                top: 25.0,
                right: 30.0,
                bottom: 0.0,
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
                            spacex_rockets_data[index].strIconId,
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
                          spacex_rockets_data[index].strRocketOption,
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 10.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(height: size.height * 0.01),
                        Text(
                          spacex_rockets_data[index].strTitle,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: size.height * 0.01),
                        MaterialButton(
                          height: 20,
                          minWidth: 70,
                          onPressed: () {
                            spacex_rockets_data[index]
                                .strActiveInActiveStatus ==
                                "Inactive" ?
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RocketDetailsPage(spacex_rockets_data[index]),
                              ),
                            ) : "";
                          },
                          shape: const StadiumBorder(),
                          textColor: Colors.white,
                          color: spacex_rockets_data[index]
                                      .strActiveInActiveStatus ==
                                  "Inactive"
                              ? Colors.red
                              : Colors.green,
                          splashColor: Colors.blue[900],
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.white,
                          child: Text(
                            spacex_rockets_data[index]
                                .strActiveInActiveStatus
                                .toUpperCase(),
                            style: TextStyle(
                              fontSize: 8,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
