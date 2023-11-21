

#------1--------
flex_color_scheme   (For Themes)
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

#------2--------
 flutter_sfs (Flutter Screen Font Size) 

 How to use:  
SfsInitBuilder(
      mobileSize: const Size(360, 650),
      tabletSize: const Size(481, 890),
      desktopSize: const Size(360, 650),
      fontSizeRange: Range(min: 10, max: 22),
      multiFontSizeRange: {
        's': Range(min: 8, max: 18), // Small text size
        'n': Range(min: 14, max: 24), // Normal text size
        'm': Range(min: 16, max: 26), // Medium text size
        'h': Range(min: 16, max: 28), // Header text size
        'btn': Range(min: 14, max: 24), // Button text size
      },
      divideRange: DivideRange(
        // Divided range for mobile
        pergMob: Range(min: 0.0, max: 60.0), // %
        // Divided range for tablet
        pergTab: Range(min: 20.0, max: 80.0), // %
        // Divided range for desktop
        pergDesk: Range(min: 35.0, max: 100.0), // %
      ),
      builder: (context, child) {
        return MaterialApp(
          navigatorKey: sfsNavigatorKey, // Add this, it's required
          title: 'flutter_sfs App Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: 
        );
      },
    );

Example :
Text(
  "Hello, Flutter",
  style: TextStyle(fontSize: 16.s),
),

Text(
  "Hello, Flutter",
  style: TextStyle(fontSize: 16.fs('m')),// Medium text size
),

Text(
  "Text side for all Mobile, Tablate and Desktop",
  style: TextStyle(fontSize: 16.fs('n', t: 18, d: 20)),
  // Normal text size (16-> for mobile, 18-> for tablet, 20-> for desktop)
),

Text(
  "Hello, Flutter",
  style: TextStyle(fontSize: 16.fs('h')),// Header text size
),
