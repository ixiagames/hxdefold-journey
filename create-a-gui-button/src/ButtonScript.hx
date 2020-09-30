import defold.Go.GoMessages;
import defold.Gui;
import Defold.hash;
import defold.Msg;
import defold.support.GuiScript;
import defold.support.ScriptOnInputAction;
import defold.types.Hash;

class ButtonScript extends GuiScript<{}> {

    var bg_node:GuiNode;
    // If the pointer is inside this button.
    var pointer_over:Bool = false;
    // If the pointer is pressing down regardless if it's inside this button or not.
    var pointer_pressed:Bool = false;
    // If the ponter started a press inside this button.
    var click_inited:Bool = false;

    override function init(self:{}) {
        // This tells the engine that this script want to receive inputs.
        Msg.post('.', GoMessages.acquire_input_focus);

        bg_node = Gui.get_node("background");
    }

    override function on_input(self:{}, action_id:Hash, action:ScriptOnInputAction):Bool {
        if (action_id == hash("touch")) { // The pointer just pressed / released.
            if (action.pressed) {
                pointer_pressed = true;
                if (pointer_over)
                    // The pointer is inside the button and also pressed => the down state.
                    Gui.play_flipbook(bg_node, "down"); // Update the background to the correct sub-image.

            } if (action.released) {
                pointer_pressed = false;
                if (pointer_over)
                     // The pointer is inside the button but not pressed, means it's only hovering over out button.
                    Gui.play_flipbook(bg_node, "hover");
            }
        
        } if (action_id == null) { // The pointer just moved.
            if (pointer_over) { // If the state says the mouse / touch is inside the button
                if (!Gui.pick_node(bg_node, action.x, action.y)) { // but it is actually outisde
                    pointer_over = false; // then we update the state to be correct
                    Gui.play_flipbook(bg_node, "out"); // and update the background.
                }
            } else { // If the state says the pointer is outside the button
                if (Gui.pick_node(bg_node, action.x, action.y)) { // but this say "no"
                    pointer_over = true; // then we listen to it
                    // and update the background based on if the pointer is being pressed or not.
                    Gui.play_flipbook(bg_node, pointer_pressed ? "down" : "hover");
                }
            }
        } 
        
        // If return true, the input will be consumed and therefor won't be passed onto other scripts if they weren't already called.
        return false;
    }

}