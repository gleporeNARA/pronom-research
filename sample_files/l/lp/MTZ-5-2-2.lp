\ Model MTZ_MODEL
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  p[0,1] + p[0,2] + p[0,3] + p[0,4] + p[1,0] + p[1,2] + p[1,3] + p[1,4]
   + p[2,0] + p[2,1] + p[2,3] + p[2,4] + p[3,0] + p[3,1] + p[3,2] + p[3,4]
   + p[4,0] + p[4,1] + p[4,2] + p[4,3] + dc[0] + dc[1] + dc[2] + dc[3]
   + dc[4]
Subject To
 p2: p[0,1] - 20.53563611118779 z[0,1] >= 0
 p3: p[0,1] - 42.93519770050411 z[0,1] - dcc[0,1] >= -42.93519770050411
 R2: dcc[0,1] <= 42.93519770050411
 R3: x[0,1,0] - x[1,0,0] + dif[0,1,0] >= 0
 R4: - x[0,1,0] + x[1,0,0] + dif[0,1,0] >= 0
 R5: x[0,1,1] - x[1,0,1] + dif[0,1,1] >= 0
 R6: - x[0,1,1] + x[1,0,1] + dif[0,1,1] >= 0
 p2: p[0,2] - 43.66988351523839 z[0,2] >= 0
 p3: p[0,2] - 68.84015790435075 z[0,2] - dcc[0,2] >= -68.84015790435075
 R9: dcc[0,2] <= 68.84015790435075
 R10: x[0,1,0] - x[2,0,0] + dif[0,2,0] >= 0
 R11: - x[0,1,0] + x[2,0,0] + dif[0,2,0] >= 0
 R12: x[0,1,1] - x[2,0,1] + dif[0,2,1] >= 0
 R13: - x[0,1,1] + x[2,0,1] + dif[0,2,1] >= 0
 p2: p[0,3] - 32.95967396411751 z[0,3] >= 0
 p3: p[0,3] - 58.12871827473973 z[0,3] - dcc[0,3] >= -58.12871827473973
 R16: dcc[0,3] <= 58.12871827473973
 R17: x[0,1,0] - x[3,0,0] + dif[0,3,0] >= 0
 R18: - x[0,1,0] + x[3,0,0] + dif[0,3,0] >= 0
 R19: x[0,1,1] - x[3,0,1] + dif[0,3,1] >= 0
 R20: - x[0,1,1] + x[3,0,1] + dif[0,3,1] >= 0
 p2: p[0,4] - 43.85930941770224 z[0,4] >= 0
 p3: p[0,4] - 74.3153585345116 z[0,4] - dcc[0,4] >= -74.3153585345116
 R23: dcc[0,4] <= 74.3153585345116
 R24: x[0,1,0] - x[4,0,0] + dif[0,4,0] >= 0
 R25: - x[0,1,0] + x[4,0,0] + dif[0,4,0] >= 0
 R26: x[0,1,1] - x[4,0,1] + dif[0,4,1] >= 0
 R27: - x[0,1,1] + x[4,0,1] + dif[0,4,1] >= 0
 p2: p[1,0] - 20.53563611118779 z[1,0] >= 0
 p3: p[1,0] - 42.93519770050411 z[1,0] - dcc[1,0] >= -42.93519770050411
 R30: dcc[1,0] <= 42.93519770050411
 R31: - x[0,0,0] + x[1,1,0] + dif[1,0,0] >= 0
 R32: x[0,0,0] - x[1,1,0] + dif[1,0,0] >= 0
 R33: - x[0,0,1] + x[1,1,1] + dif[1,0,1] >= 0
 R34: x[0,0,1] - x[1,1,1] + dif[1,0,1] >= 0
 p2: p[1,2] - 25.35936595385266 z[1,2] >= 0
 p3: p[1,2] - 51.41511634288982 z[1,2] - dcc[1,2] >= -51.41511634288982
 R37: dcc[1,2] <= 51.41511634288982
 R38: x[1,1,0] - x[2,0,0] + dif[1,2,0] >= 0
 R39: - x[1,1,0] + x[2,0,0] + dif[1,2,0] >= 0
 R40: x[1,1,1] - x[2,0,1] + dif[1,2,1] >= 0
 R41: - x[1,1,1] + x[2,0,1] + dif[1,2,1] >= 0
 p2: p[1,3] - 45.51040123352294 z[1,3] >= 0
 p3: p[1,3] - 68.87697405283687 z[1,3] - dcc[1,3] >= -68.87697405283687
 R44: dcc[1,3] <= 68.87697405283687
 R45: x[1,1,0] - x[3,0,0] + dif[1,3,0] >= 0
 R46: - x[1,1,0] + x[3,0,0] + dif[1,3,0] >= 0
 R47: x[1,1,1] - x[3,0,1] + dif[1,3,1] >= 0
 R48: - x[1,1,1] + x[3,0,1] + dif[1,3,1] >= 0
 p2: p[1,4] - 34.03591771855255 z[1,4] >= 0
 p3: p[1,4] - 63.66219598016021 z[1,4] - dcc[1,4] >= -63.66219598016021
 R51: dcc[1,4] <= 63.66219598016021
 R52: x[1,1,0] - x[4,0,0] + dif[1,4,0] >= 0
 R53: - x[1,1,0] + x[4,0,0] + dif[1,4,0] >= 0
 R54: x[1,1,1] - x[4,0,1] + dif[1,4,1] >= 0
 R55: - x[1,1,1] + x[4,0,1] + dif[1,4,1] >= 0
 p2: p[2,0] - 43.66988351523839 z[2,0] >= 0
 p3: p[2,0] - 68.84015790435075 z[2,0] - dcc[2,0] >= -68.84015790435075
 R58: dcc[2,0] <= 68.84015790435075
 R59: - x[0,0,0] + x[2,1,0] + dif[2,0,0] >= 0
 R60: x[0,0,0] - x[2,1,0] + dif[2,0,0] >= 0
 R61: - x[0,0,1] + x[2,1,1] + dif[2,0,1] >= 0
 R62: x[0,0,1] - x[2,1,1] + dif[2,0,1] >= 0
 p2: p[2,1] - 25.35936595385266 z[2,1] >= 0
 p3: p[2,1] - 51.41511634288982 z[2,1] - dcc[2,1] >= -51.41511634288982
 R65: dcc[2,1] <= 51.41511634288982
 R66: - x[1,0,0] + x[2,1,0] + dif[2,1,0] >= 0
 R67: x[1,0,0] - x[2,1,0] + dif[2,1,0] >= 0
 R68: - x[1,0,1] + x[2,1,1] + dif[2,1,1] >= 0
 R69: x[1,0,1] - x[2,1,1] + dif[2,1,1] >= 0
 p2: p[2,3] - 80.30368273183973 z[2,3] >= 0
 p3: p[2,3] - 108.0783307134915 z[2,3] - dcc[2,3] >= -108.0783307134915
 R72: dcc[2,3] <= 108.0783307134915
 R73: x[2,1,0] - x[3,0,0] + dif[2,3,0] >= 0
 R74: - x[2,1,0] + x[3,0,0] + dif[2,3,0] >= 0
 R75: x[2,1,1] - x[3,0,1] + dif[2,3,1] >= 0
 R76: - x[2,1,1] + x[3,0,1] + dif[2,3,1] >= 0
 p2: p[2,4] - 68.94946180853647 z[2,4] >= 0
 p3: p[2,4] - 102.4487746145661 z[2,4] - dcc[2,4] >= -102.4487746145661
 R79: dcc[2,4] <= 102.4487746145661
 R80: x[2,1,0] - x[4,0,0] + dif[2,4,0] >= 0
 R81: - x[2,1,0] + x[4,0,0] + dif[2,4,0] >= 0
 R82: x[2,1,1] - x[4,0,1] + dif[2,4,1] >= 0
 R83: - x[2,1,1] + x[4,0,1] + dif[2,4,1] >= 0
 p2: p[3,0] - 32.95967396411751 z[3,0] >= 0
 p3: p[3,0] - 58.12871827473973 z[3,0] - dcc[3,0] >= -58.12871827473973
 R86: dcc[3,0] <= 58.12871827473973
 R87: - x[0,0,0] + x[3,1,0] + dif[3,0,0] >= 0
 R88: x[0,0,0] - x[3,1,0] + dif[3,0,0] >= 0
 R89: - x[0,0,1] + x[3,1,1] + dif[3,0,1] >= 0
 R90: x[0,0,1] - x[3,1,1] + dif[3,0,1] >= 0
 p2: p[3,1] - 45.51040123352294 z[3,1] >= 0
 p3: p[3,1] - 68.87697405283687 z[3,1] - dcc[3,1] >= -68.87697405283687
 R93: dcc[3,1] <= 68.87697405283687
 R94: - x[1,0,0] + x[3,1,0] + dif[3,1,0] >= 0
 R95: x[1,0,0] - x[3,1,0] + dif[3,1,0] >= 0
 R96: - x[1,0,1] + x[3,1,1] + dif[3,1,1] >= 0
 R97: x[1,0,1] - x[3,1,1] + dif[3,1,1] >= 0
 p2: p[3,2] - 80.30368273183973 z[3,2] >= 0
 p3: p[3,2] - 108.0783307134915 z[3,2] - dcc[3,2] >= -108.0783307134915
 R100: dcc[3,2] <= 108.0783307134915
 R101: - x[2,0,0] + x[3,1,0] + dif[3,2,0] >= 0
 R102: x[2,0,0] - x[3,1,0] + dif[3,2,0] >= 0
 R103: - x[2,0,1] + x[3,1,1] + dif[3,2,1] >= 0
 R104: x[2,0,1] - x[3,1,1] + dif[3,2,1] >= 0
 p2: p[3,4] - 21.13607028796541 z[3,4] >= 0
 p3: p[3,4] - 53.16432681621406 z[3,4] - dcc[3,4] >= -53.16432681621406
 R107: dcc[3,4] <= 53.16432681621406
 R108: x[3,1,0] - x[4,0,0] + dif[3,4,0] >= 0
 R109: - x[3,1,0] + x[4,0,0] + dif[3,4,0] >= 0
 R110: x[3,1,1] - x[4,0,1] + dif[3,4,1] >= 0
 R111: - x[3,1,1] + x[4,0,1] + dif[3,4,1] >= 0
 p2: p[4,0] - 43.85930941770224 z[4,0] >= 0
 p3: p[4,0] - 74.3153585345116 z[4,0] - dcc[4,0] >= -74.3153585345116
 R114: dcc[4,0] <= 74.3153585345116
 R115: - x[0,0,0] + x[4,1,0] + dif[4,0,0] >= 0
 R116: x[0,0,0] - x[4,1,0] + dif[4,0,0] >= 0
 R117: - x[0,0,1] + x[4,1,1] + dif[4,0,1] >= 0
 R118: x[0,0,1] - x[4,1,1] + dif[4,0,1] >= 0
 p2: p[4,1] - 34.03591771855255 z[4,1] >= 0
 p3: p[4,1] - 63.66219598016021 z[4,1] - dcc[4,1] >= -63.66219598016021
 R121: dcc[4,1] <= 63.66219598016021
 R122: - x[1,0,0] + x[4,1,0] + dif[4,1,0] >= 0
 R123: x[1,0,0] - x[4,1,0] + dif[4,1,0] >= 0
 R124: - x[1,0,1] + x[4,1,1] + dif[4,1,1] >= 0
 R125: x[1,0,1] - x[4,1,1] + dif[4,1,1] >= 0
 p2: p[4,2] - 68.94946180853647 z[4,2] >= 0
 p3: p[4,2] - 102.4487746145661 z[4,2] - dcc[4,2] >= -102.4487746145661
 R128: dcc[4,2] <= 102.4487746145661
 R129: - x[2,0,0] + x[4,1,0] + dif[4,2,0] >= 0
 R130: x[2,0,0] - x[4,1,0] + dif[4,2,0] >= 0
 R131: - x[2,0,1] + x[4,1,1] + dif[4,2,1] >= 0
 R132: x[2,0,1] - x[4,1,1] + dif[4,2,1] >= 0
 p2: p[4,3] - 21.13607028796541 z[4,3] >= 0
 p3: p[4,3] - 53.16432681621406 z[4,3] - dcc[4,3] >= -53.16432681621406
 R135: dcc[4,3] <= 53.16432681621406
 R136: - x[3,0,0] + x[4,1,0] + dif[4,3,0] >= 0
 R137: x[3,0,0] - x[4,1,0] + dif[4,3,0] >= 0
 R138: - x[3,0,1] + x[4,1,1] + dif[4,3,1] >= 0
 R139: x[3,0,1] - x[4,1,1] + dif[4,3,1] >= 0
 R140: z[0,1] + z[0,2] + z[0,3] + z[0,4] = 1
 R141: z[1,0] + z[1,2] + z[1,3] + z[1,4] = 1
 R142: z[2,0] + z[2,1] + z[2,3] + z[2,4] = 1
 R143: z[3,0] + z[3,1] + z[3,2] + z[3,4] = 1
 R144: z[4,0] + z[4,1] + z[4,2] + z[4,3] = 1
 R145: z[1,0] + z[2,0] + z[3,0] + z[4,0] = 1
 R146: z[0,1] + z[2,1] + z[3,1] + z[4,1] = 1
 R147: z[0,2] + z[1,2] + z[3,2] + z[4,2] = 1
 R148: z[0,3] + z[1,3] + z[2,3] + z[4,3] = 1
 R149: z[0,4] + z[1,4] + z[2,4] + z[3,4] = 1
 rest7: z[0,1] + z[1,0] <= 1
 rest7: z[0,2] + z[2,0] <= 1
 rest7: z[0,3] + z[3,0] <= 1
 rest7: z[0,4] + z[4,0] <= 1
 rest7: z[0,1] + z[1,0] <= 1
 rest7: z[1,2] + z[2,1] <= 1
 rest7: z[1,3] + z[3,1] <= 1
 rest7: z[1,4] + z[4,1] <= 1
 rest7: z[0,2] + z[2,0] <= 1
 rest7: z[1,2] + z[2,1] <= 1
 rest7: z[2,3] + z[3,2] <= 1
 rest7: z[2,4] + z[4,2] <= 1
 rest7: z[0,3] + z[3,0] <= 1
 rest7: z[1,3] + z[3,1] <= 1
 rest7: z[2,3] + z[3,2] <= 1
 rest7: z[3,4] + z[4,3] <= 1
 rest7: z[0,4] + z[4,0] <= 1
 rest7: z[1,4] + z[4,1] <= 1
 rest7: z[2,4] + z[4,2] <= 1
 rest7: z[3,4] + z[4,3] <= 1
 R170: 5 z[1,2] + sc[1] - sc[2] <= 4
 R171: 5 z[1,3] + sc[1] - sc[3] <= 4
 R172: 5 z[1,4] + sc[1] - sc[4] <= 4
 R173: 5 z[2,1] - sc[1] + sc[2] <= 4
 R174: 5 z[2,3] + sc[2] - sc[3] <= 4
 R175: 5 z[2,4] + sc[2] - sc[4] <= 4
 R176: 5 z[3,1] - sc[1] + sc[3] <= 4
 R177: 5 z[3,2] - sc[2] + sc[3] <= 4
 R178: 5 z[3,4] + sc[3] - sc[4] <= 4
 R179: 5 z[4,1] - sc[1] + sc[4] <= 4
 R180: 5 z[4,2] - sc[2] + sc[4] <= 4
 R181: 5 z[4,3] - sc[3] + sc[4] <= 4
 rest10: sc[0] = 0
 rest11: sc[1] >= 1
 rest11: sc[2] >= 1
 rest11: sc[3] >= 1
 rest11: sc[4] >= 1
 R187: dc[0] <= 12.33264358822552
 envConv: mu[0,0] + mu[0,1] + mu[0,2] + mu[0,3] + mu[0,4] + mu[0,5]
   + mu[0,6] = 1
 inP1: x[0,0,0] - 30.59745431515686 mu[0,0] - 33.24494570491819 mu[0,1]
   - 29.7457529430831 mu[0,2] - 23.59906879148686 mu[0,3]
   - 20.95157740172547 mu[0,4] - 24.45077016356051 mu[0,5]
   - 30.5974543151569 mu[0,6] = 0
 inP1: x[0,1,0] - 30.59745431515686 mu[0,0] - 33.24494570491819 mu[0,1]
   - 29.7457529430831 mu[0,2] - 23.59906879148686 mu[0,3]
   - 20.95157740172547 mu[0,4] - 24.45077016356051 mu[0,5]
   - 30.5974543151569 mu[0,6] = 0
 inP1: x[0,0,1] - 61.85766880413019 mu[0,0] - 67.42671843666984 mu[0,1]
   - 72.50403805277352 mu[0,2] - 72.0123080363376 mu[0,3]
   - 66.44325840379798 mu[0,4] - 61.36593878769426 mu[0,5]
   - 61.85766880413021 mu[0,6] = 0
 inP1: x[0,1,1] - 61.85766880413019 mu[0,0] - 67.42671843666984 mu[0,1]
   - 72.50403805277352 mu[0,2] - 72.0123080363376 mu[0,3]
   - 66.44325840379798 mu[0,4] - 61.36593878769426 mu[0,5]
   - 61.85766880413021 mu[0,6] = 0
 R193: - x[0,0,0] + x[0,1,0] + difc[0,0] >= 0
 R194: x[0,0,0] - x[0,1,0] + difc[0,0] >= 0
 R195: - x[0,0,1] + x[0,1,1] + difc[0,1] >= 0
 R196: x[0,0,1] - x[0,1,1] + difc[0,1] >= 0
 R197: dc[1] <= 11.01360170711325
 envConv: mu[1,0] + mu[1,1] + mu[1,2] + mu[1,3] + mu[1,4] + mu[1,5] = 1
 inP1: x[1,0,0] - 58.41372880576414 mu[1,0] - 62.53033396655371 mu[1,1]
   - 58.64688232356489 mu[1,2] - 52.13017205374159 mu[1,3]
   - 51.98607525514413 mu[1,4] - 58.41372880576414 mu[1,5] = 0
 inP1: x[1,1,0] - 58.41372880576414 mu[1,0] - 62.53033396655371 mu[1,1]
   - 58.64688232356489 mu[1,2] - 52.13017205374159 mu[1,3]
   - 51.98607525514413 mu[1,4] - 58.41372880576414 mu[1,5] = 0
 inP1: x[1,0,1] - 50.31546641750118 mu[1,0] - 55.73633521811453 mu[1,1]
   - 61.32659996496417 mu[1,2] - 59.36070478401423 mu[1,3]
   - 52.5554499970179 mu[1,4] - 50.31546641750118 mu[1,5] = 0
 inP1: x[1,1,1] - 50.31546641750118 mu[1,0] - 55.73633521811453 mu[1,1]
   - 61.32659996496417 mu[1,2] - 59.36070478401423 mu[1,3]
   - 52.5554499970179 mu[1,4] - 50.31546641750118 mu[1,5] = 0
 R203: - x[1,0,0] + x[1,1,0] + difc[1,0] >= 0
 R204: x[1,0,0] - x[1,1,0] + difc[1,0] >= 0
 R205: - x[1,0,1] + x[1,1,1] + difc[1,1] >= 0
 R206: x[1,0,1] - x[1,1,1] + difc[1,1] >= 0
 R207: dc[2] <= 15.06254835339334
 envConv: mu[2,0] + mu[2,1] + mu[2,2] + mu[2,3] + mu[2,4] = 1
 inP1: x[2,0,0] - 74.19110951771462 mu[2,0] - 74.78942697660898 mu[2,1]
   - 85.42343833956789 mu[2,2] - 84.82512088067351 mu[2,3]
   - 74.19110951771459 mu[2,4] = 0
 inP1: x[2,1,0] - 74.19110951771462 mu[2,0] - 74.78942697660898 mu[2,1]
   - 85.42343833956789 mu[2,2] - 84.82512088067351 mu[2,3]
   - 74.19110951771459 mu[2,4] = 0
 inP1: x[2,0,1] - 91.51861975684795 mu[2,0] - 80.88460839388911 mu[2,1]
   - 81.48292585278348 mu[2,2] - 92.11693721574233 mu[2,3]
   - 91.51861975684791 mu[2,4] = 0
 inP1: x[2,1,1] - 91.51861975684795 mu[2,0] - 80.88460839388911 mu[2,1]
   - 81.48292585278348 mu[2,2] - 92.11693721574233 mu[2,3]
   - 91.51861975684791 mu[2,4] = 0
 R213: - x[2,0,0] + x[2,1,0] + difc[2,0] >= 0
 R214: x[2,0,0] - x[2,1,0] + difc[2,0] >= 0
 R215: - x[2,0,1] + x[2,1,1] + difc[2,1] >= 0
 R216: x[2,0,1] - x[2,1,1] + difc[2,1] >= 0
 R217: dc[3] <= 12.89629347107087
 envConv: mu[3,0] + mu[3,1] + mu[3,2] + mu[3,3] + mu[3,4] + mu[3,5]
   + mu[3,6] + mu[3,7] + mu[3,8] + mu[3,9] = 1
 inP1: x[3,0,0] - 13.63237446124009 mu[3,0] - 14.30281704822621 mu[3,1]
   - 11.96990338992766 mu[3,2] - 7.725229714509585 mu[3,3]
   - 3.554926008993293 mu[3,4] - 1.410323724952882 mu[3,5]
   - 2.294906105690321 mu[3,6] - 5.794767224220478 mu[3,7]
   - 10.27228316655944 mu[3,8] - 13.63237446124007 mu[3,9] = 0
 inP1: x[3,1,0] - 13.63237446124009 mu[3,0] - 14.30281704822621 mu[3,1]
   - 11.96990338992766 mu[3,2] - 7.725229714509585 mu[3,3]
   - 3.554926008993293 mu[3,4] - 1.410323724952882 mu[3,5]
   - 2.294906105690321 mu[3,6] - 5.794767224220478 mu[3,7]
   - 10.27228316655944 mu[3,8] - 13.63237446124007 mu[3,9] = 0
 inP1: x[3,0,1] - 22.60907146520546 mu[3,0] - 27.03744319109749 mu[3,1]
   - 30.86072493170314 mu[3,2] - 32.28996066954954 mu[3,3]
   - 30.65639511871248 mu[3,4] - 26.72439175548742 mu[3,5]
   - 22.3337786528771 mu[3,6] - 19.53897247782214 mu[3,7]
   - 19.64769410044153 mu[3,8] - 22.60907146520542 mu[3,9] = 0
 inP1: x[3,1,1] - 22.60907146520546 mu[3,0] - 27.03744319109749 mu[3,1]
   - 30.86072493170314 mu[3,2] - 32.28996066954954 mu[3,3]
   - 30.65639511871248 mu[3,4] - 26.72439175548742 mu[3,5]
   - 22.3337786528771 mu[3,6] - 19.53897247782214 mu[3,7]
   - 19.64769410044153 mu[3,8] - 22.60907146520542 mu[3,9] = 0
 R223: - x[3,0,0] + x[3,1,0] + difc[3,0] >= 0
 R224: x[3,0,0] - x[3,1,0] + difc[3,0] >= 0
 R225: - x[3,0,1] + x[3,1,1] + difc[3,1] >= 0
 R226: x[3,0,1] - x[3,1,1] + difc[3,1] >= 0
 R227: dc[4] <= 19.24010584364186
 envConv: mu[4,0] + mu[4,1] + mu[4,2] + mu[4,3] + mu[4,4] + mu[4,5]
   + mu[4,6] + mu[4,7] + mu[4,8] + mu[4,9] = 1
 inP1: x[4,0,0] - 51.49799629319693 mu[4,0] - 48.85954412296227 mu[4,1]
   - 42.89226679020938 mu[4,2] - 36.38831967783366 mu[4,3]
   - 32.39097192303626 mu[4,4] - 32.77062696585863 mu[4,5]
   - 37.34963999236838 mu[4,6] - 43.98543991740043 mu[4,7]
   - 49.57306220733095 mu[4,8] - 51.49799629319693 mu[4,9] = 0
 inP1: x[4,1,0] - 51.49799629319693 mu[4,0] - 48.85954412296227 mu[4,1]
   - 42.89226679020938 mu[4,2] - 36.38831967783366 mu[4,3]
   - 32.39097192303626 mu[4,4] - 32.77062696585863 mu[4,5]
   - 37.34963999236838 mu[4,6] - 43.98543991740043 mu[4,7]
   - 49.57306220733095 mu[4,8] - 51.49799629319693 mu[4,9] = 0
 inP1: x[4,0,1] - 10.61100576583411 mu[4,0] - 16.75005644111668 mu[4,1]
   - 19.7568777331653 mu[4,2] - 18.22454454233409 mu[4,3]
   - 12.87005259859941 mu[4,4] - 6.198828190984045 mu[4,5]
   - 1.332411362211829 mu[4,6] - 0.5478526306639147 mu[4,7]
   - 4.212255746230623 mu[4,8] - 10.61100576583417 mu[4,9] = 0
 inP1: x[4,1,1] - 10.61100576583411 mu[4,0] - 16.75005644111668 mu[4,1]
   - 19.7568777331653 mu[4,2] - 18.22454454233409 mu[4,3]
   - 12.87005259859941 mu[4,4] - 6.198828190984045 mu[4,5]
   - 1.332411362211829 mu[4,6] - 0.5478526306639147 mu[4,7]
   - 4.212255746230623 mu[4,8] - 10.61100576583417 mu[4,9] = 0
 R233: - x[4,0,0] + x[4,1,0] + difc[4,0] >= 0
 R234: x[4,0,0] - x[4,1,0] + difc[4,0] >= 0
 R235: - x[4,0,1] + x[4,1,1] + difc[4,1] >= 0
 R236: x[4,0,1] - x[4,1,1] + difc[4,1] >= 0
 qc0: [ - dcc[0,1] ^2 + dif[0,1,0] ^2 + dif[0,1,1] ^2 ] <= 0
 qc1: [ - dcc[0,2] ^2 + dif[0,2,0] ^2 + dif[0,2,1] ^2 ] <= 0
 qc2: [ - dcc[0,3] ^2 + dif[0,3,0] ^2 + dif[0,3,1] ^2 ] <= 0
 qc3: [ - dcc[0,4] ^2 + dif[0,4,0] ^2 + dif[0,4,1] ^2 ] <= 0
 qc4: [ - dcc[1,0] ^2 + dif[1,0,0] ^2 + dif[1,0,1] ^2 ] <= 0
 qc5: [ - dcc[1,2] ^2 + dif[1,2,0] ^2 + dif[1,2,1] ^2 ] <= 0
 qc6: [ - dcc[1,3] ^2 + dif[1,3,0] ^2 + dif[1,3,1] ^2 ] <= 0
 qc7: [ - dcc[1,4] ^2 + dif[1,4,0] ^2 + dif[1,4,1] ^2 ] <= 0
 qc8: [ - dcc[2,0] ^2 + dif[2,0,0] ^2 + dif[2,0,1] ^2 ] <= 0
 qc9: [ - dcc[2,1] ^2 + dif[2,1,0] ^2 + dif[2,1,1] ^2 ] <= 0
 qc10: [ - dcc[2,3] ^2 + dif[2,3,0] ^2 + dif[2,3,1] ^2 ] <= 0
 qc11: [ - dcc[2,4] ^2 + dif[2,4,0] ^2 + dif[2,4,1] ^2 ] <= 0
 qc12: [ - dcc[3,0] ^2 + dif[3,0,0] ^2 + dif[3,0,1] ^2 ] <= 0
 qc13: [ - dcc[3,1] ^2 + dif[3,1,0] ^2 + dif[3,1,1] ^2 ] <= 0
 qc14: [ - dcc[3,2] ^2 + dif[3,2,0] ^2 + dif[3,2,1] ^2 ] <= 0
 qc15: [ - dcc[3,4] ^2 + dif[3,4,0] ^2 + dif[3,4,1] ^2 ] <= 0
 qc16: [ - dcc[4,0] ^2 + dif[4,0,0] ^2 + dif[4,0,1] ^2 ] <= 0
 qc17: [ - dcc[4,1] ^2 + dif[4,1,0] ^2 + dif[4,1,1] ^2 ] <= 0
 qc18: [ - dcc[4,2] ^2 + dif[4,2,0] ^2 + dif[4,2,1] ^2 ] <= 0
 qc19: [ - dcc[4,3] ^2 + dif[4,3,0] ^2 + dif[4,3,1] ^2 ] <= 0
 qc20: [ - dc[0] ^2 + difc[0,0] ^2 + difc[0,1] ^2 ] <= 0
 qc21: [ - dc[1] ^2 + difc[1,0] ^2 + difc[1,1] ^2 ] <= 0
 qc22: [ - dc[2] ^2 + difc[2,0] ^2 + difc[2,1] ^2 ] <= 0
 qc23: [ - dc[3] ^2 + difc[3,0] ^2 + difc[3,1] ^2 ] <= 0
 qc24: [ - dc[4] ^2 + difc[4,0] ^2 + difc[4,1] ^2 ] <= 0
