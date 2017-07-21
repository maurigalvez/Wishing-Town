[_tb_system_call storage=system/_title_screen.ks]

[tb_start_tyrano_code]
"[screen_full]"
[_tb_end_tyrano_code]

[hidemenubutton]

[tb_hide_message_window  ]
[bg  storage="title.jpg"  ]
*title

[glink  text="New&nbsp;Game"  x="600"  y="370"  target="*start"  ]
[glink  text="Load&nbsp;Game"  x="600"  y="470"  target="*load"  ]
[s  ]
*start

[showmenubutton]

[cm  ]
[jump  storage="scene001.ks"  target=""  ]
[s  ]
*load

[showmenubutton]

[cm  ]
[showload]

[jump  target="*title"  storage=""  ]
[s  ]
