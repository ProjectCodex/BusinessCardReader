import 'package:flutter_test/flutter_test.dart';
import 'package:business_card_reader/text_parser.dart';

void main()
{
  String testString = "adlk fjhfsf.slk djf bob_tester@gmail.com asdlkjslkdfj";
  String testString2 = "adf 112@charity.org 34234";

  var parser = new TextParser(testString);
  var parser2 = new TextParser(testString2);

  test('Test email parser with mix of Alpha and Underscore', ()
  {
    var email = parser.parseEmail();

    expect(email, 'bob_tester@gmail.com');
  });


  test('Test email parser with Numbers and different domain', ()
  {
    var email = parser2.parseEmail();

    expect(email, '112@charity.org');
  });

}