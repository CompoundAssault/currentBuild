/*
Class purpose:
------------------------------------------------------------------------------------
This class is primarily responsible for generating the tooltip that will be displayed
at the bottom of the UserInterface. The tooltip will display text relevant to what the
player should do next.

Implementation:
------------------------------------------------------------------------------------
Drawing the tooltip using rect(~,~,~,~) and displaying text. Perhaps an idea to change
this to an image based system can be implemented as well. */
//test comment here
//Imports Audio Files
import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

//Variable Declaration
Time time;
UserInterface UI;
Titlescreen titlescreen;

//Main Function
void setup(){
frameRate(60);
size(950,500);
background(100);
 
//Set Variables;
time = new Time();
UI = new UserInterface();
titlescreen = new Titlescreen(true);
}

//Set's Phases
void draw(){
  background(100);
  titlescreen.updateTitleScreen();
  
  titlescreen.beginGame();
  time.startTimer();
  //UI.drawUI();

}

//Logic for mouse clicks
void mousePressed(){
  if (UI.m_window.On == true)
  {
    UI.m_window.mapInteraction();
  }
  if (UI.b_window.on == true)
  {
 UI.b_window.showTile();
  }
  titlescreen.menuInteraction();
  if (UI.s_window.on == true)
  {
  UI.s_window.menuInteraction();
  UI.s_window.finishSelect();
  }
}

