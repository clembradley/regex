# Practice With Regular Expressions and Ruby
An example of behavior driven development, using Ruby and Rspec to capture associated names and emails in a text file

### Expectation:
Capture all emails, as specified in the Answers, from the given list of Texts.  Make sure all email credentials are supported, as per RFC822.  The RFC document captures a -MULTITUDE- of edge cases, so beware of trying to handle all variants.  A best practice policy will solve more solutions than an unfinished practice.

### Texts:
1. chad.pry@gmail.com
2. Chad <chad.pry@gmail.com>
3. "Chad Pry" <chad.pry@gmail.com>
4. "Chad Pry" [mailto:chad.pry@gmail.com]
5. "Chad Pry" <chad.pry+instructor@gmail.com>
6. "Chad Pry (Instructor)" <chad.pry@gmail.com>
7. "Chad Pry" <c@gmail.com>
8. "Chad Pry" <chad.pRY@gmail.com>
9. "Chad Pry" <chad.pry@gMAIL.com>

### Answers:
1. {:name => "", :email => "chad.pry@gmail.com"}
2. {:name => "Chad", :email => "chad.pry@gmail.com"}
3. {:name => "Chad Pry", :email => "chad.pry@gmail.com"}
4. {:name => "Chad Pry", :email => "chad.pry@gmail.com"}
5. {:name => "Chad Pry", :email => "chad.pry@gmail.com"}
6. {:name => "Chad Pry (Instructor)", :email => "chad.pry@gmail.com"}
7. {:name => "Chad Pry", :email => "c@gmail.com"}
8. {:name => "Chad Pry", :email => "chad.pry@gmail.com"}
9. {:name => "Chad Pry", :email => "chad.pry@gmail.com"}
 
Specs varify that all texts get parsed correctly, except for text #2. Without more specific criteria as to what constitues a "name", it is impossible to determine where the name begins without having specified delimeters.

