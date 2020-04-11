1. Write about media query for width
2. Align in cardDetails.dart is important.
    If we use align property in Container it was not working for the second container in the stack

3. Column by default has a main axis alignment of top. That is why Align property was not working in
    the third part of stack. Therefore in Column we define:
    mainAxisAlignment: end

4. Find out about flex in flutter