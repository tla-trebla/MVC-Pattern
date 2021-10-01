# MVC-Pattern
 Learn how to implement MVC Pattern. This tutorial based on Design Patterns by Tutorials from Ray Wenderlich. Link: https://www.raywenderlich.com/books/design-patterns-by-tutorials

## Things I've Learned

* MVC Pattern divided into 3 components, Model, View, and Controller.
  * Model is where we usually create root class in OOP, there's also a stored properties inside of it.
  * View is where you show your data to the user and controlled by the user.
  * Controller is where you get data from Model & decide what to show on View.
* Controller has a Models and Views.
* Model & View has a weak reference between Controller.
  * View communicate with Controller by an IBAction.
  * Model communicate with Controller by Property Observer.
* Use access control (private, fileprivate, internal, public, & open) as best practice in every components of MVC pattern.

## Questions To Ask

* Is it a good practice if we put some behaviors inside Model?
* Can we put Model inside Framework instead of inside a module?
* What's a Property Observer?
