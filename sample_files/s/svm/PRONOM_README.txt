/*
 * This file is part of the LibreOffice project.
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 *
 * This file incorporates work covered by the following license notice:
 *
 *   Licensed to the Apache Software Foundation (ASF) under one or more
 *   contributor license agreements. See the NOTICE file distributed
 *   with this work for additional information regarding copyright
 *   ownership. The ASF licenses this file to you under the Apache
 *   License, Version 2.0 (the "License"); you may not use this file
 *   except in compliance with the License. You may obtain a copy of
 *   the License at http://www.apache.org/licenses/LICENSE-2.0 .
 
 /**
 * Converts old SVGDI aka SVM1 format data to current VCLMTF aka SVM2 format metafile data.
 */
class VCL_PLUGIN_PUBLIC SVMConverter
{
private:
    SAL_DLLPRIVATE static void      ImplConvertFromSVM1( SvStream& rIStm, GDIMetaFile& rMtf );

public:
                        SVMConverter( SvStream& rIStm, GDIMetaFile& rMtf  );

private:
                        SVMConverter( const SVMConverter& ) = delete;
    SVMConverter&       operator=( const SVMConverter& ) = delete;
};

#endif // INCLUDED_VCL_INC_SVMCONVERTER_HXX

 else if (header==0x5653) {
#ifdef DEBUG_WITH_FILES
    readSVGDI(zone);
#endif
    dataType="image/svg";
    extension="svgdi";
    
    https://github.com/deepin-community/libstaroffice/blob/a96ed2f9a1d1ea6fe5001d556d18cecefbe4d602/src/lib/StarFileManager.cxx
