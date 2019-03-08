import 'package:angular/angular.dart';

import 'src/components/section/section_component.dart';
import 'src/models/section.dart';
import 'src/services/section_retriever.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'nk-app',
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [coreDirectives, SectionComponent],
  pipes: [commonPipes],
  providers: [SectionRetriever],
)
class AppComponent implements OnInit {
  final SectionRetriever sectionRetriever;

  AppComponent(this.sectionRetriever);

  List<Future<Section>> sections;

  @override
  void ngOnInit() {
    sections = sectionNames.map(sectionRetriever.retrieve).toList();
  }

  static const sectionNames = ["design", "week1", "week2", "homestretch"];

  // bluuuuh this is stupid.
  static String tryAnchorName(Section section) =>
      "#${section?.anchorName ?? ""}";
  static String tryTitle(Section section) => section?.title ?? "";
}
