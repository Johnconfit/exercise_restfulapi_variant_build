# flutter_restfulapi

This simple application allows you to make an API call to list the characters and associated details.

To achieve we use 
- Clean architecture that helps to create real separation between different layer of our app.
- Flavor to create differents variants of build
- Riverpod for our state management 

To properly run the app, we need to create the run configuration for each variant.

Dart End point :
for wire : lib/main_variant/main_wire.dart
for simpsons : lib/main_variant/main_simpson.dart

These command can run the app, on Android studio or VS Code.
- flutter run --flavor wire
- flutter run --flavor simpsons

  or you can configure Android Studio and run thr Android Studio
  
<img width="1118" alt="Screen Shot 2023-08-25 at 9 18 28 AM" src="https://github.com/Johnconfit/exercise_restfulapi_variant_build/assets/65426068/e0771d11-1283-413c-9247-22427ede5bca">

View on Phones
![Screenshot_1692973006](https://github.com/Johnconfit/exercise_restfulapi_variant_build/assets/65426068/338abbf2-69bd-4b01-9ae1-90d1fcdf66a7)
![Screenshot_1692969875](https://github.com/Johnconfit/exercise_restfulapi_variant_build/assets/65426068/5bdc6d14-8841-44b9-8d2d-03dfb92e5683)


View on Tablets

![Screenshot_1692974493](https://github.com/Johnconfit/exercise_restfulapi_variant_build/assets/65426068/28d3bad6-dbb6-4bd3-a310-dfdd22fd719e)

Search fonctinality
![Screenshot_1692974186](https://github.com/Johnconfit/exercise_restfulapi_variant_build/assets/65426068/e12fd444-16c5-4c0e-b622-e4ea5d7e2d8a)
