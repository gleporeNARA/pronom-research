Qualcomm Atheros is a developer of semiconductor chips for network communications, particularly wireless chipsets. The company was founded under the name T-Span Systems in 1998 by experts in signal processing and VLSI design from Stanford University, the University of California, Berkeley, and private industry. The company was renamed Atheros Communications in 2000 and it completed an initial public offering in February 2004, trading on the NASDAQ under the symbol ATHR.

On January 5, 2011, it was announced that Qualcomm had agreed to a takeover of the company for a valuation of US$3.7 billion. When the acquisition was completed on May 24, 2011, Atheros became a subsidiary of Qualcomm operating under the name Qualcomm Atheros.[1]

Qualcomm Atheros chipsets for the IEEE 802.11 standard of wireless networking are used by over 30 different wireless device manufacturers.[2]

https://en.wikipedia.org/wiki/Qualcomm_Atheros

>>   /* includes also the null byte */
>>   #define ATH10K_FIRMWARE_MAGIC               "QCA-ATH10K"
>> diff --git a/drivers/net/wireless/ath/ath10k/testmode.c
>> b/drivers/net/wireless/ath/ath10k/testmode.c
>> index b084f88da102..1d5a2fdcbf56 100644
>> --- a/drivers/net/wireless/ath/ath10k/testmode.c
>> +++ b/drivers/net/wireless/ath/ath10k/testmode.c
>> @@ -139,11 +139,181 @@ static int ath10k_tm_cmd_get_version(struct ath10k
>> *ar, struct nlattr *tb[])
>>         return cfg80211_testmode_reply(skb);
>>   }

https://lore.kernel.org/all/CA+BoTQnSQmdCCqF43+Q5cxyVVLrM_BxRMT+Ydpfe6_5yRV2+Lw@mail.gmail.com/

ath10k-firmware
These are the latest firmware files for ath10k, a mac80211 driver for QCA988x, QCA6174, QCA99XX and similar. The official location to download ath10k images is from linux-firmware:

https://git.kernel.org/cgit/linux/kernel/git/firmware/linux-firmware.git/

For more information check the wiki:

https://wireless.wiki.kernel.org/en/users/Drivers/ath10k/firmware

Submit bug reports, questions, comments and feature requests to the ath10k mailing list:

https://wireless.wiki.kernel.org/en/users/drivers/ath10k/support

Submit board file additions:

https://wireless.wiki.kernel.org/en/users/drivers/ath10k/boardfiles

For anything else check the ath10k wiki:

https://wireless.wiki.kernel.org/en/users/drivers/ath10k

https://github.com/kvalo/ath10k-firmware/tree/master
