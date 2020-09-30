# Create a GUI button

Button! Proof of civilization! At a press of button, many precious things were given birth and destroyed, especially an indie dev's hopes and dreams. So how can we create button with hxDefold?

First by creating a GUI component (we can also create buttons using game object but let's leave it for another day). Right click the `main` folder, select `New...` > `Gui`. Let's name it `button`.

![create-button-gui-1](./tut-images/create-button-gui-1.png)

![create-button-gui-2](./tut-images/create-button-gui-2.png)

Then we create a box node to display the background image of our button. Open `button.gui`, on the right panel of the screen, right click `Nodes` > `Add` > `Box`,name it `background`.

![create-background-node](./tut-images/create-background-node.png)

![name-background-node](./tut-images/name-background-node.png)

![white-box](./tut-images/white-box.png)

Cool, we created a white box! Let's make it cooler! Download the 3 images below which are a part of [Kenney's UI Pack](https://www.kenney.nl/assets/ui-pack).

- `button_out.png` is for the default state when the mouse / touch is outside of our button.

![button_hover](./main/images/button_out.png)

- `button_hover.png` is for when the mouse cursor is hovering over our button but not pressed down.

![button_hover](./main/images/button_hover.png)

- And `button_down.png` for when the touch / mouse button is pressing down.

![button_down](./main/images/button_down.png)

Let's but them into `main/images`. Now to create an [atlas](https://defold.com/manuals/atlas/) from them, right click on `main`, select `New...` > `Atlas` and name it `button`.

![create-atlas](./tut-images/create-atlas.png)

Open `button.atlas` we just created, on the right panel of the screen, right click `Atlas` > `Add Images...` then select the 3 images for our button and click `Okay`.

![add-atlas-images-1](./tut-images/add-atlas-images-1.png)

![add-atlas-images-2](./tut-images/add-atlas-images-2.png)

Now back to our `button.gui`. Right click `Textures` > `Add` > `Textures...`, select our `button.atlas`.

![add-texture](./tut-images/add-texture.png)

![select-texture](./tut-images/select-texture.png)

