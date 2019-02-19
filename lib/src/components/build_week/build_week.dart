import 'package:angular/angular.dart';

@Component(
  selector: "nk-buildweek",
  templateUrl: "build_week.html",
  styleUrls: ["build_week.css"],
  directives: [coreDirectives],
)
class BuildWeekComponent {
  @Input()
  String title;

  @Input()
  String description;

  @Input()
  List<String> imageUrls;
}