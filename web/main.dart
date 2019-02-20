import 'package:angular/angular.dart';
import 'package:cohort5_pbl2_documentation/app_component.template.dart' as ng;
import 'package:http/browser_client.dart' as http;
import 'package:http/http.dart' as http;

import 'main.template.dart' as self;

@GenerateInjector([
  ClassProvider(http.Client, useClass: http.BrowserClient),
])
final InjectorFactory injector = self.injector$Injector;

void main() {
  runApp(ng.AppComponentNgFactory, createInjector: injector);
}
