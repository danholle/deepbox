WARNING:  This is not quite ready to consume!  Published because I'm testing.

# ***deepbox***

## **Fast, Easy, Cheap:  Your New Deep Learning Machine, Without the Deep Learning Curve**

-------

*Are you a Deep Learning rocket scientist?  Great.  Are you
a pro Linux hacker?  Terrific.  Are you an awesome computer 
wirehead who's nifty with a small calibre screwdriver?  
Good on ya.*

*But if you're not all three of those... and neither am I... 
and you want a performant, simple, economical Deep Learning 
platform without a deep learning curve... you have come to 
the right place.*  

-------

You may have begun your Deep Learning journey the same way I did:
by making do with some sort of PC.  I mean, my i7 box is pretty
quick.  Mostly, if something's going slow on the i7 box, it's 
because I did something stupid.

Then came Deep Learning.

Holy cow!  Deep Learning would literally takes everything you give 
it and asks for more.  It would take a thousand of yesteryear's 
supercomputers, and hardly get started.  More importantly, Deep 
Learning made my i7 box run for weeks at a time.  Hot and bothered.  
Both of us.  

So I stumbled around a bit, coming up with a way forward:  a box 
that's 20+ times faster at Deep Learning than the i7 at half the 
cost.  If you'd like to do something similar, read on.

-------

Oh, and in keeping with the season... I come bearing scripts.  
Wherever it was convenient to script stuff, I did so;  you will 
find the scripts here in this github repo.  

And there's a lot of TL;DR notes here in case you get stuck.  
You may be a Deep Learning god, or a Linux god, or 
a Hardware god, but if you're not, some of these TL;DR notes 
won't be so TL;DR for you.

## **The Objectives**

 - **Performant.** Leverage technologies so performance is not a constraint.
 - **Economical.** But don't try to set world records.  The last mile is expensive and unnecessary.
 - **Functional.** So much stuff is free:  Tensorflow, Keras, PyTorch, CNTK.  Get them all.
 - **Accessible.** Work from any machine in the world, as if you're local.


## **The Hardware**

To some extent, a good Deep Learning box is a GPU with legs 
(where the legs are the requisite hardware and software to 
get at the GPU).  GPUs are that important.

There are several ways of approaching this.
 -  **IKEAbox.**  Buy a cabinet, a mother board, a GPU
    (graphics card), power supply, etc., separately and
    assemble them yourself.
 -  **GamerBox.**  Given that a typical gaming machine
    has lots of what you need (CPU, memory, GPU), just
    get one and repurpose it.
 -  **FrankenBox.**  Get your hands on a high-spec box
    that has seen better days, and bring it back to 
    life... with style.

If you guessed that I opted for the latter, you are right.
If you didn't, pretend you did and read on...

Each of these approaches has some advantages, and each 
may work for you.  But my observations:
 -  IKEAbox:  Have you ever looked at buying a pre-packaged
    machine... and looked at what it would cost to build
    the same box from parts?  Parts are often dramatically
    more expensive.  So it's a good guess that the 
    IKEAbox approach leaves money on the table.
 -  GamerBox:  There are lots of gamers out there, and 
    we should be thankful:  that's where GPUs came from.
    You'd think there would be cheap gamer boxes out 
    there (but I didn't find any);  and you'd think that 
    there would be used boxes out there that are good 
    (but I didn't find any).  I conclude that the number
    of gamers drive the prices up.  Too bad;  I always
    wanted a machine whose shape and lights made me 
    think I was the Batman.
 -  FrankenBox:  I kind of stumbled into this one, looking
    for bargains on the other two.  So I came across the
    xw6600, which looks like it was a serious hot box in
    its day, say, 7 years ago:  dual Xeons, still much 
    faster than many of today's i7 boxes;  chunky power
    supply and fans.  I found one with 32GB RAM and no
    HDD for 200 quid (US$270).  That's cheaper than the
    memory alone!


**Choosing a GPU Card**

So now I had a carcass, and what I really needed now was
only the main event... the GPU card.  I chose the GTX
1050 Ti.  Here's why.
 -  It was a bit more than half the processing power of 
    the top of the line card in that range (1080), but
    cost only about 1/4 as much.  (The 1080 cost more 
    than what I paid for the whole FrankenBox, including
    the 1050.)
 -  It needed a PCI x16 slot, which the xw6600 had.
 -  It needed 75W of power... and the xw6600 had a
    650W power supply.

So, yeah, I got the 1050.  I could have gotten a bigger
card, but I didn't.


**The Birth of FrankenBox**

I had a few Learning Experiences, which is a multisyllabic
way of saying I messed up a few times.  In the event my
confessions could save you a bit of times, I confess:
 -  Since the xw6600 had an extra x16 slot, I thought it
    would be best to keep the old graphics card, use it to
    help get the box running, then bring up the 1050. But
    the NVIDIA libraries recent enough to support the 1050
    did not include support for the old graphics card.
    Just rip that old card out and put in the new one;
    cross your fingers and go for it.
 -  One of the 8 memory cards needed to be re-seated.  There
    were memory errors at startup and after reseating the memory,
    the errors just went away.  (I ordered a replacement card
    before trying the reseating... and cancelled the replacement.)
 -  I tried to use a VGA monitor to set stuff up.  But the 
    1050 has no VGA connection... HDMI, yes;  DVI-D, yes; VGA,
    no.  I got a VGA to DVI adapter, only to learn that DVI 
    (analog) is different than DVI (digital).  There are 
    VGA to DVI-D adapters, but they are *active*.  I got
    one and life was a better place to be.
 -  Since my new (?) xw6600 had no disk I thought I'd use
    an SSD I had rattling around the shop.  Oh, wait, the 
    xw6600 expected a 3.5' device.  No big deal, again;  
    you can get 3.5 to 2.5 adapters for cheap.  But I had
    to go to Amazon one more time...

Once I tripped over those obstacles, the FrankenBox just worked.

# **The Operating System**

I used Ubuntu 16.04.  
 -  The   



