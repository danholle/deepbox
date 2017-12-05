
# ***deepbox***

**Yet Another Deep Learning Machine How-To**
*Actually, More Like A Travelogue than a How-To*

WARNING:  This is not quite ready to consume!  Published because I'm testing.


*Are you a Deep Learning rocket scientist?  Great.  Are you a pro Linux hacker?  Terrific.  Are you an awesome computer wirehead who's nifty with a small calibre screwdriver?  Good on ya.*

*But if you're not all three of those... and neither am I... and you want a fast, simple, economical 
Deep Learning platform... you have come to the right place.*  

-------

I do most everything on an i7 box.  I mean, it's pretty quick.  Mostly, if something's going slow on the i7 box, it's because I did something stupid.

Then came Deep Learning.

Holy cow!  Deep Learning would literally take a thousand of yesteryear's supercomputers, and hardly get started.  



literally 
I built a Deep Learning machine that's around 25x faster than my i7 box at half the cost.  Not by 
doing the right things, but by making mistakes and learning from them.  This post is about those
learnings, to save you time.

This is a travelogue, not a set of step by step instructions.  I'll tell you what I did and why.  
I'll tell you where I made mistakes, because you may be tempted to make the same ones.  

In the spirit of the season, I come bearing scripts.

--------

[Hardware](hardware/README.md)

This is stuff.

--------

[Install the Base](base/README.md)

This is more stuff.

--------

[Install the GPU Software](gpu/README.md)

stuff about the NVIDIA software

--------

[Install the Deep Learning Stuff](deeplearn/README.md)

stuff about installing Tensorflow, Keras, PyTorch, CNTK

--------

[Install Remote Access](remote/README.md)
 
VNC, SSH, and so forth

-------

If you'v gotten this far, I am hoping you have a 
platform up and running that is meeting your needs.

If that is so, please let me know your thoughts here.
I can quickly incorporate improvements into this 
article or to the Git tools.

 



This project captures some lessons learned from building up a Deep Learnine sg machine on the cheap.  
Along the way, I stumbled into a few dark alleys;  I'm hoping that these files might help someone
by putting a light in those alleys  :)

I'm pretty sure nobody will walk exactly the same path that I did.  Thus the complete story is
not what's interesting here, although one of the individual pieces might be.  Sort of like "the whole is
less than the sum of its parts".  Therefore I have broken this up into a series of markdown
files describing particular obstacles I ran into, and how I got around them.

The idea here is to gather notes and scripts together in a form which is easy to find and consume.
If you're setting up a machine, you can "git clone https://github.com/danholle/deepbox.git" on that
machine and get all the (lightweight) documents and scripts so you can work with them locally.

Mini-articles you will find here:
 * [hardware](hardware.md):  Thoughts on getting maximum price-performance
 * [gpu](gpu.md):  Setting up GPU hardware and software for Deep Learning
 * more to come


