// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hello_app/Screens/chatscreen.dart';
import 'package:hello_app/controllers/tabcontroller.dart';
import 'package:hello_app/widgets/appbar_search.dart';

enum HelloAppOptions {
  settings,
  // Chats Tab
  newGroup,
  newBroadcast,
  whatsappWeb,
  starredMessages,
  // Status Tab
  statusPrivacy,
  // Calls Tab
  clearCallLog,
  readMe,
}

class HelloAppScreen extends StatelessWidget {
 HelloAppScreen({Key? key}) : super(key: key);
    
    final Tabcontroller tabController = Get.put(Tabcontroller());

  // TabController? _tabController;
  bool showFab = true;
  
  bool _searhBarOpen = false;
    int _tabIndex = 1;

   List<Widget>? _actionButtons;
   
   TextEditingController _searchBarController = new TextEditingController();

   final List<List<PopupMenuItem<HelloAppOptions>>> _popupMenus = [
      [],
      [
        const PopupMenuItem<HelloAppOptions>(
          value: HelloAppOptions.newGroup,
          child: Text("New group"),
        ),
        const PopupMenuItem<HelloAppOptions>(
          value: HelloAppOptions.newBroadcast,
          child: Text("New broadcast"),
        ),
        PopupMenuItem<HelloAppOptions>(
          key: Key('Web'),
          value: HelloAppOptions.whatsappWeb,
          child: Text("WhatzApp Web"),
        ),
        PopupMenuItem<HelloAppOptions>(
          key: Key('Starred'),
          value: HelloAppOptions.starredMessages,
          child: Text("Starred messages"),
        ),
        PopupMenuItem<HelloAppOptions>(
          key: Key('Settings'),
          value: HelloAppOptions.settings,
          child: Text("Settings"),
        ),
        PopupMenuItem<HelloAppOptions>(
          value: HelloAppOptions.readMe,
          child: Text("README", style: TextStyle(color: Colors.red)),
        ),
      ],
      [
        PopupMenuItem<HelloAppOptions>(
          value: HelloAppOptions.statusPrivacy,
          child: Text("Status privacy"),
        ),
        PopupMenuItem<HelloAppOptions>(
          value: HelloAppOptions.settings,
          child: Text("Settings"),
        ),
        PopupMenuItem<HelloAppOptions>(
          value: HelloAppOptions.readMe,
          child: Text("README", style: TextStyle(color: Colors.red)),
        ),
      ],
      [
        PopupMenuItem<HelloAppOptions>(
          value: HelloAppOptions.clearCallLog,
          child: Text("Clear call log"),
        ),
        PopupMenuItem<HelloAppOptions>(
          value: HelloAppOptions.settings,
          child: Text("Settings"),
        ),
        PopupMenuItem<HelloAppOptions>(
          value: HelloAppOptions.readMe,
          child: Text("README", style: TextStyle(color: Colors.red)),
        ),
      ],
    ];


 




        // _searchBarController = new TextEditingController();


    
    
  
    
  

  void _selectOption(HelloAppOptions option) {
    switch (option) {
      case HelloAppOptions.newGroup:
        
        
        break;
      case HelloAppOptions.newBroadcast:
       
        break;
      case HelloAppOptions.whatsappWeb:
        
        break;
      case HelloAppOptions.starredMessages:
        
        break;
      case HelloAppOptions.settings:
        
        break;
      case HelloAppOptions.statusPrivacy:
        
        break;
      case HelloAppOptions.clearCallLog:
        
        break;
      case HelloAppOptions.readMe:
        
        break;
    }
  }




  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_searhBarOpen) {
         
          return false;
        } else {
          return true;
        }
      },
      child: Obx(()=> Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: tabController.isSearching.value ? Colors.white : Color.fromARGB(255, 69, 66, 69),
            title: tabController.isSearching.value ? SearchBar(searchBarController: _searchBarController): Text('HelloApp'),
      
            leading: tabController.isSearching.value ? 
                     IconButton(
                        icon: Icon(Icons.arrow_back),
                        color: const Color(0xff075e54),
                        onPressed: () {
                         
                            tabController.resetsearchbar();
                         
                        },
                      ) : null,
            elevation: 0.7,
            bottom: tabController.isSearching.value ? null : TabBar(
              controller: tabController.controller,
              indicatorColor: Colors.white,
              tabs: tabController.myTabs,
            ),  
            actions: tabController.isSearching.value ? null : _actionButtons = <Widget>[
            InkWell(
            onTap: () => { tabController.updatesearchbar(),} ,
            child: Icon(Icons.search),
            ),
            PopupMenuButton<HelloAppOptions>(
             key: Key('moreOptions'),
             tooltip: "More options",
             itemBuilder: (BuildContext context) {
              return _popupMenus[tabController.controller.index];
              },
             ),
            ]
          ),
            body: TabBarView(
             controller: tabController.controller,
             children:  <Widget>[
              ChatScreen(),
              ChatScreen(),
              ChatScreen(),
              ChatScreen(),
            ],
          ),
          floatingActionButton: showFab
              ? FloatingActionButton(
                  backgroundColor: Theme.of(context).accentColor,
                  child: Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                  onPressed: () => print("open chats"),
                )
              : null,
        ),)
      
    );
  }
}

