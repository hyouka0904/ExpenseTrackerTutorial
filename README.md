# Lab 04 Expense app with parallax scrolling

During this lab session, you will need to **add a tutorial screen** with **scrolling function** and **parallax scrolling effects** to the expense application discussed in class.  
The lab project (courses > software-studio > 2024-spring > lab-flutter-basics-dart-expense-tracker-parallax) provides the expense tracker app with parallax scrollong effect on the item list for you to build on top of.

# Description
As you can see from the demo video, we want to see a **additional button** on the app bar which leads to a tutorial screen,  
In the screen, there should be two swipeable (left to right) screens, each of which contains some guidence to use the expense tracker app  
and a button that performs different actions.  
The icons and text can be arbitrary, meaning that we won't duduct points based on the content. 

# Grading
1. Add a button on the appbar to navigate to an tutorial page **(20%)**  
  

2. Implement a swipaeble tutorial page with two pages **(30%)**
    - The pages thould be left-right swipeable


3. Apply parallax scrolling effects on each widget of the tutorial page **(30%)**
    - The text should move at 1.5x moving speed
    - the button should move at 2.5x moving speed


4. Program the buttons to perform the following actions **(20%)**
    - The button on the first page should scroll the page to the second page
    - The button on the second page should dismiss the tutorial page 


# Hints
- There is a widget for swipeable pages  **Pageview**, There is a link to the documentation at the resources below.  

- Use Transform instead of Flow to do the parallax effect because no custom layout is needed
- In the PageView widget, a **Pagecontroller** is needed, the **page** propery indicates how far the page has been scrolled  
  you may want to set a listener to detect it's changes

# Even more hints
- listening to changes on the PageController are a lot like listening to the **Focusnode** in new_expense.dart  

- You may need to know the screen width in order to determin how much the scrolling effect should be.    



## Deadline
Submit your work before 2024/03/21 (Thur.) 17:20:00.

The score you have done will be 100%.

Submit your work before 2024/03/21 (Thur.) 23:59:59.

The score of other part you have done after 17:20:00 will be 60%.

# Resources

A few introductory tutorials crafted to assist you in completing today's lab.

- [PageView](https://api.flutter.dev/flutter/widgets/PageView-class.html)
- [PageController](https://api.flutter.dev/flutter/painting/TextStyle-class.html)

