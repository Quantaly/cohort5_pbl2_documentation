import 'package:json_annotation/json_annotation.dart';

part 'section.g.dart';

@JsonSerializable(createToJson: false)
class Section {
  final String title;
  final String anchorName;
  final String content;
  final List<String> imageUrls;

  const Section({
    this.title,
    this.anchorName,
    this.content,
    this.imageUrls,
  });
  
  factory Section.fromJson(Map<String, dynamic> json) => _$SectionFromJson(json);
}
