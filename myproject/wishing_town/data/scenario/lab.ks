[_tb_system_call storage=system/_lab.ks]

*Start

[cm  ]
[bg  storage="background3.png"  time="1000"  ]
[chara_show  name="Mus"  time="1000"  wait="true"  ]
[tb_show_message_window  ]
#Mus
What are you guys doing here?[p]
This is not a place for you guys to come![p]


[chara_show  name="Ice"  time="1000"  wait="true"  ]
#Ice
We should be asking you the same question![p]
#Ice
#Mus


[tb_hide_message_window  ]
[tb_start_tyrano_code]
@camera zoom=2 x=180 y=100 time=2000
@camera x=-180 y=100 time=3000

@reset_camera
[_tb_end_tyrano_code]

[tb_show_message_window  ]
#
They look like a couple.[p]


[chara_mod  name="Ice"  time="0"  storage="chara/1/ice_angry.PNG"  ]
#Ice
What are you looking at!?[p]
#


[s  ]
