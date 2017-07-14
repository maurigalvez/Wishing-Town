[_tb_system_call storage=system/_scene1.ks]

[cm  ]
[bg  storage="room.jpg"  time="1000"  ]
[tb_show_message_window  ]
It was Thursday lunch break.[p]
I’d just finished eating my lunch and was feeling nicely sleepy.[p]
–Yawn- Sleepy…[p]
I think I’ll have a little nap.[p]
Just as I’d laid my head on my desk and was falling into the land of Nod…[p]
#?
HEY, WAKE UP!!!![p]
#
What the?![p]


[chara_show  name="Ice"  time="1000"  wait="true"  ]
What the heck, Ice?!![p]
#Ice
This is no time for taking a nap! Something BIG happened!![p]


[chara_mod  name="Ice"  time="0"  storage="chara/1/ice_angry.PNG"  ]
We can’t talk here. Come out into the corridor.[p]
#
Oh, all right, then.[p]


[bg  time="1500"  method="slide"  storage="background1-1.png"  ]
#Ice
A meteorite fell at the back of the mountain![p]
We have to go look for it![p]
#
What? You think I’d fall for that?[p]
#Ice
I’m being serious! I saw it last night![p]
It fell and landed at the back of the mountain![p]
Let’s go look for it![p]
#


[glink  color="blue"  storage="scene1.ks"  size="20"  text="No&nbsp;way!"  x="690"  y="326"  width="200"  target="*No"  height=""  _clickable_img=""  ]
[glink  color="blue"  storage="scene1.ks"  size="20"  text="Oh,&nbsp;alright,&nbsp;then"  x="690"  y="200"  width="200"  target="*Yes"  ]
[s  ]
*Yes

#Ice
Yay!! Thanks![p]
I knew you’d say yes![p]
#


[jump  storage="scene1.ks"  target="*Common"  ]
*No

#Ice
Awww...[p]
If you won’t come, then I’ll never share my homework with you again.[p]
#
Ungh… All right, I’ll go.[p]


*Common

[tb_hide_message_window  ]
[chara_hide  name="Ice"  time="1000"  wait="true"  pos_mode="true"  ]
[jump  storage="lab.ks"  target="*Start"  ]
[s  ]
