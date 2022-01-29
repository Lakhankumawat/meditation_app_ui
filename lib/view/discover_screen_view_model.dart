import 'package:meditation_app/provider/base_model.dart';
import 'package:meditation_app/src/screens/discover_screen/components/discoverListItems.dart';

class DiscoverScreenViewModel extends BaseModel {
  final List<DiscoverListItems> listOfItems = [
    DiscoverListItems(
      image: 'assets/images/calmr.png',
      tagline: 'Focus',
      baseline: 'Focus on  work',
    ),
    DiscoverListItems(
      image: 'assets/images/breather.png',
      tagline: 'Relax',
      baseline: 'Reframe stress',
    ),
  ];
}
