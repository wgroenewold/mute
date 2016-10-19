Automatische mute voor OSX

Omdat ik nogal van herrie hou tijdens het werken miste ik nog wel eens een telefonie-oproep. In tijden van analoge telefonie had ik hiervoor een Teensy met een LDR aan de iMac die een keycombo uitvoerde welke ik met FastScripts aan een AppleScript had geknoopt en zo het geluid mute.

Met de intrede van Voys hebben we echter nieuwe (draadloze) toestellen. De S510H van Siemens heeft echter Bluetooth, dus dit biedt mogelijkheden. Tijd voor een nieuwe versie.

Siemens
=======
Menu > Additional features > Bluetooth > Activation > aanzetten
Menu > Additional features > Bluetooth > Own device > fraaie naam geven (die van mij heet Twouter)

OSX
===
System Preferences > Bluetooth. Pairen met Siemens. Paircode invoeren op je Siemens toestel.

Shell script
============
Kijken hoe je device heet. > Terminal > ls /dev/tty.*
	die van mij heet /dev/tty.Twouter-SPP

Scripts downloaden van GitHub
	https://github.com/wgroenewold/mute

Line 3 aanpassen aan je device ID

chmod +x op mute.sh anders doetieutniet :)

Script starten in Terminal met

nohup /bin/sh mute.sh 1>&2 &>/dev/null 1>&2 &>/dev/null&

draait het in no-hangup, dus lekker op de achtergrond. Kun je ondertussen nog wat anders doen. Er staat ook een .plist in de repo die je kunt gebruiken, maar daar moet nog wat aan gesleuteld worden. Die is op eigen risico dus. De rest ook trouwens :)	
	
