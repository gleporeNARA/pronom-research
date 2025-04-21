Starsiege is a mecha-style vehicle simulation game developed by Dynamix and released in 1999. Starsiege is set in the Metaltech/Earthsiege universe, which contains its predecessors Earthsiege (1994), Battledrome (1994), and Earthsiege 2 (1996). This universe also includes action game Hunter Hunted (1996),[citation needed] strategy games Mission Force: Cyberstorm (1996) and Cyberstorm 2: Corporate Wars (1998). It also includes the sequels Starsiege: Tribes (actually released before Starsiege) and all subsequent Tribes titles. In 2015, this game and the rest of the Metaltech/Tribes series were released as freeware by Hi-Rez Studios, but Battledrome and the Cyberstorm series were not.[2]

https://en.wikipedia.org/wiki/Starsiege

if (memcmp(" VOL", vhnd->header.ident, 4) == 0)
    {
        log_debug("Magic number recognized. Archive is Starsiege volume.");
        vhnd->format = VFMT_STARSIEGE;
    } else if (memcmp("PVOL", vhnd->header.ident, 4) == 0) {
        log_debug("Magic number recognized. Archive is Tribes 1 volume.");
        vhnd->format = VFMT_TRIBES;
    } else if (memcmp("VOLN", vhnd->header.ident, 4) == 0) {
        log_debug("Magic number recognized. Archive is Earthsiege/Earthsiege 2 volume.");
        log_critical("Currently, only Starsiege and Starsiege Tribes volumes are supported.");
        return VOL_ERR_UNSUPFORMAT;
    } else {
        log_critical("Magic number not recognized.");
        return VOL_ERR_NOTVOL;

        
https://github.com/oftn-oswg/DynVol/blob/master/src/dynvol.c

http://www.watto.org/specs.html?specs=Archive_VOL_PVOL
