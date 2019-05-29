///scp_sfx(sound,max)
var snd, sndmx;
snd=argument[0];
sndmx=argument[1];
with(sys_sound) {
    ds_list_add(sndlist,snd);
    sndcnt[? snd]=sndmx;
}
