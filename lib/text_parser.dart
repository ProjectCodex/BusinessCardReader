// TextParser class will contain methods for parsing out desired data from OCR
// text input.
//
// - Email
// - Name
// - Phone number
// - Title
// - Company
//
// JT

class TextParser
{
  String text;

  TextParser(String textInput)
  {
    text = textInput;
  }

    String parseEmail()
    {
      RegExp regExp = new RegExp(
        r"[a-zA-Z0-9-_.]+@[a-zA-Z0-9-_.]+",
        caseSensitive: false,
        multiLine: false,
        );

      return regExp.stringMatch(text);
    }
}