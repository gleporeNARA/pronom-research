Infinity Engine

The Infinity Engine is a game engine which allows the creation of isometric role-playing video games. It was originally developed by BioWare for a prototype RTS game codenamed Battleground Infinity, which was ultimately re-engineered to become the first installment of the Baldur's Gate series. BioWare used it again in the subsequent installments of the series, but also licensed the engine to Interplay's Black Isle Studios.

The Infinity Engine features pausable realtime gameplay. The engine uses a three quarters perspective with pre-rendered 2D backgrounds and sprite-based characters. Although graphically 2D for the most part, Baldur's Gate II added the use of OpenGL to accelerate drawing. Designed for six-character party-based adventuring by default, the Infinity Engine was the spiritual successor to the Gold Box Engine  [citation needed] and provided the basis for five Dungeons & Dragons licensed role-playing video games plus additional expansion packs and a number of fanmade total conversion RPGs. It was succeeded by BioWare's Aurora Engine.

https://baldursgate.fandom.com/wiki/Infinity_Engine

DLG file format

Applies to:
BG1, BG1: TotS, BG2, BG2: ToB, PST, IWD, IWD:HoW, IWD:TotL, IWD2, BGEE

General Description
DLG files contain the structure of conversations, in what is effectievly a state machine. Dialogs contains string references into the TLK file that make up the actual words of the conversation. Dialogs bear similarities to scripts; each state may have a series of trigger conditions, and effect a series of actions. If the any of the triggers for a state evaluate to false, the state is skipped and the triggers in the next state are evaluated - this occurs when entering into a dialog state, and when presenting a list of responses.

     state 0:
        trigger: NumTimesTalkedTo(0)
        Text: "Hello, sailor!"
    
    state 1:
        trigger: NumTimesTalkedToGT(5)
        Text: "Go away, already!"
    
    state 2:
        Text: "Hail and well met, yada yada yada."
    
Dialog always attempt to start at state 0. The first time this sample dialog is entered the trigger in state 0 is true, hence the character responds "Hello, sailor!". Subsequent times the dialog is entered the trigger in state 0 will be false, and state 1 is evaluated - this trigger also fails and so state 2 is evaluated. This state evaluates true, and get the associated message is displayed. If the dialog is initiaed five or more times, the trigger in state 1 will evaluate to true and the message associated with that state will be displayed.

In addition to the triggers outlined above, states present a list of responses (aka transitions). Each response may have a series of behaviours associated with it; the response text, a journal entry or an action.

Detailed Description
Overall structure
Header
State table (actor responses)
Transition table (player dialog options)
State triggers (actor response conditions)
Transition triggers (player dialog option conditions)
Action table

DLG V1 Header

Offset	Size (data type)	Description
0x0000	4 (char array)	Signature ('DLG ')
0x0004	4 (char array)	Version ('V1.0')

https://gibberlings3.github.io/iesdp/file_formats/ie_formats/dlg_v1.htm
