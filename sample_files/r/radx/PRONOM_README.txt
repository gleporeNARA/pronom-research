GRAPPA Database (GAIA DR2 Restricted to Astrometry and Photometry For Amateurs)

This database comes from the DR2 delivery of the ESA GAIA mission.
The content of this delivery is described here https://www.cosmos.esa.int/web/gaia/dr2

Many thanks to the teams who made this information available:

http://gea.esac.esa.int/archive/documentation/GDR2/Miscellaneous/sec_acknowl/
And
http://gea.esac.esa.int/archive/documentation/GDR2/Miscellaneous/sec_credit_and_citation_instructions/

The Archive source database http://cdn.gea.esac.esa.int/Gaia/gdr2/gaia_source/ has been
partially used and translated by condensing in binary and structured form
the contents of the 61234 files and redistributing the data either in
the order of source_id increasing but by area of ​​the sky of 0.25°x0.25° in
Right Ascension and Declination. 1,692,919,135 sources are stored in the
base.

These 1,013,770 files thus created contain up to 60908 sources. There are 867
files containing no stars. This is a sector very close to the poles
celestial north and south.

The database is structured in 704 directories for declinations ranging from -87.75°
at +87.75°. Each directory lists stars within a 0.25° band of
declination. The directories are therefore named N0.00 to N87.75 and S0.00 to S87.75.
In each directory, the stars are saved in 1440 files each
with a width of 0.25° of Right Ascension. Files are named according to the area
they represent. Thus, the file 0.00S40.00.radx corresponds to the zone which
ranges from 0 to 0.249999999999° in AD and -40° to -40.249999999999° in declination.
In the files, the stars are all ordered sequentially according to
increasing AD.

An additional directory defines the polar zones. This 'poles' directory
contains the 10 complementary bands of 0.25° declination and going from 0
360° of Right Ascension. The 10 files are named according to the tape they
represent.

Each .RADX file is made up of fixed size records (39 bytes) encoded
thus in Pascal language:

T_Star = bitpacked record
      source_ID: QWord; {8 bytes}
      ra,dec: double; {2x8bytes}
      { 8 bits=1 bytes to indicate if the following fields are set: }
      Idparallax, IdPMRA, IdPMDEC, HasVR, Idphot_bp_mean_mag, Idphot_rp_mean_mag,
	  HasVariability,Idnull: boolean;
      parallax, { factor 10}
      PMRA, { own mvt factor 1 in AD }
      PMDEC, { factor 1 proper mvt in decl. }
      phot_g_mean_mag, { factor 1000 G-band magnitude }
      phot_bp_mean_mag, { factor 1000 bp band magnitude }
      phot_rp_mean_mag { factor 1000 magnitude rp band }
                       :smallint; { signed integers on 2 bytes each}
      index_dec: word; { unsigned 2-byte integer }
   end;
   
   
   https://ftp.imcce.fr/pub/catalogs/GRAPPA/lisez%20moi.txt
