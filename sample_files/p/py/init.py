import sys
import txt
from configs import json
from configs import html_parse


def main():
    link = sys.argv[1]
    entries = []
    
    pages = []
    pages.append(link)
    html_parse.main(pages)

if __name__ == '__main__':
    main()


'''
March
Shamrock 5K, Charm City Run, paginated, hard to parse- http://results.charmcityrun.com/content/under-armour-kelly-st-patricks-day-shamrock-5k-2018?page=1
National Marathon, competitor, paginated, hard to parse- http://www.runrocknroll.com/finisher-zone/search-and-results/?resultspage=1&eventid=71&subevent_id=&yearid=&firstname=&lastname=&bib=&gender=&division=&state=&city=&perpage=13791
HatRun 50K, Scrape from HTML- https://ultrasignup.com/results_event.aspx?did=51102
B&A Half and Full, Annapolis Striders, Already formatted- http://www.mdtiming.com/2018/BA2018-Mara-Results.TXT
                                                        
April
Cherry Blossom 10M, marathonguide, Xact hard- https://eventresults-api.sporthive.com/api/events/6375357357228396544/races/427167/classifications/search?count=150&offset=0
        # 16658
Cherry Pit 10M, (AS), Scrape from HTML- 'https://www.annapolisstriders.org/result/2018-cherry-pit-10-mile-race-results/'
Boston Marathon, baa.org, searchable only
Gettysburg Marathon, itsyourrace.com, paginated: http://www.itsyourrace.com/Results.aspx?&id=10193&y=2018&eid=69743&g=A&amin=0&amax=99&s=&srch=&pg=1
                                    http://www.itsyourrace.com/Results.aspx?&id=10193&y=2018&eid=69742&g=A&amin=0&amax=99&s=&srch=&pg=1
                                    http://www.itsyourrace.com/Results.aspx?&id=10193&y=2018&eid=69744&g=A&amin=0&amax=99&s=&srch=&pg=1
                                    http://www.itsyourrace.com/Results.aspx?&id=10193&y=2018&eid=74089&g=A&amin=0&amax=99&s=&srch=&pg=1
                                    
Pikes Peek 10K, MCRRC, hack, then already formatted- https://www.mcrrc.org/race-results/2018/04/pikes-peek-10k-13/
May
Frederick Half-Marathon, chronotrack, paginated, hard to parse- http://www.zippyraceresults.com/searchrwt.php?ID=7157
Maryland Half-Marathon, Charm City Run, paginated, hard to parse- http://results.charmcityrun.com/content/river-valley-run-trail-half-marathon-2018?page=0
Columbia Triathlon, clean up, already formatted - CANCELLED
June
Baltimore 10 Miler, active.com, paginated, hackable- http://results.active.com/events/baltimore-10-miler--5/10-mile/expanded?page=1
Germantown 5 Miler, MCRRC= https://www.mcrrc.org/race-results/2018/05/germantown-5-miler-9/
Dawson's Fathers Day 10K, Annapolis Striders= https://www.annapolisstriders.org/result/2018-dawsons-fathers-day-10k-results/
EC5K and EC10K, ripit events= https://resultscui.active.com/api/results/events/NEWEllicottCity5K10K/participants?groupId=206844&routeId=100816&offset=0&limit=100
                        = https://resultscui.active.com/api/results/events/NEWEllicottCity5K10K/participants?groupId=206845&routeId=100817&offset=0&limit=100





'''




