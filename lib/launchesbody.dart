import 'package:flutter/material.dart';
import 'package:spacex/spacex_data_model.dart';

class LaunchesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
            child: _showUpcomingListItems(context, spacex_launches_data),
          ),
        ],
      ),
    );
  }

  Widget _showUpcomingListItems(
      BuildContext context, List<SpaceXLaunchDataModel> spacex_launches_data) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: spacex_launches_data.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Card(
              margin: EdgeInsets.only(
                left: 25.0,
                top: 20.0,
                right: 30.0,
                bottom: 10.0,
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
                            spacex_launches_data[index].strIconId,
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
                          spacex_launches_data[index].strLaunchOption,
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 10.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(height: size.height * 0.01),
                        Text(
                          spacex_launches_data[index].strTitle,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: size.height * 0.01),
                        Text(
                          spacex_launches_data[index].strSpaceNo,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: size.height * 0.01),
                        Text(
                          spacex_launches_data[index].strSpaceDate,
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
          );
        });
  }
}
