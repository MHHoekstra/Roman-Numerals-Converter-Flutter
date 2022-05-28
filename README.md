# roman_numerals_converter

A simple Roman numerals converter that runs in iOS, Android, Web and Desktop (but it's designed for a better experience in a mobile device)

## Getting Started
This converter converts Roman numerals to Hindi-Arabic, Hindi-Arabic to Roman and also features a random numeral generator.
I've made this project utilizing Flutter 3, and it features a makeshift Clean Architecture, Dependency Injection and MVVM and I think the project directories are quite intuitive.
For the Dependency Injection I used the get_it package, as it is the most popular one in pub.dev and for the MVVM and State Management I used BLoC. 
It's Error Handling is based on a Functional approach with Dartz's Either class and Sealed Unions, something that I been experimenting on and seems (to me), enjoyable to use and less error prone for it does not depends on Try Catches inside the domain or presentation while also ensuring that you deal with the error possibility and not simply ignore it. 
I've not polished it up to the point of adding Internationalization nor focused on styling and one might argue that some functions and components could be extracted and etc.

