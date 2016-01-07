I am a Dialog which is modal relative to another window.

I can be asked for an object instance by sending #get to me, which waits until the user has accepted the input fields, or cancelled. If the user cancelled, I will return nil.