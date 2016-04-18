jimvc
=====

Lightweight actionscript 3 framework that combines MVC (model view controller) and FSM (finite state machine)

This is a very simple seed project that I developed after reading about and creating a lot of Flash Applictaions. It was originally designed for simple Flash games and allowed to me to keep my classes small and each have a single responsibility.

### Main.as - This is where the application begins. The core functionality of this class is in the *changeState* function that descides which view to show, kills the old view, shows the new one, and attaches an ENTER_FRAME handler to the new view.

### Model - An internal data store. Here, it's basically a class with public static variables.

### Views - These are handles by main.as, and each represents a different state of the application. These display stuff on the screen.  Each view also has acess to its own ENTER_FRAME handler. 

### Controllers - These are almost always singleton classes for me. Basically, the views can hand off work that they need to do into compartmentalized classes that can normally be thought of as a type of helper class.

