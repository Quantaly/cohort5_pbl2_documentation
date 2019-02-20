import 'package:angular/angular.dart';

import 'src/anchor_names.dart' as a;
import 'src/components/build_week/build_week.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'nk-app',
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [BuildWeekComponent],
  exports: [a.week1, a.week2, a.week3],
)
class AppComponent {
  static const weekOneImages = ["https://via.placeholder.com/360x240", "https://via.placeholder.com/360x240", "https://via.placeholder.com/360x240", ];
}
