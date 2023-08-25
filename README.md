# RestfulApi - Characters Flutter App

This sample application allows us to make an API call to get the list of characters and associated details.

To achieve we have used :
- Clean architecture which helps to create separation between different layers of our app, which improves maintainability, modularity and testability.
- Flavor to create different variants of builds, with the same code we can run different apps which different configurations( name app,  packages name, API Call, etc..). (added and work for Android and iOS).
- Riverpod for our state management.

To properly run the app, we need to create the run configuration for each variant.

Dart Entrypoint :
 - for wire : lib/main_variant/main_wire.dart
 - for simpsons : lib/main_variant/main_simpson.dart

These commands can run the app, on Android studio or VS Code.
- flutter run --flavor wire
- flutter run --flavor simpsons

  or you can configure Android Studio and run thru Android Studio, you can also run with xCode.
  For each IDE just make sure to have a configuration ready (scheme and args for xCode and run configuration for Android Studio and VS Code).
  
  When you run the app, the app name appears on the top and the package name on the bottom, depending on which variant you're running.

  Quick launch without IDE Setup, you need to reach entrypoint manually.
  - Download code
  - Open in VS Code for example
  - After flutter pub get
  - run this command :
  - flutter run --flavor wire -t lib/main_variant/main_wire.dart
  - or this :
  - flutter run --flavor simpsons -t lib/main_variant/main_simpson.dart
  - App will start.

  
  Some Screens

  Configuration Android Studio
<img width="1118" alt="Screen Shot 2023-08-25 at 9 18 28 AM" src="https://github.com/Johnconfit/exercise_restfulapi_variant_build/assets/65426068/e0771d11-1283-413c-9247-22427ede5bca"> <img width="1032" alt="Screen Shot 2023-08-25 at 10 28 03 AM" src="https://github.com/Johnconfit/exercise_restfulapi_variant_build/assets/65426068/80e6804e-5603-4c5c-ba67-e1dd81c8d8f9">

Schemes on iOS
<img width="932" alt="Screen Shot 2023-08-25 at 2 11 54 PM" src="https://github.com/Johnconfit/exercise_restfulapi_variant_build/assets/65426068/02eb68cf-1728-424f-8e48-6cc7eb640a5d">

<img width="949" alt="Screen Shot 2023-08-25 at 2 25 19 PM" src="https://github.com/Johnconfit/exercise_restfulapi_variant_build/assets/65426068/c228ab4f-12ab-4bae-9db3-5a91ca3d8e45">



Some screens

Wire variant
![Screenshot_1692973006](https://github.com/Johnconfit/exercise_restfulapi_variant_build/assets/65426068/338abbf2-69bd-4b01-9ae1-90d1fcdf66a7)

Simpsons variant
![Screenshot_1692991170](https://github.com/Johnconfit/exercise_restfulapi_variant_build/assets/65426068/7206f7e0-ef3d-402c-9568-93bb7b4d76ad)


Detail Screens
![Screenshot_1692969875](https://github.com/Johnconfit/exercise_restfulapi_variant_build/assets/65426068/5bdc6d14-8841-44b9-8d2d-03dfb92e5683)

![Simulator Screen Shot - iPod touch (7th generation) - 2023-08-25 at 08 03 10](https://github.com/Johnconfit/exercise_restfulapi_variant_build/assets/65426068/3f3ed1fb-69d3-48fe-b77c-4438aebf8b64)

View on Tablets
![Screenshot_1692973528](https://github.com/Johnconfit/exercise_restfulapi_variant_build/assets/65426068/743da647-c228-4e37-b568-472ca540cb06)

![Screenshot_1692974493](https://github.com/Johnconfit/exercise_restfulapi_variant_build/assets/65426068/28d3bad6-dbb6-4bd3-a310-dfdd22fd719e)

Search fonctionality
![Screenshot_1692974186](https://github.com/Johnconfit/exercise_restfulapi_variant_build/assets/65426068/e12fd444-16c5-4c0e-b622-e4ea5d7e2d8a)


Thanks.

