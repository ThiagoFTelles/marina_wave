import 'package:flutter/material.dart';
import 'package:marinawave/app/shared/components/vehicle/vehicle_summary.dart';
import 'package:marinawave/app/shared/models/vehicle_model.dart';

class SearchList extends StatefulWidget {
  SearchList({Key key}) : super(key: key);
  @override
  _SearchListState createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  Widget appBarTitle = Text(
    "Search Sample",
    style: TextStyle(color: Colors.white),
  );

  Icon actionIcon = Icon(
    Icons.search,
    color: Colors.white,
  );

  final key = GlobalKey<ScaffoldState>();

  final TextEditingController _searchQuery = TextEditingController();

  List<VehicleModel> _list;
  bool _IsSearching;
  String _searchText = "";

  _SearchListState() {
    _searchQuery.addListener(() {
      if (_searchQuery.text.isEmpty) {
        setState(() {
          _IsSearching = false;
          _searchText = "";
        });
      } else {
        setState(() {
          _IsSearching = true;
          _searchText = _searchQuery.text;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _IsSearching = false;
    init();
  }

  void init() {
    _list = List();
    for (var valor in jsonVehicles['data']['data']) _list.add(valor);
  }

  dynamic jsonVehicles = {
    "data": {
      "current_page": 1,
      "data": [
        {
          "id": 1,
          "uuid": "f94ff19f-9abe-45e9-98f1-898a5f6d0b0d",
          "name": "Hulk",
          "owner_name": "Hagadir da silva sauro e joao bosco",
          "status": "parked",
          "last_run": "2020-03-16 17:18:49",
          "brand": "Yamaha",
          "model": "ABC123",
          "year": "2018",
          "register_number": "CDF2004ASD1234657",
          "marina_id": 1,
          "created_at": "2019-04-04 18:28:52",
          "updated_at": "2020-03-16 17:24:07",
          "deleted_at": null,
          "gas_percentage": 95,
          "navigation_hours": 112,
          "belongings": "1 Colete."
        },
        {
          "id": 2,
          "uuid": "12ac8e5a-2428-4e76-9485-2f3905c247c5",
          "name": "Flexa",
          "owner_name": "Andrea",
          "status": "parked",
          "last_run": "2019-12-15 18:03:12",
          "brand": "Seadoo",
          "model": "Assasfghj",
          "year": "2009",
          "register_number": "SDDFGSGGCH",
          "marina_id": 1,
          "created_at": "2019-04-05 13:34:56",
          "updated_at": "2019-12-15 18:03:12",
          "deleted_at": null,
          "gas_percentage": 10,
          "navigation_hours": 200,
          "belongings": "2 coletes"
        },
        {
          "id": 3,
          "uuid": "0a12a182-6946-4915-80a4-b24e92bec5a5",
          "name": "Sea House III",
          "owner_name": "Rafael Fortunato",
          "status": "deleted",
          "last_run": "2019-04-30 10:30:03",
          "brand": "Seadoo",
          "model": "RXP 300RS Vermelho",
          "year": "2017",
          "register_number": "341M2017002828",
          "marina_id": 0,
          "created_at": "2019-04-10 18:55:57",
          "updated_at": "2019-05-07 15:57:45",
          "deleted_at": null,
          "gas_percentage": null,
          "navigation_hours": null,
          "belongings": null
        },
        {
          "id": 4,
          "uuid": "de2e7789-9893-44d4-9daa-34eb9332d9e3",
          "name": "Eukor",
          "owner_name": "Marcelo Caliman",
          "status": "parked",
          "last_run": "2020-06-07 16:48:02",
          "brand": "Yamaha",
          "model": "Fx160",
          "year": "2005",
          "register_number": "341M2005002054",
          "marina_id": 3,
          "created_at": "2019-04-10 18:55:59",
          "updated_at": "2020-06-07 16:48:02",
          "deleted_at": null,
          "gas_percentage": 50,
          "navigation_hours": 192,
          "belongings": "Corda e Ancora"
        },
        {
          "id": 5,
          "uuid": "2351f6af-9106-4029-893c-429c95731b6b",
          "name": "França",
          "owner_name": "Ricardo França",
          "status": "parked",
          "last_run": "2020-06-14 16:31:33",
          "brand": "Seadoo",
          "model": "GTR 230",
          "year": "2018",
          "register_number": "341M2018003956",
          "marina_id": 3,
          "created_at": "2019-04-11 12:12:25",
          "updated_at": "2020-06-14 16:31:33",
          "deleted_at": null,
          "gas_percentage": 80,
          "navigation_hours": 77,
          "belongings": null
        },
        {
          "id": 6,
          "uuid": "30163d76-594e-41db-b746-8d60ae237e14",
          "name": "Leão 1",
          "owner_name": "Marcelo Leão",
          "status": "parked",
          "last_run": "2020-03-05 11:37:48",
          "brand": "Seadoo",
          "model": "GTI 130",
          "year": "YDV59372F414",
          "register_number": "341M2015000728",
          "marina_id": 4,
          "created_at": "2019-04-11 13:31:00",
          "updated_at": "2020-03-05 11:37:48",
          "deleted_at": null,
          "gas_percentage": 50,
          "navigation_hours": 126,
          "belongings":
              "Protetor,chave,2 coletes,uma âncora com corda,uma corda"
        },
        {
          "id": 7,
          "uuid": "e6b87aed-6bde-4732-b2f8-705070e9e868",
          "name": "Chiquinho",
          "owner_name": "Francisco Marconi Junior",
          "status": "parked",
          "last_run": "2020-06-07 13:52:20",
          "brand": "Yamaha",
          "model": "FZS SHO",
          "year": "2012",
          "register_number": "341M2012001422",
          "marina_id": 3,
          "created_at": "2019-04-11 17:09:42",
          "updated_at": "2020-06-07 13:52:20",
          "deleted_at": null,
          "gas_percentage": 90,
          "navigation_hours": 280,
          "belongings": null
        },
        {
          "id": 8,
          "uuid": "430ae38d-90d3-439b-ac38-d3aa92e6ef3b",
          "name": "Renatinho",
          "owner_name": "Renato Magnago",
          "status": "deleted",
          "last_run": "2019-11-23 16:09:17",
          "brand": "Seadoo",
          "model": "Rxp 300 X RS",
          "year": "2019",
          "register_number": "341M2019001023",
          "marina_id": 0,
          "created_at": "2019-04-11 17:10:23",
          "updated_at": "2019-12-09 16:39:48",
          "deleted_at": null,
          "gas_percentage": null,
          "navigation_hours": null,
          "belongings": null
        },
        {
          "id": 9,
          "uuid": "b3726e90-8ef8-438e-950b-01021c8b3df3",
          "name": "Spark Preto",
          "owner_name": "Fabrício Aigner",
          "status": "deleted",
          "last_run": "2019-12-01 18:04:11",
          "brand": "Seadoo",
          "model": "Spark",
          "year": "2016",
          "register_number": "341M2016001236",
          "marina_id": 0,
          "created_at": "2019-04-11 17:10:59",
          "updated_at": "2019-12-01 18:10:16",
          "deleted_at": null,
          "gas_percentage": null,
          "navigation_hours": null,
          "belongings": null
        },
        {
          "id": 10,
          "uuid": "34f5aced-ce4e-4c0f-a820-a60fb49e1e88",
          "name": "Autolider",
          "owner_name": "Marconi Menezes",
          "status": "parked",
          "last_run": "2020-05-31 16:08:34",
          "brand": "Yamaha",
          "model": "FX Cruisier 160",
          "year": "2007",
          "register_number": "401M20077006654",
          "marina_id": 3,
          "created_at": "2019-04-11 17:13:21",
          "updated_at": "2020-05-31 16:08:34",
          "deleted_at": null,
          "gas_percentage": 50,
          "navigation_hours": 481,
          "belongings": null
        }
      ],
      "first_page_url": "http://127.0.0.1:8000/api/vehicles?page=1",
      "from": 1,
      "last_page": 24,
      "last_page_url": "http://127.0.0.1:8000/api/vehicles?page=24",
      "next_page_url": "http://127.0.0.1:8000/api/vehicles?page=2",
      "path": "http://127.0.0.1:8000/api/vehicles",
      "per_page": 10,
      "prev_page_url": null,
      "to": 10,
      "total": 233
    }
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: buildBar(context),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        children: _IsSearching ? _buildSearchList() : _buildList(),
      ),
    );
  }

  List<VehicleSummary> _buildList() {
    return _list
        .map((vehicle) => VehicleSummary(
              vehicleName: vehicle.name,
              ownerName: vehicle.name,
              vehicleModel: vehicle.name,
            ))
        .toList();
  }

  List<VehicleSummary> _buildSearchList() {
    if (_searchText.isEmpty) {
      return _list
          .map((vehicle) => VehicleSummary(
                vehicleName: vehicle.name,
                ownerName: vehicle.name,
                vehicleModel: vehicle.name,
              ))
          .toList();
    } else {
      List<Widget> _searchList = List();
      for (int i = 0; i < _list.length; i++) {
        print(_list.elementAt(i));
        dynamic name = _list.elementAt(i).name;
        print('>>>>>>>>>> name:');
        print(name);
        if (name.toLowerCase().contains(_searchText.toLowerCase())) {
          _searchList.add(VehicleSummary(
            vehicleName: 'name2',
            ownerName: 'Dono',
            vehicleModel: 'RWXyyz2030',
          ));
        }
      }
      return _searchList.map((listItem) => listItem).toList();
    }
  }

  Widget buildBar(BuildContext context) {
    return AppBar(centerTitle: true, title: appBarTitle, actions: <Widget>[
      IconButton(
        icon: actionIcon,
        onPressed: () {
          setState(() {
            if (this.actionIcon.icon == Icons.search) {
              this.actionIcon = Icon(
                Icons.close,
                color: Colors.white,
              );
              this.appBarTitle = TextField(
                controller: _searchQuery,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.white),
                    hintText: "Search...",
                    hintStyle: TextStyle(color: Colors.white)),
              );
              _handleSearchStart();
            } else {
              _handleSearchEnd();
            }
          });
        },
      ),
    ]);
  }

  void _handleSearchStart() {
    setState(() {
      _IsSearching = true;
    });
  }

  void _handleSearchEnd() {
    setState(() {
      this.actionIcon = Icon(
        Icons.search,
        color: Colors.white,
      );
      this.appBarTitle = Text(
        "Search Sample",
        style: TextStyle(color: Colors.white),
      );
      _IsSearching = false;
      _searchQuery.clear();
    });
  }
}

//class ChildItem extends StatelessWidget {
//  final String name;
//  ChildItem(this.name);
//  @override
//  Widget build(BuildContext context) {
//    return ListTile(title: Text(this.name));
//  }
//}
