import 'package:angular/angular.dart';

import 'src/components/section/section_component.dart';
import 'src/models/section.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'nk-app',
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [coreDirectives, SectionComponent],
)
class AppComponent {
  static const images = [
    "https://via.placeholder.com/360x240",
    "https://via.placeholder.com/360x240",
    "https://via.placeholder.com/360x240",
  ];

  static const sections = [
    Section(title: "Week One", anchorName: "WeekOne", content: "We took measurements and cut them and probably did other stuff too", imageUrls: images,),
    Section(title: "Week Two", anchorName: "WeekTwo", content: "The glorious future awaits", imageUrls: images,),
    Section(title: "Testing", anchorName: "Testing", content: "Will it work? Stay tuned to find out", imageUrls: images,),
  ];
}
