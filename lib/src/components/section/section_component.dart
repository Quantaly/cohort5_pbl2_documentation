import 'package:angular/angular.dart';

import '../../models/section.dart';

@Component(
  selector: "nk-section",
  templateUrl: "section_component.html",
  styleUrls: ["section_component.css"],
  directives: [coreDirectives],
)
class SectionComponent {
  @Input()
  Section section;
}
