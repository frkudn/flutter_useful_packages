

#1 flex_color_scheme   (For Themes)
How to use: 
 return MaterialApp(
  
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.auth,
      routes: myRoutes.routes,
       // The Mandy red, light theme.
      theme: FlexThemeData.light(scheme: FlexScheme.amber, tabBarStyle: FlexTabBarStyle.forBackground),
      // The Mandy red, dark theme.
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.amber,tabBarStyle: FlexTabBarStyle.forBackground),
      // Use dark or light theme based on system setting.
      themeMode: ThemeMode.system,
    );
 // / ////////////////////////////////////////////////////////// / 
