import 'package:flutter/material.dart';
import 'package:quick_actions/quick_actions.dart';

class QuickActionButton extends StatefulWidget {
  const QuickActionButton({super.key});

  @override
  State<QuickActionButton> createState() => _QuickActionButtonState();
}

class _QuickActionButtonState extends State<QuickActionButton> {
  final QuickActions _quickAction = QuickActions();

  @override
  void initState(){
    super.initState();
    _quickAction.initialize(navigateRoute);
    
    _quickAction.setShortcutItems([   
      ShortcutItem(type: '/home', localizedTitle: 'list'),
      ShortcutItem(type: '/route',localizedTitle: 'home')
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
    );
  }
  navigateRoute(String route){
    if(route == '/home') return;
    Navigator.pushNamed(context, route);
  }
  
}