--[[
The following functions have been exposed to lua:
setBackground(string aPath) sets the background to the texture in the folder textures.
createButton(string area name which the player enters, string context); adds a button to the current screen
createTextfield(string context); adds a textfield to the top of the screen.
CLS(); clears the screen.
exitGame(); exits the game.
playSound(string path to sound)
]]--

function story(aName)
	if(aName == "start") then
		playMusic("Free Horror Ambience (Dark Project).wav")
		setBackground("hallway.JPG")
		createTextfield("A mysterious virus has started spreading itself in Ponyville.\nIt causes the pony to experience fatigue, insanity, rotting from inside out.\nAnd eventually death.\nNo cure has been found yet. \nLet me tell you about the four stages of the virus.")
		createButton("stage1", "---->")
	end

	if(aName == "stage1") then
		CLS()
		setBackground("hallway.JPG")
		createTextfield("During the first stage the pony just got infected.\nThey will start to experience fatigue.\nAt this point it is still possible to recover.\nThe pony is not dangerous at this point.")
		createButton("stage2", "---->")
	end



	if(aName == "stage2") then
		CLS()
		setBackground("hallway.JPG")
		createTextfield("During the second stage the pony will slowly lose its sanity.\nTheir wound has also begun to spread.\nThey have slowly begun rotting from inside out.\nTheir organs have also begun rotting.\nWont take long before they enter stage 3.")
		createButton("stage3", "---->")
	end

	if(aName == "stage3") then
		CLS()
		setBackground("hallway.JPG")
		createTextfield("Death. The virus has completely eaten the ponys organs.\nThe victim is now deceased.\nA dead pony is still highly infectious.\nThey are still dangerous if you come near so you have to stay away.")
		createButton("stage4", "---->")
	end

	if(aName == "stage4") then
		CLS()
		setBackground("number1.png")
		createTextfield("*Rarity knocks on Twilights door*")
		createButton("number1", "---->")
	end

	if(aName == "number1") then
		CLS()
		setBackground("number2.png")
		createTextfield("Twilight: Hello Rarity, is everything okay? \n\nRarity: I went outside for once! And I got bit by something!\nI couldnt see what it was but it sure got me good.")
		createButton("number2", "---->")
	end

	if(aName == "number2") then
		CLS()
		setBackground("number2.png")
		createTextfield("T: Oh come in, Ill have a look.\nIve heard about this weird virus spreading so we should better be safe than sorry.\n\nR: Virus?? Oh my pony it better not be!")
		createButton("number3", "---->")
	end

	if(aName == "number3") then
		CLS()
		setBackground("number2.png")
		createTextfield("T: Oh.. Its already infected.\nI hate to do this but I need to quarantine you since this virus has been spreading fast.\nIm sorry, Rarity.\n\nR: I understand.. At least make it cozy for me.")
		createButton("number4", "---->")
	end

	if(aName == "number4") then
		CLS()
		setBackground("number3.png")
		createTextfield("T: Rarity! I brought you some breakfast.\n\nT: Rarity?\n\nT: Huh.. shes not here anymore.")
		createButton("number5", "---->")
	end

	if(aName == "number5") then
		CLS()
		playSound("Jumpscare Sound.wav")
		setBackground("number4.png")
		createTextfield("T: My pony.. HELP ME!!!")
		createButton("number6", "---->")
	end

	if(aName == "number6") then
		CLS()
		setBackground("number5.png")
		createTextfield("Fluttershy: Hey thanks were allowed to stay here.\nI wouldnt wanna be alone right now.\n\nRainbow: Yeah Applejack, thanks.\nWe should all stick together during this virus.")
		createButton("number7", "---->")
	end

	if(aName == "number7") then
		CLS()
		setBackground("number5.png")
		createTextfield("Applejack: Ofcourse. But come to think of it,\nwe havent seen Twilight or Rarity in a while.\nI sure hope theyre okay.\n\nF: And Pinkie..")
		createButton("number8", "---->")
	end

	if(aName == "number8") then
		CLS()
		setBackground("number5.png")
		createTextfield("R: Youre right! Maybe you and I should try to look for them.\nWe will probably be okay since we can fly.\nApplejack you should stay here to watch your sisters.\n\nA: Okay but please be safe.\nCome back here as soon as you can.\nEven if you dont find them.")
		createButton("number9", "---->")
	end

	if(aName == "number9") then
		CLS()
		setBackground("number6.png")
		createTextfield("R: Who do you think we should look for first? F: First Twilight.\nThen Rarity.\nAnd lastly Pinkie.")
		createButton("twilight1", "Twilight")
		createButton("rarity1", "Rarity")
		createButton("pinkie1", "Pinkie")
	end

	if(aName == "twilight1") then
		CLS()
		
		setBackground("blackscreen.png")
		createTextfield("*The girls knock on Twilights door but no one answers.*\n\n*They take a look around but see no one.\nTheyre too scared to investigate further and declare Twilight as missing.\nThey quickly fly back to report to Applejack.*")
		createButton("number9", "go back")
	end

	if(aName == "rarity1") then
		CLS()
		setBackground("number7.png")
		createTextfield("* Fluttershy and Rainbow Dash are walking around the woods.\nSuddenly they hear someones hoofs in the bushes.*")
		createButton("rarity2", "--->")
	end

	if(aName == "rarity2") then
		CLS()
		setBackground("number7.png")
		createTextfield("F: Do you hear that?\n\nR: Yes, we have to be careful.\n\nF: I think thats Rarity!")
		createButton("rarity3", "--->")
	end

	if(aName == "rarity3") then
		CLS()
		playSound("Jumpscare Sound.wav")
		setBackground("number8.png")
		createTextfield("F: Rainbow I think we should go..")
		createButton("number9", "go back")
	end

	if(aName == "pinkie1") then
		CLS()
		setBackground("number9.png")
		createTextfield("R: I see something pink over there!\nThat must be Pinkie!\n\nF: Oh I hope shes okay.")
		createButton("pinkie2", "--->")
	end

	if(aName == "pinkie2") then
		CLS()
		setBackground("number9.png")
		createTextfield("F: Pinkie? Is that you?\n\nR: Thatss not pinkie anymore..")
		createButton("pinkie3", "--->")
	end

	if(aName == "pinkie3") then
		CLS()
		playSound("Jumpscare Sound.wav")
		setBackground("number10.png")
		createTextfield("Both: RUN!!")
		createButton("pinkie4", "--->")
	end

	if(aName == "pinkie4") then
		CLS()
		setBackground("blackscreen.png")
		createTextfield("Pinkie catches up to Fluttershy and Rainbow dash.\nRainbow Dash becomes infected\nFluttershy remains safe because she is protected by Discord.")
		createButton("number10", "go back")
	end

	if(aName == "number10") then
		CLS()
		setBackground("number12.png")
		createTextfield("*Fluttershy flies back alone to Applejack*")
		createButton("number11", "--->")
	end

	if(aName == "number11") then
		CLS()
		setBackground("number11.png")
		createTextfield("F: Im back..\n\nA: And?? Where is Rainbow?")
		createButton("number12", "--->")
	end

	if(aName == "number12") then
		CLS()
		setBackground("number11.png")
		createTextfield("F: She- she got infected by Pinkie.\nRarity is infected too and Twilight is missing.\nWe should get out of Ponyville as soon as possible.")
		createButton("number13", "--->")
	end

	if(aName == "number13") then
		CLS()
		setBackground("blackscreen.png")
		createTextfield("*Fluttershy, Applejack and her family escape Ponyville.\nThey leave everything behind.\nThe virus never got better.\nIt also never spread outside of Ponyville.*")
		createButton("theend", "The End")
	end

if(aName == "theend") then
		exitGame();
	end
end

