Speech Files: NIST's SPHERE Format
Section 2.1.4: NIST's SPHERE Format

Audio data distributed by the Linguistic Data Consortium (LDC) is typicaly distributed on CDROM using the NIST SPHERE format. A SPHERE file consists of a single fixed size header followed by binary audio data.

The header is organized as name value pairs in a 1024-byte blocked, ASCII structure placed at the beginning of the file. The binary data can be in either big-endian or little-endian byte order. Click here for a more detailed description of the SPHERE format.

An example of a SPHERE header is shown below. Click here or use the "Save Link As" feature in your browser to download this example.


SPHERE Header Example:

    NIST_1A
    1024
    database_id -s3 RM1
    database_version -s3 1.0
    utterance_id -s11 aks0_st0783
    channel_count -i 1
    sample_count -i 50074
    sample_rate -i 16000
    sample_min -i -2032
    sample_max -i 2708
    sample_n_bytes -i 2
    sample_byte_format -s2 01
    sample_sig_bits -i 16
    end_head

    (binary audio data follows)	

Explanation:

    (type of header)
    
    https://www.isip.piconepress.com/projects/speech/software/tutorials/production/fundamentals/v1.0/section_02/s02_01_p04.html
