#!/usr/bin/env ruby

#User = system('echo hi')
#puts "#{User}"
#puts "Cameron Morris"

Shoes.app title:"Control Center" ,width: 250 ,height: 825 do
   background "#ffffff".."#808080"
   image ("/home/cumorris/scripts/bmw.jpg"), width: 250
  # background white, width: 50
  # background white, height: 50
  @s = flow(margin: 6) {}
 ###################################### 
  button "Run testing script" ,margin: 3 do
    @out = `/bin/bash ~/scripts/testing`
    @s.clear { para @out }
  end
#######################################  
  button "Source .bashrc from usb" ,margin: 3 do
    @out = `. /media/cumorris/cumorris/.bashrc`
    @s.clear { para @out }
  end
######################################
  button "Fully Provision a machine" ,margin: 3 do
    @out = `ls -a`
    @s.clear { para @out }
  end
#######################################
# Requires a textbox to enter the machine number
  button "Throw a window to machine" ,margin: 3 do
    @out = `/bin/bash ~/scripts/shoes_scripts/windowthrow`
    @s.clear { para @out }
  end
#######################################
  button "SSH to nagios001" ,margin: 3 do
    @out = `gnome-terminal -x ssh -AX -o strictHostKeyChecking=no cumorris@nagios001.lcsee.wvu.edu`
    @s.clear { para @out }
  end
######################################
  button "SSH to a machine" ,margin: 3 do
    @out = `/bin/bash ~/scripts/shoes_scripts/ssh`
    @s.clear { para @out }
  end
######################################
  button "SSH to shell001" ,margin: 3 do
    @out = `gnome-terminal -x ssh -AXp 20110 -o strictHostKeyChecking=no cumorris@shell001.lcsee.wvu.edu`
    @s.clear { para @out }
  end
######################################
  button "SSH to tnode" ,margin: 3 do
    @out = `gnome-terminal -x ssh -AX cumorris@tnode001`
    @s.clear { para @out }
  end
######################################
  button "Open up request tracker" ,margin: 3 do
    @out = `chromium-browser https://rt002.lcsee.wvu.edu`
    @s.clear { para @out }
  end
#####################################
  button "Open up Outlook" ,margin: 3 do
    @out = `chromium-browser https://outlook.com/mail.wvu.edu`
    @s.clear { para @out }
  end
##################################### 
  button "Open up slack" ,margin: 3 do
    @out = `chromium-browser lcseesystems.slack.com`
    @s.clear { para @out }
  end
##################################### 
  button "Open up irc" ,margin: 3 do
    @out = `xchat --url=irc://irc.freenode.net:8001/#lcseesystems`
    @s.clear { para @out }
  end
##################################### 

image ("/home/cumorris/scripts/ubuntu.png"), width: 250 , height: 200

   
#    @out = `xchat --url=irc://irc.freenode.net:8001/#lcseesystems`
#    @s.clear { para @out }




##################################################################
#Notes:

## To open a folder
# folder = ask_open_folder
# Shoes.app do
#   para Dir.entries(folder)
# end

## Yes or no question, returns true or false
 #if confirm("Draw a circle?")
 # Shoes.app{ oval top: 0, left: 0, radius: 50 }
 #end

## Ask a question and get an gets an answer (input is saved as name variable)
 #if name = ask("Please, enter your name:")
 #  Shoes.app{para "Welcome, #{name}!"}
 #end

## Add a check box 
#check()

## timer
#every(300)

##ListBox
# Shoes.app do
#  stack  margin: 10 do
#   para "Pick a card:"
#   list_box items: ["Jac", "Ace", "Jok"] do |item|
#    @p.text = "#{item} was picked!"
#   end
#   @p = para
#  end
# end



## Add progress bar
#progress()

##Video
# video(path or url)




end
