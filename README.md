# NotificationCenterExercise

**Proyect**

The project have 3 views
- Principal (SecondViewController)
- Perfil (ThirdViewController)
- Login (ViewController)

The first two ("Principal" and "Perfil") are nested in a Tab Bar Controller and the last one is presented from a button located in "Perfil" view.

**Problem**

You have to send and update, via notification center, the user information from "Login", to "Perfil" and "Principal", on "Perfil" you have to show the name and the email of the user in the respective labels, while in "Principal" it needs to show the message "Bienvenido 'userName'".

The update should only happen when:
- The user name and email textfields are't empty
- The user click on "Login" button

If the user click on the close button the message on "Principal" view should say "Por favor logeate".