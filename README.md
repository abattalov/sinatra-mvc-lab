# Sinatra MVC Lab - Pig Latinizer

In this lab, you'll be building a **Pig Latinizer** using Sinatra and the MVC
paradigm of app development. Pig Latin is a made-up language formed from English
by transferring the initial consonant or consonant blend (for example, "ch" or
"str") of each word to the end of the word along with the syllable "-ay". If the
word begins with a vowel sound, then we add the sound of "way" to the end of the
word.

Examples:

- "noodle soup" becomes "oodlenay oupsay"
- "flatiron school" becomes "atironflay oolschay"
- "big apple" becomes "igbay appleway" (note the added "w" in "appleway")

Your app will take in a string from a user through a form, convert it to pig
latin, and return the string to the user. Using the previous code-along as a
guide, get the tests to pass by building out this application. Use the guide
below to get you started!

## Instructions

- Build a form to take user input in `user_input.erb`. Show that form using a
  `GET` request at `/`.

- Create a `POST` method in your controller (`app.rb`) to receive your form's
  `params`.

- Build a `PigLatinizer` model (in your models directory) that converts a
  string into pig latin. Your class should work like this (see
  `spec/models/piglatinizer_spec.rb` for more examples):

  ```rb
  pig_latinizer = PigLatinizer.new
  pig_latinizer.piglatinize("pork")
  # => "orkpay"
  pig_latinizer.piglatinize("I")
  # => "Iway"
  ```

- In your application controller, create an instance of the `PigLatinizer` class
  to convert your user input to pig latin.

- Use ERB within a new view to display the final pig latin string to the user.

## Resources

- [Pig Latin on Wikipedia](https://en.wikipedia.org/wiki/Pig_Latin)
