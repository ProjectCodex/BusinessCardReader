// TextParser class will contain methods for parsing out desired data from OCR
// text input.
//
// -Email
// -Name
// -Phone number
//
// JT

class TextParser
{
  String _text;

  TextParser(String text)
  {
    _text = text;
  }

    String parseEmail()
    {
      RegExp regExp = new RegExp(
        r"[a-zA-Z0-9-_.]+@[a-zA-Z0-9-_.]+",
        caseSensitive: false,
        multiLine: false,
        );

      return regExp.stringMatch(_text);
    }
}