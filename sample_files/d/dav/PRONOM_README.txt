About Dahua Technology North America
Dahua Technology has been innovating security camera offerings for over 20 years. Founded with a vision for providing improved offerings to the market, Dahua has continued to maintain our focus on the importance of innovation and continual advancement in the security industry. Dahua’s goal is to provide our customers with offerings that can help them grow their business in an ever-changing technology landscape.

Our North America business puts this same focus into working alongside our customers to determine the best solutions for their installations, constantly working to implement new and more efficient technology. The Dahua USA and Canada teams are filled with dedicated and experienced industry professionals who thrive on building relationships and working to provide the best possible experience for customers.

Now over 5 years strong, the Dahua Technology North America team opened its doors for business in the United States as Dahua Technology USA, Inc in 2014, and began doing business in Canada in 2016 as Dahua Technology Canada, Inc. We can’t wait to see what the future holds for us in North America!

https://us.dahuasecurity.com/?page_id=54854

Description
The DAV file format is how Dahua systems backup video files. Follow the instruction below to playback a DAV file using SmartPlayer.

https://dahuawiki.com/Playback/Playback_DAV_File

static int dhav_read_header(AVFormatContext *s)
 {
     DHAVContext *dhav = s->priv_data;
     uint8_t signature[5];
  
     ffio_ensure_seekback(s->pb, 5);
     avio_read(s->pb, signature, sizeof(signature));
     if (!memcmp(signature, "DAHUA", 5)) {
         avio_skip(s->pb, 0x400 - 5);
         dhav->last_good_pos = avio_tell(s->pb);
     } else {
         if (!memcmp(signature, "DHAV", 4)) {
             avio_seek(s->pb, -5, SEEK_CUR);
             dhav->last_good_pos = avio_tell(s->pb);
         } else if (s->pb->seekable) {
             avio_seek(s->pb, avio_size(s->pb) - 8, SEEK_SET);
             while (avio_rl32(s->pb) == MKTAG('d','h','a','v')) {
                 int seek_back;
  
                 seek_back = avio_rl32(s->pb) + 8;
                 if (seek_back < 9)
                     break;
                 dhav->last_good_pos = avio_tell(s->pb);
                 avio_seek(s->pb, -seek_back, SEEK_CUR);
             }
             avio_seek(s->pb, dhav->last_good_pos, SEEK_SET);
         }
     }
     
https://ffmpeg.org/doxygen/trunk/dhav_8c_source.html
