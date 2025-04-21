The PlayStation Portable[a] (PSP) is a handheld game console developed and marketed by Sony Computer Entertainment. It was first released in Japan on December 12, 2004, in North America on March 24, 2005, and in PAL regions on September 1, 2005, and is the first handheld installment in the PlayStation line of consoles. As a seventh generation console, the PSP competed with the Nintendo DS.

Development of the PSP was announced during E3 2003, and the console was unveiled at a Sony press conference on May 11, 2004. The system was the most powerful portable console when it was introduced, and was the first real competitor of Nintendo's handheld consoles after many challengers such as Nokia's N-Gage had failed. The PSP's advanced graphics capabilities made it a popular mobile entertainment device, which could connect to the PlayStation 2 and PlayStation 3, any computer with a USB interface, other PSP systems, and the Internet. The PSP also had a vast array of multimedia features such as video playback, audio playback, and has been considered a portable media player as well.[6][7] The PSP is the only handheld console to use an optical disc format – in this case, Universal Media Disc (UMD) – as its primary storage medium; both games and movies have been released on the format.

The PSP was received positively by critics, and sold over 80 million units during its ten-year lifetime. Several models of the console were released, before the PSP line was succeeded by the PlayStation Vita, released in Japan in 2011 and worldwide a year later. The Vita has backward compatibility with PSP games that were released on the PlayStation Network through the PlayStation Store, which became the main method of purchasing PSP games after Sony shut down access to the store from the PSP on March 31, 2016. Hardware shipments of the PSP ended worldwide in 2014; production of UMDs ended when the last Japanese factory producing them closed in late 2016.

https://en.wikipedia.org/wiki/PlayStation_Portable

Add PlayStation Portable PMP format demuxer

static int pmp_probe(AVProbeData *p) {
    if (AV_RN32(p->buf) == AV_RN32("pmpm") &&
        AV_RL32(p->buf + 4) == 1)
        return AVPROBE_SCORE_MAX;
    return 0;
    
https://gitea.bjx.cloud/public/ffmpeg/commit/1265395b5b1a6cde6549dabbb3820d343642f809