Bounds
 mu[0,0] <= 1
 mu[0,1] <= 1
 mu[0,2] <= 1
 mu[0,3] <= 1
 mu[0,4] <= 1
 mu[0,5] <= 1
 mu[0,6] <= 1
 mu[1,0] <= 1
 mu[1,1] <= 1
 mu[1,2] <= 1
 mu[1,3] <= 1
 mu[1,4] <= 1
 mu[1,5] <= 1
 mu[2,0] <= 1
 mu[2,1] <= 1
 mu[2,2] <= 1
 mu[2,3] <= 1
 mu[2,4] <= 1
 mu[3,0] <= 1
 mu[3,1] <= 1
 mu[3,2] <= 1
 mu[3,3] <= 1
 mu[3,4] <= 1
 mu[3,5] <= 1
 mu[3,6] <= 1
 mu[3,7] <= 1
 mu[3,8] <= 1
 mu[3,9] <= 1
 mu[4,0] <= 1
 mu[4,1] <= 1
 mu[4,2] <= 1
 mu[4,3] <= 1
 mu[4,4] <= 1
 mu[4,5] <= 1
 mu[4,6] <= 1
 mu[4,7] <= 1
 mu[4,8] <= 1
 mu[4,9] <= 1
 sc[0] <= 4
 sc[1] <= 4
 sc[2] <= 4
 sc[3] <= 4
 sc[4] <= 4
Binaries
 z[0,1] z[0,2] z[0,3] z[0,4] z[1,0] z[1,2] z[1,3] z[1,4] z[2,0] z[2,1]
 z[2,3] z[2,4] z[3,0] z[3,1] z[3,2] z[3,4] z[4,0] z[4,1] z[4,2] z[4,3]
End
