import 'package:angular/angular.dart';

/// Tests that this simple NgIf is inlined.
@Component(
  selector: 'inlined-ngif',
  template: '''
    <div *ngIf="foo">Hello World!</div>
    ''',
  directives: [NgIf],
)
class InlinedNgIfComponent {
  var foo = true;
}

/// Tests that this simple NgIf is *not* inlined.
@Component(
  selector: 'inlined-ngif',
  template: '''
    <div *ngIf="foo">Hello {{name}}!</div>
    ''',
  directives: [NgIf],
)
class IgnoredNgIfComponent {
  final name = 'World';
}

/// Tests that an *ngIf that is always true is just treated as plain HTML.
@Component(
  selector: 'inlined-ngif-with-immutable-condition',
  template: '''
    <div *ngIf="foo">Hello World!</div>
    ''',
  directives: [NgIf],
)
class InlinedNgIfWithImmutableConditionComponent {
  final foo = true;
}
