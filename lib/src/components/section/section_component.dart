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

  static const videoRoot =
      "https://files.itslearning.com/data/2517/101419/cohort5_pbl2_documentation_videos";
}
