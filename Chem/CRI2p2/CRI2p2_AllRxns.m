% ./CRI2p2_AllRxns.m
% generated from ./cri_export.fac
% 20260701
% # of species = 442
% # of reactions = 1261

% NOTE:
% Amir: K16ISOM (rate constants) for the following reactions rates is complex; 
% it depends on NO,RO2, and NO3 concentrations; 
% this may create instabilities in the solver
% I've removed these reactions for now.
%     KNO = KRO2NO*NO
%     KHO2 = KRO2HO2*HO2*0.706
%     KRO2 = 1.26e-12*RO2
%     KNO3 = KRO2NO3*NO3
%     KTR = KNO + KHO2 + KRO2 + KNO3
%     K16ISOM = (KTR*5.18e-04*np.exp(1308/temp)) +(2.76e+07*np.exp(-6759/temp))
% i=i+1; 
% Rnames{i} = 'RU14O2 = HO2 + HPUCARB12';
% k(:,i) = K16ISOM.*0.5;
% Gstr{i,1} = 'RU14O2'; 
% fRU14O2(i)=fRU14O2(i)-1; fHO2(i)=fHO2(i)+1; fHPUCARB12(i)=fHPUCARB12(i)+1; 
% i=i+1;
% Rnames{i} = 'RU14O2 = DHPR12O2';
% k(:,i) = K16ISOM.*0.5;
% Gstr{i,1} = 'RU14O2'; 
% fRU14O2(i)=fRU14O2(i)-1; fDHPR12O2(i)=fDHPR12O2(i)+1; 

SpeciesToAdd = {...
'CH3O2'; 'CH4'; 'OH'; 'C2H5O2'; 'C2H6'; 'C3H8'; 'IC3H7O2'; 'RN10O2'; 'NC4H10'; 'RN13O2'; ...
'NC5H12'; 'RN16O2'; 'NC6H14'; 'RN19O2'; 'NC7H16'; 'RN22O2'; 'NC8H18'; 'RN25O2'; 'NC9H20'; 'RN28O2'; ...
'NC10H22'; 'RN31O2'; 'NC11H24'; 'RN34O2'; 'NC12H26'; 'RN37O2'; 'IC4H10'; 'RI13O2'; 'IC5H12'; 'RI16O2'; ...
'NEOP'; 'RI16AO2'; 'M2PE'; 'RN19BO2'; 'M3PE'; 'M22C4'; 'M23C4'; 'RI19O2'; 'RN19AO2'; 'M2HEX'; ...
'M3HEX'; 'RN22AO2'; 'CHEX'; 'RC18O2'; 'C2H4'; 'HOCH2CH2O2'; 'C3H6'; 'RN9O2'; 'BUT1ENE'; 'RN12O2'; ...
'PENT1ENE'; 'RN15O2'; 'HEX1ENE'; 'RN18O2'; 'CBUT2ENE'; 'TBUT2ENE'; 'CPENT2ENE'; 'TPENT2ENE'; 'CHEX2ENE'; 'THEX2ENE'; ...
'MEPROPENE'; 'RI12O2'; 'ME2BUT1ENE'; 'RN15AO2'; 'ME3BUT1ENE'; 'RI15O2'; 'ME2BUT2ENE'; 'NO3'; 'NRN6O2'; 'NRN9O2'; ...
'NRN12O2'; 'NRN15O2'; 'NRN18O2'; 'NRI12O2'; 'NRI15O2'; 'CO'; 'HCHO'; 'HO2'; 'O3'; 'HCOOH'; ...
'CH3CO2H'; 'PROPACID'; 'CH3CHO'; 'CH3COCH3'; 'RN8O2'; 'H2O2'; 'CARB11'; 'C2H5CHO'; 'CARB11A'; 'CARB14'; ...
'C4H6'; 'RU11O2'; 'C5H8'; 'RU14O2'; 'NRU14O2'; 'UCARB10'; 'APINENE'; 'RTN28O2'; 'NRTN28O2'; 'RN18AO2'; ...
'TNCARB26'; 'RCOOH25'; 'BPINENE'; 'RTX28O2'; 'NRTX28O2'; 'RTX24O2'; 'TXCARB24'; 'TXCARB22'; 'C2H2'; 'CARB3'; ...
'BENZENE'; 'RA13O2'; 'AROH14'; 'RA16O2'; 'TOLUENE'; 'AROH17'; 'OXYL'; 'RA19AO2'; 'RA19CO2'; 'MXYL'; ...
'RA19BO2'; 'PXYL'; 'EBENZ'; 'RA22AO2'; 'TM123B'; 'RA22BO2'; 'TM124B'; 'TM135B'; 'OETHTOL'; 'METHTOL'; ...
'PETHTOL'; 'PBENZ'; 'IPBENZ'; 'DIME35EB'; 'RA25O2'; 'DIET35TOL'; 'RA28O2'; 'RUA20O2'; 'STYRENE'; 'NRUA20O2'; ...
'BENZAL'; 'RAROH14'; 'RA16BO2'; 'HNO3'; 'H2'; 'C3H7CHO'; 'IPRCHO'; 'C4H9CHO'; 'CH3CO3'; 'C2H5CO3'; ...
'RN11O2'; 'RI11O2'; 'RN14O2'; 'MEK'; 'MPRK'; 'MIPK'; 'CYHEXONE'; 'DIEK'; 'HEX2ONE'; 'HEX3ONE'; ...
'MIBK'; 'MTBK'; 'RI14O2'; 'RN17O2'; 'RI17O2'; 'RC16O2'; 'CH3OH'; 'C2H5OH'; 'NPROPOL'; 'IPROPOL'; ...
'NBUTOL'; 'BUT2OL'; 'IBUTOL'; 'TBUTOL'; 'PECOH'; 'IPEAOH'; 'ME3BUOL'; 'IPECOH'; 'IPEBOH'; 'CYHEXOL'; ...
'MIBKAOH'; 'RN16AO2'; 'ETHGLY'; 'HOCH2CHO'; 'PROPGLY'; 'CARB7'; 'CH3OCH3'; 'RE6O2'; 'DIETETHER'; 'RE12O2'; ...
'MTBE'; 'RE15O2'; 'DIIPRETHER'; 'ETBE'; 'RE18O2'; 'CH3OCHO'; 'MO2EOL'; 'ECARB7'; 'EOX2EOL'; 'PR2OHMOX'; ...
'BUOX2ETOH'; 'BOX2PROL'; 'DMM'; 'DMC'; 'METHACET'; 'ETHACET'; 'NPROACET'; 'RN13AO2'; 'IPROACET'; 'NBUTACET'; ...
'SBUTACET'; 'TBUACET'; 'NO'; 'NO2'; 'RN21AO2'; 'RN24AO2'; 'RN27AO2'; 'RN30AO2'; 'RN33AO2'; 'RN36AO2'; ...
'RN21O2'; 'RN24O2'; 'RN25AO2'; 'RN27O2'; 'RN28AO2'; 'RN30O2'; 'RN31AO2'; 'RN33O2'; 'RN34AO2'; 'UDCARB8'; ...
'UDCARB11'; 'CARB6'; 'UDCARB14'; 'CARB9'; 'UDCARB17'; 'UDCARB20'; 'CARB17'; 'RN36O2'; 'CARB13'; 'CARB16'; ...
'CARB19'; 'CARB22'; 'CARB25'; 'CARB28'; 'CARB31'; 'CARB34'; 'CCARB14'; 'CCARB12'; 'RC14O2'; 'HOCH2CO3'; ...
'RN20O2'; 'RN23O2'; 'RN26O2'; 'RN29O2'; 'RN32O2'; 'RN35O2'; 'UCARB12'; 'RU12O2'; 'RU10O2'; 'RU10NO3'; ...
'NUCARB12'; 'NOA'; 'NRU12O2'; 'ECARB13'; 'RTN25O2'; 'RTN26O2'; 'RTN24O2'; 'RTN23O2'; 'RTN14O2'; 'TNCARB10'; ...
'RTN10O2'; 'RTX22O2'; 'CH3NO3'; 'C2H5NO3'; 'RN10NO3'; 'IC3H7NO3'; 'RN13NO3'; 'RN16NO3'; 'RN19NO3'; 'RN22NO3'; ...
'RN25NO3'; 'RN28NO3'; 'RN31NO3'; 'RN34NO3'; 'RN37NO3'; 'RI13NO3'; 'RI16NO3'; 'HOC2H4NO3'; 'RN9NO3'; 'RN12NO3'; ...
'RN15NO3'; 'RN18NO3'; 'RN21NO3'; 'RN24NO3'; 'RN27NO3'; 'RN30NO3'; 'RN33NO3'; 'RN36NO3'; 'RI12NO3'; 'RI15NO3'; ...
'RC18NO3'; 'RU11NO3'; 'RU14NO3'; 'RA13NO3'; 'RA16NO3'; 'RA19NO3'; 'RA22NO3'; 'RA25NO3'; 'RA28NO3'; 'RE12NO3'; ...
'RE15NO3'; 'RE18NO3'; 'RTN28NO3'; 'RTN25NO3'; 'RTX28NO3'; 'RTX24NO3'; 'RTX22NO3'; 'CH3OOH'; 'C2H5OOH'; 'RN10OOH'; ...
'IC3H7OOH'; 'RN13OOH'; 'RN16OOH'; 'RN19OOH'; 'RN22OOH'; 'RN25OOH'; 'RN28OOH'; 'RN31OOH'; 'RN34OOH'; 'RN37OOH'; ...
'RI13OOH'; 'RI16OOH'; 'RA13OOH'; 'RA16OOH'; 'RA19OOH'; 'RA22OOH'; 'RA25OOH'; 'RA28OOH'; 'RUA20OOH'; 'RA16BOOH'; ...
'HOC2H4OOH'; 'RN9OOH'; 'RN12OOH'; 'RN15OOH'; 'RN18OOH'; 'RN21OOH'; 'RN24OOH'; 'RN27OOH'; 'RN30OOH'; 'RN33OOH'; ...
'RN36OOH'; 'RI12OOH'; 'RI15OOH'; 'RC18OOH'; 'RN14OOH'; 'CH3CO3H'; 'C2H5CO3H'; 'HOCH2CO3H'; 'RN8OOH'; 'RN11OOH'; ...
'RN17OOH'; 'RN20OOH'; 'RN23OOH'; 'RN26OOH'; 'RN29OOH'; 'RN32OOH'; 'RN35OOH'; 'RU11OOH'; 'RU14OOH'; 'RU12OOH'; ...
'RU10OOH'; 'RI11OOH'; 'RI14OOH'; 'RI17OOH'; 'NRN6OOH'; 'NRN9OOH'; 'NRN12OOH'; 'NRN15OOH'; 'NRN18OOH'; 'NRI12OOH'; ...
'NRI15OOH'; 'NRU14OOH'; 'NRU12OOH'; 'NRUA20OOH'; 'RTN28OOH'; 'NRTN28OOH'; 'RTN26OOH'; 'RTN25OOH'; 'RTN24OOH'; 'RTN23OOH'; ...
'RTN14OOH'; 'RTN10OOH'; 'RTX28OOH'; 'RTX24OOH'; 'RTX22OOH'; 'NRTX28OOH'; 'CARB20'; 'CARB23'; 'CARB26'; 'CARB29'; ...
'CARB32'; 'CARB35'; 'CARB10'; 'CARB12'; 'CARB15'; 'CARB18'; 'CARB21'; 'CARB24'; 'CARB27'; 'CARB30'; ...
'CARB33'; 'HUCARB9'; 'ANHY'; 'TNCARB15'; 'ARNOH14'; 'RAROH17'; 'ARNOH17'; 'PAN'; 'PPN'; 'PHAN'; ...
'MACO3'; 'MPAN'; 'RTN26PAN'; 'HPUCARB12'; 'DHPR12O2'; 'DHPR12OOH'; 'DHPCARB9'; 'RU12NO3'; 'IEPOX'; 'DHCARB9'; ...
'RU10AO2'; 'HMML'; 'O'; 'O1D'; 'N2O5'; 'HONO'; 'HO2NO2'; 'SO2'; 'SO3'; 'HSO3'; ...
'NA'; 'SA'; };

AddSpecies

i=i+1;
Rnames{i} = 'CH4 + OH = CH3O2';
k(:,i) = 1.85e-12.*exp(-1690./T);
Gstr{i,1} = 'CH4'; Gstr{i,2} = 'OH'; 
fCH4(i)=fCH4(i)-1; fOH(i)=fOH(i)-1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'C2H6 + OH = C2H5O2';
k(:,i) = 6.9e-12.*exp(-1000./T);
Gstr{i,1} = 'C2H6'; Gstr{i,2} = 'OH'; 
fC2H6(i)=fC2H6(i)-1; fOH(i)=fOH(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; 

i=i+1;
Rnames{i} = 'C3H8 + OH = IC3H7O2';
k(:,i) = 7.6e-12.*exp(-585./T).*0.736;
Gstr{i,1} = 'C3H8'; Gstr{i,2} = 'OH'; 
fC3H8(i)=fC3H8(i)-1; fOH(i)=fOH(i)-1; fIC3H7O2(i)=fIC3H7O2(i)+1; 

i=i+1;
Rnames{i} = 'C3H8 + OH = RN10O2';
k(:,i) = 7.6e-12.*exp(-585./T).*0.264;
Gstr{i,1} = 'C3H8'; Gstr{i,2} = 'OH'; 
fC3H8(i)=fC3H8(i)-1; fOH(i)=fOH(i)-1; fRN10O2(i)=fRN10O2(i)+1; 

i=i+1;
Rnames{i} = 'NC4H10 + OH = RN13O2';
k(:,i) = 9.8e-12.*exp(-425./T);
Gstr{i,1} = 'NC4H10'; Gstr{i,2} = 'OH'; 
fNC4H10(i)=fNC4H10(i)-1; fOH(i)=fOH(i)-1; fRN13O2(i)=fRN13O2(i)+1; 

i=i+1;
Rnames{i} = 'NC5H12 + OH = RN16O2';
k(:,i) = 2.44e-17.*T.^(2).*exp(183./T);
Gstr{i,1} = 'NC5H12'; Gstr{i,2} = 'OH'; 
fNC5H12(i)=fNC5H12(i)-1; fOH(i)=fOH(i)-1; fRN16O2(i)=fRN16O2(i)+1; 

i=i+1;
Rnames{i} = 'NC6H14 + OH = RN19O2';
k(:,i) = 1.53e-17.*T.^(2).*exp(414./T);
Gstr{i,1} = 'NC6H14'; Gstr{i,2} = 'OH'; 
fNC6H14(i)=fNC6H14(i)-1; fOH(i)=fOH(i)-1; fRN19O2(i)=fRN19O2(i)+1; 

i=i+1;
Rnames{i} = 'NC7H16 + OH = RN22O2';
k(:,i) = 1.59e-17.*T.^(2).*exp(478./T);
Gstr{i,1} = 'NC7H16'; Gstr{i,2} = 'OH'; 
fNC7H16(i)=fNC7H16(i)-1; fOH(i)=fOH(i)-1; fRN22O2(i)=fRN22O2(i)+1; 

i=i+1;
Rnames{i} = 'NC8H18 + OH = RN25O2';
k(:,i) = 2.76e-17.*T.^(2).*exp(378./T);
Gstr{i,1} = 'NC8H18'; Gstr{i,2} = 'OH'; 
fNC8H18(i)=fNC8H18(i)-1; fOH(i)=fOH(i)-1; fRN25O2(i)=fRN25O2(i)+1; 

i=i+1;
Rnames{i} = 'NC9H20 + OH = RN28O2';
k(:,i) = 2.51e-17.*T.^(2).*exp(447./T);
Gstr{i,1} = 'NC9H20'; Gstr{i,2} = 'OH'; 
fNC9H20(i)=fNC9H20(i)-1; fOH(i)=fOH(i)-1; fRN28O2(i)=fRN28O2(i)+1; 

i=i+1;
Rnames{i} = 'NC10H22 + OH = RN31O2';
k(:,i) = 3.13e-17.*T.^(2).*exp(416./T);
Gstr{i,1} = 'NC10H22'; Gstr{i,2} = 'OH'; 
fNC10H22(i)=fNC10H22(i)-1; fOH(i)=fOH(i)-1; fRN31O2(i)=fRN31O2(i)+1; 

i=i+1;
Rnames{i} = 'NC11H24 + OH = RN34O2';
k(:,i) = 1.29e-11;
Gstr{i,1} = 'NC11H24'; Gstr{i,2} = 'OH'; 
fNC11H24(i)=fNC11H24(i)-1; fOH(i)=fOH(i)-1; fRN34O2(i)=fRN34O2(i)+1; 

i=i+1;
Rnames{i} = 'NC12H26 + OH = RN37O2';
k(:,i) = 1.39e-11;
Gstr{i,1} = 'NC12H26'; Gstr{i,2} = 'OH'; 
fNC12H26(i)=fNC12H26(i)-1; fOH(i)=fOH(i)-1; fRN37O2(i)=fRN37O2(i)+1; 

i=i+1;
Rnames{i} = 'IC4H10 + OH = RI13O2';
k(:,i) = 1.16e-17.*T.^(2).*exp(225./T);
Gstr{i,1} = 'IC4H10'; Gstr{i,2} = 'OH'; 
fIC4H10(i)=fIC4H10(i)-1; fOH(i)=fOH(i)-1; fRI13O2(i)=fRI13O2(i)+1; 

i=i+1;
Rnames{i} = 'IC5H12 + OH = RI16O2';
k(:,i) = 3.70e-12;
Gstr{i,1} = 'IC5H12'; Gstr{i,2} = 'OH'; 
fIC5H12(i)=fIC5H12(i)-1; fOH(i)=fOH(i)-1; fRI16O2(i)=fRI16O2(i)+1; 

i=i+1;
Rnames{i} = 'NEOP + OH = RI16AO2';
k(:,i) = 1.80e-17.*T.^(2).*exp(-189./T);
Gstr{i,1} = 'NEOP'; Gstr{i,2} = 'OH'; 
fNEOP(i)=fNEOP(i)-1; fOH(i)=fOH(i)-1; fRI16AO2(i)=fRI16AO2(i)+1; 

i=i+1;
Rnames{i} = 'M2PE + OH = RN19BO2';
k(:,i) = 5.30e-12;
Gstr{i,1} = 'M2PE'; Gstr{i,2} = 'OH'; 
fM2PE(i)=fM2PE(i)-1; fOH(i)=fOH(i)-1; fRN19BO2(i)=fRN19BO2(i)+1; 

i=i+1;
Rnames{i} = 'M3PE + OH = RN19BO2';
k(:,i) = 5.40e-12;
Gstr{i,1} = 'M3PE'; Gstr{i,2} = 'OH'; 
fM3PE(i)=fM3PE(i)-1; fOH(i)=fOH(i)-1; fRN19BO2(i)=fRN19BO2(i)+1; 

i=i+1;
Rnames{i} = 'M22C4 + OH = RN19O2';
k(:,i) = 3.22e-11.*exp(-781./T);
Gstr{i,1} = 'M22C4'; Gstr{i,2} = 'OH'; 
fM22C4(i)=fM22C4(i)-1; fOH(i)=fOH(i)-1; fRN19O2(i)=fRN19O2(i)+1; 

i=i+1;
Rnames{i} = 'M23C4 + OH = RI19O2';
k(:,i) = 1.24e-17.*T.^(2).*exp(494./T).*0.877;
Gstr{i,1} = 'M23C4'; Gstr{i,2} = 'OH'; 
fM23C4(i)=fM23C4(i)-1; fOH(i)=fOH(i)-1; fRI19O2(i)=fRI19O2(i)+1; 

i=i+1;
Rnames{i} = 'M23C4 + OH = RN19AO2';
k(:,i) = 1.24e-17.*T.^(2).*exp(494./T).*0.123;
Gstr{i,1} = 'M23C4'; Gstr{i,2} = 'OH'; 
fM23C4(i)=fM23C4(i)-1; fOH(i)=fOH(i)-1; fRN19AO2(i)=fRN19AO2(i)+1; 

i=i+1;
Rnames{i} = 'M2HEX + OH = RN22O2';
k(:,i) = 6.86e-12;
Gstr{i,1} = 'M2HEX'; Gstr{i,2} = 'OH'; 
fM2HEX(i)=fM2HEX(i)-1; fOH(i)=fOH(i)-1; fRN22O2(i)=fRN22O2(i)+1; 

i=i+1;
Rnames{i} = 'M3HEX + OH = RN22O2';
k(:,i) = 7.15e-12.*0.558;
Gstr{i,1} = 'M3HEX'; Gstr{i,2} = 'OH'; 
fM3HEX(i)=fM3HEX(i)-1; fOH(i)=fOH(i)-1; fRN22O2(i)=fRN22O2(i)+1; 

i=i+1;
Rnames{i} = 'M3HEX + OH = RN22AO2';
k(:,i) = 7.15e-12.*0.442;
Gstr{i,1} = 'M3HEX'; Gstr{i,2} = 'OH'; 
fM3HEX(i)=fM3HEX(i)-1; fOH(i)=fOH(i)-1; fRN22AO2(i)=fRN22AO2(i)+1; 

i=i+1;
Rnames{i} = 'CHEX + OH = RC18O2';
k(:,i) = 2.88e-17.*T.^(2).*exp(309./T);
Gstr{i,1} = 'CHEX'; Gstr{i,2} = 'OH'; 
fCHEX(i)=fCHEX(i)-1; fOH(i)=fOH(i)-1; fRC18O2(i)=fRC18O2(i)+1; 

i=i+1;
Rnames{i} = 'C2H4 + OH = HOCH2CH2O2';
k(:,i) = KMT15;
Gstr{i,1} = 'C2H4'; Gstr{i,2} = 'OH'; 
fC2H4(i)=fC2H4(i)-1; fOH(i)=fOH(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; 

i=i+1;
Rnames{i} = 'C3H6 + OH = RN9O2';
k(:,i) = KMT16;
Gstr{i,1} = 'C3H6'; Gstr{i,2} = 'OH'; 
fC3H6(i)=fC3H6(i)-1; fOH(i)=fOH(i)-1; fRN9O2(i)=fRN9O2(i)+1; 

i=i+1;
Rnames{i} = 'BUT1ENE + OH = RN12O2';
k(:,i) = 6.55e-12.*exp(467./T);
Gstr{i,1} = 'BUT1ENE'; Gstr{i,2} = 'OH'; 
fBUT1ENE(i)=fBUT1ENE(i)-1; fOH(i)=fOH(i)-1; fRN12O2(i)=fRN12O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + PENT1ENE = RN15O2';
k(:,i) = 5.86e-12.*exp(500./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PENT1ENE'; 
fOH(i)=fOH(i)-1; fPENT1ENE(i)=fPENT1ENE(i)-1; fRN15O2(i)=fRN15O2(i)+1; 

i=i+1;
Rnames{i} = 'HEX1ENE + OH = RN18O2';
k(:,i) = 3.70e-11;
Gstr{i,1} = 'HEX1ENE'; Gstr{i,2} = 'OH'; 
fHEX1ENE(i)=fHEX1ENE(i)-1; fOH(i)=fOH(i)-1; fRN18O2(i)=fRN18O2(i)+1; 

i=i+1;
Rnames{i} = 'CBUT2ENE + OH = RN12O2';
k(:,i) = 1.10e-11.*exp(487./T);
Gstr{i,1} = 'CBUT2ENE'; Gstr{i,2} = 'OH'; 
fCBUT2ENE(i)=fCBUT2ENE(i)-1; fOH(i)=fOH(i)-1; fRN12O2(i)=fRN12O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + TBUT2ENE = RN12O2';
k(:,i) = 1.01e-11.*exp(550./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'TBUT2ENE'; 
fOH(i)=fOH(i)-1; fTBUT2ENE(i)=fTBUT2ENE(i)-1; fRN12O2(i)=fRN12O2(i)+1; 

i=i+1;
Rnames{i} = 'CPENT2ENE + OH = RN15O2';
k(:,i) = 6.54e-11;
Gstr{i,1} = 'CPENT2ENE'; Gstr{i,2} = 'OH'; 
fCPENT2ENE(i)=fCPENT2ENE(i)-1; fOH(i)=fOH(i)-1; fRN15O2(i)=fRN15O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + TPENT2ENE = RN15O2';
k(:,i) = 6.69e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'TPENT2ENE'; 
fOH(i)=fOH(i)-1; fTPENT2ENE(i)=fTPENT2ENE(i)-1; fRN15O2(i)=fRN15O2(i)+1; 

i=i+1;
Rnames{i} = 'CHEX2ENE + OH = RN18O2';
k(:,i) = 6.00e-11;
Gstr{i,1} = 'CHEX2ENE'; Gstr{i,2} = 'OH'; 
fCHEX2ENE(i)=fCHEX2ENE(i)-1; fOH(i)=fOH(i)-1; fRN18O2(i)=fRN18O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + THEX2ENE = RN18O2';
k(:,i) = 6.00e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'THEX2ENE'; 
fOH(i)=fOH(i)-1; fTHEX2ENE(i)=fTHEX2ENE(i)-1; fRN18O2(i)=fRN18O2(i)+1; 

i=i+1;
Rnames{i} = 'MEPROPENE + OH = RI12O2';
k(:,i) = 9.4e-12.*exp(505./T);
Gstr{i,1} = 'MEPROPENE'; Gstr{i,2} = 'OH'; 
fMEPROPENE(i)=fMEPROPENE(i)-1; fOH(i)=fOH(i)-1; fRI12O2(i)=fRI12O2(i)+1; 

i=i+1;
Rnames{i} = 'ME2BUT1ENE + OH = RN15AO2';
k(:,i) = 6.07e-11;
Gstr{i,1} = 'ME2BUT1ENE'; Gstr{i,2} = 'OH'; 
fME2BUT1ENE(i)=fME2BUT1ENE(i)-1; fOH(i)=fOH(i)-1; fRN15AO2(i)=fRN15AO2(i)+1; 

i=i+1;
Rnames{i} = 'ME3BUT1ENE + OH = RI15O2';
k(:,i) = 5.32e-12.*exp(533./T);
Gstr{i,1} = 'ME3BUT1ENE'; Gstr{i,2} = 'OH'; 
fME3BUT1ENE(i)=fME3BUT1ENE(i)-1; fOH(i)=fOH(i)-1; fRI15O2(i)=fRI15O2(i)+1; 

i=i+1;
Rnames{i} = 'ME2BUT2ENE + OH = RI15O2';
k(:,i) = 1.92e-11.*exp(450./T);
Gstr{i,1} = 'ME2BUT2ENE'; Gstr{i,2} = 'OH'; 
fME2BUT2ENE(i)=fME2BUT2ENE(i)-1; fOH(i)=fOH(i)-1; fRI15O2(i)=fRI15O2(i)+1; 

i=i+1;
Rnames{i} = 'C2H4 + NO3 = NRN6O2';
k(:,i) = 3.3e-12.*exp(-2880./T);
Gstr{i,1} = 'C2H4'; Gstr{i,2} = 'NO3'; 
fC2H4(i)=fC2H4(i)-1; fNO3(i)=fNO3(i)-1; fNRN6O2(i)=fNRN6O2(i)+1; 

i=i+1;
Rnames{i} = 'C3H6 + NO3 = NRN9O2';
k(:,i) = 4.6e-13.*exp(-1155./T);
Gstr{i,1} = 'C3H6'; Gstr{i,2} = 'NO3'; 
fC3H6(i)=fC3H6(i)-1; fNO3(i)=fNO3(i)-1; fNRN9O2(i)=fNRN9O2(i)+1; 

i=i+1;
Rnames{i} = 'BUT1ENE + NO3 = NRN12O2';
k(:,i) = 3.2e-13.*exp(-950./T);
Gstr{i,1} = 'BUT1ENE'; Gstr{i,2} = 'NO3'; 
fBUT1ENE(i)=fBUT1ENE(i)-1; fNO3(i)=fNO3(i)-1; fNRN12O2(i)=fNRN12O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + PENT1ENE = NRN15O2';
k(:,i) = 1.20e-14;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'PENT1ENE'; 
fNO3(i)=fNO3(i)-1; fPENT1ENE(i)=fPENT1ENE(i)-1; fNRN15O2(i)=fNRN15O2(i)+1; 

i=i+1;
Rnames{i} = 'HEX1ENE + NO3 = NRN18O2';
k(:,i) = 1.20e-14;
Gstr{i,1} = 'HEX1ENE'; Gstr{i,2} = 'NO3'; 
fHEX1ENE(i)=fHEX1ENE(i)-1; fNO3(i)=fNO3(i)-1; fNRN18O2(i)=fNRN18O2(i)+1; 

i=i+1;
Rnames{i} = 'CBUT2ENE + NO3 = NRN12O2';
k(:,i) = 3.50e-13;
Gstr{i,1} = 'CBUT2ENE'; Gstr{i,2} = 'NO3'; 
fCBUT2ENE(i)=fCBUT2ENE(i)-1; fNO3(i)=fNO3(i)-1; fNRN12O2(i)=fNRN12O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + TBUT2ENE = NRN12O2';
k(:,i) = 3.90e-13;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'TBUT2ENE'; 
fNO3(i)=fNO3(i)-1; fTBUT2ENE(i)=fTBUT2ENE(i)-1; fNRN12O2(i)=fNRN12O2(i)+1; 

i=i+1;
Rnames{i} = 'CPENT2ENE + NO3 = NRN15O2';
k(:,i) = 3.70e-13;
Gstr{i,1} = 'CPENT2ENE'; Gstr{i,2} = 'NO3'; 
fCPENT2ENE(i)=fCPENT2ENE(i)-1; fNO3(i)=fNO3(i)-1; fNRN15O2(i)=fNRN15O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + TPENT2ENE = NRN15O2';
k(:,i) = 3.70e-13;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'TPENT2ENE'; 
fNO3(i)=fNO3(i)-1; fTPENT2ENE(i)=fTPENT2ENE(i)-1; fNRN15O2(i)=fNRN15O2(i)+1; 

i=i+1;
Rnames{i} = 'CHEX2ENE + NO3 = NRN18O2';
k(:,i) = 3.70e-13;
Gstr{i,1} = 'CHEX2ENE'; Gstr{i,2} = 'NO3'; 
fCHEX2ENE(i)=fCHEX2ENE(i)-1; fNO3(i)=fNO3(i)-1; fNRN18O2(i)=fNRN18O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + THEX2ENE = NRN18O2';
k(:,i) = 3.70e-13;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'THEX2ENE'; 
fNO3(i)=fNO3(i)-1; fTHEX2ENE(i)=fTHEX2ENE(i)-1; fNRN18O2(i)=fNRN18O2(i)+1; 

i=i+1;
Rnames{i} = 'MEPROPENE + NO3 = NRI12O2';
k(:,i) = 3.4e-13;
Gstr{i,1} = 'MEPROPENE'; Gstr{i,2} = 'NO3'; 
fMEPROPENE(i)=fMEPROPENE(i)-1; fNO3(i)=fNO3(i)-1; fNRI12O2(i)=fNRI12O2(i)+1; 

i=i+1;
Rnames{i} = 'ME2BUT1ENE + NO3 = NRN15O2';
k(:,i) = 3.30e-13;
Gstr{i,1} = 'ME2BUT1ENE'; Gstr{i,2} = 'NO3'; 
fME2BUT1ENE(i)=fME2BUT1ENE(i)-1; fNO3(i)=fNO3(i)-1; fNRN15O2(i)=fNRN15O2(i)+1; 

i=i+1;
Rnames{i} = 'ME3BUT1ENE + NO3 = NRI15O2';
k(:,i) = 1.20e-14;
Gstr{i,1} = 'ME3BUT1ENE'; Gstr{i,2} = 'NO3'; 
fME3BUT1ENE(i)=fME3BUT1ENE(i)-1; fNO3(i)=fNO3(i)-1; fNRI15O2(i)=fNRI15O2(i)+1; 

i=i+1;
Rnames{i} = 'ME2BUT2ENE + NO3 = NRI15O2';
k(:,i) = 9.37e-12;
Gstr{i,1} = 'ME2BUT2ENE'; Gstr{i,2} = 'NO3'; 
fME2BUT2ENE(i)=fME2BUT2ENE(i)-1; fNO3(i)=fNO3(i)-1; fNRI15O2(i)=fNRI15O2(i)+1; 

i=i+1;
Rnames{i} = 'C2H4 + O3 = CO + HCHO + HO2 + OH';
k(:,i) = 9.1e-15.*exp(-2580./T).*0.13;
Gstr{i,1} = 'C2H4'; Gstr{i,2} = 'O3'; 
fC2H4(i)=fC2H4(i)-1; fO3(i)=fO3(i)-1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C2H4 + O3 = HCHO + HCOOH';
k(:,i) = 9.1e-15.*exp(-2580./T).*0.87;
Gstr{i,1} = 'C2H4'; Gstr{i,2} = 'O3'; 
fC2H4(i)=fC2H4(i)-1; fO3(i)=fO3(i)-1; fHCHO(i)=fHCHO(i)+1; fHCOOH(i)=fHCOOH(i)+1; 

i=i+1;
Rnames{i} = 'C3H6 + O3 = CH3O2 + CO + HCHO + OH';
k(:,i) = 5.5e-15.*exp(-1880./T).*0.36;
Gstr{i,1} = 'C3H6'; Gstr{i,2} = 'O3'; 
fC3H6(i)=fC3H6(i)-1; fO3(i)=fO3(i)-1; fCH3O2(i)=fCH3O2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C3H6 + O3 = CH3CO2H + HCHO';
k(:,i) = 5.5e-15.*exp(-1880./T).*0.64;
Gstr{i,1} = 'C3H6'; Gstr{i,2} = 'O3'; 
fC3H6(i)=fC3H6(i)-1; fO3(i)=fO3(i)-1; fCH3CO2H(i)=fCH3CO2H(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'BUT1ENE + O3 = C2H5O2 + CO + HCHO + OH';
k(:,i) = 3.55e-15.*exp(-1745./T).*0.36;
Gstr{i,1} = 'BUT1ENE'; Gstr{i,2} = 'O3'; 
fBUT1ENE(i)=fBUT1ENE(i)-1; fO3(i)=fO3(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BUT1ENE + O3 = HCHO + PROPACID';
k(:,i) = 3.55e-15.*exp(-1745./T).*0.64;
Gstr{i,1} = 'BUT1ENE'; Gstr{i,2} = 'O3'; 
fBUT1ENE(i)=fBUT1ENE(i)-1; fO3(i)=fO3(i)-1; fHCHO(i)=fHCHO(i)+1; fPROPACID(i)=fPROPACID(i)+1; 

i=i+1;
Rnames{i} = 'CBUT2ENE + O3 = CH3CHO + CH3O2 + CO + OH';
k(:,i) = 3.22e-15.*exp(-968./T).*0.69;
Gstr{i,1} = 'CBUT2ENE'; Gstr{i,2} = 'O3'; 
fCBUT2ENE(i)=fCBUT2ENE(i)-1; fO3(i)=fO3(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3O2(i)=fCH3O2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CBUT2ENE + O3 = CH3CHO + CH3CO2H';
k(:,i) = 3.22e-15.*exp(-968./T).*0.31;
Gstr{i,1} = 'CBUT2ENE'; Gstr{i,2} = 'O3'; 
fCBUT2ENE(i)=fCBUT2ENE(i)-1; fO3(i)=fO3(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3CO2H(i)=fCH3CO2H(i)+1; 

i=i+1;
Rnames{i} = 'O3 + TBUT2ENE = CH3CHO + CH3O2 + CO + OH';
k(:,i) = 6.64e-15.*exp(-1059./T).*0.69;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'TBUT2ENE'; 
fO3(i)=fO3(i)-1; fTBUT2ENE(i)=fTBUT2ENE(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3O2(i)=fCH3O2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'O3 + TBUT2ENE = CH3CHO + CH3CO2H';
k(:,i) = 6.64e-15.*exp(-1059./T).*0.31;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'TBUT2ENE'; 
fO3(i)=fO3(i)-1; fTBUT2ENE(i)=fTBUT2ENE(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3CO2H(i)=fCH3CO2H(i)+1; 

i=i+1;
Rnames{i} = 'MEPROPENE + O3 = CH3COCH3 + CO + HO2 + OH';
k(:,i) = 2.70e-15.*exp(-1632./T).*0.58;
Gstr{i,1} = 'MEPROPENE'; Gstr{i,2} = 'O3'; 
fMEPROPENE(i)=fMEPROPENE(i)-1; fO3(i)=fO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MEPROPENE + O3 = CH3COCH3 + HCOOH';
k(:,i) = 2.70e-15.*exp(-1632./T).*0.13;
Gstr{i,1} = 'MEPROPENE'; Gstr{i,2} = 'O3'; 
fMEPROPENE(i)=fMEPROPENE(i)-1; fO3(i)=fO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHCOOH(i)=fHCOOH(i)+1; 

i=i+1;
Rnames{i} = 'MEPROPENE + O3 = HCHO + OH + RN8O2';
k(:,i) = 2.70e-15.*exp(-1632./T).*0.24;
Gstr{i,1} = 'MEPROPENE'; Gstr{i,2} = 'O3'; 
fMEPROPENE(i)=fMEPROPENE(i)-1; fO3(i)=fO3(i)-1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; fRN8O2(i)=fRN8O2(i)+1; 

i=i+1;
Rnames{i} = 'MEPROPENE + O3 = CH3COCH3 + H2O2 + HCHO';
k(:,i) = 2.70e-15.*exp(-1632./T).*0.05;
Gstr{i,1} = 'MEPROPENE'; Gstr{i,2} = 'O3'; 
fMEPROPENE(i)=fMEPROPENE(i)-1; fO3(i)=fO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fH2O2(i)=fH2O2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'O3 + PENT1ENE = CO + HCHO + OH + RN10O2';
k(:,i) = 1.00e-17.*0.36;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'PENT1ENE'; 
fO3(i)=fO3(i)-1; fPENT1ENE(i)=fPENT1ENE(i)-1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; fRN10O2(i)=fRN10O2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + PENT1ENE = CARB11 + HCOOH';
k(:,i) = 1.00e-17.*0.64;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'PENT1ENE'; 
fO3(i)=fO3(i)-1; fPENT1ENE(i)=fPENT1ENE(i)-1; fCARB11(i)=fCARB11(i)+1; fHCOOH(i)=fHCOOH(i)+1; 

i=i+1;
Rnames{i} = 'CPENT2ENE + O3 = C2H5CHO + CH3O2 + CO + OH';
k(:,i) = 1.60e-16.*0.69;
Gstr{i,1} = 'CPENT2ENE'; Gstr{i,2} = 'O3'; 
fCPENT2ENE(i)=fCPENT2ENE(i)-1; fO3(i)=fO3(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fCH3O2(i)=fCH3O2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CPENT2ENE + O3 = C2H5CHO + CH3CO2H';
k(:,i) = 1.60e-16.*0.31;
Gstr{i,1} = 'CPENT2ENE'; Gstr{i,2} = 'O3'; 
fCPENT2ENE(i)=fCPENT2ENE(i)-1; fO3(i)=fO3(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fCH3CO2H(i)=fCH3CO2H(i)+1; 

i=i+1;
Rnames{i} = 'O3 + TPENT2ENE = C2H5CHO + CH3O2 + CO + OH';
k(:,i) = 1.60e-16.*0.69;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'TPENT2ENE'; 
fO3(i)=fO3(i)-1; fTPENT2ENE(i)=fTPENT2ENE(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fCH3O2(i)=fCH3O2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'O3 + TPENT2ENE = C2H5CHO + CH3CO2H';
k(:,i) = 1.60e-16.*0.31;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'TPENT2ENE'; 
fO3(i)=fO3(i)-1; fTPENT2ENE(i)=fTPENT2ENE(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fCH3CO2H(i)=fCH3CO2H(i)+1; 

i=i+1;
Rnames{i} = 'ME2BUT1ENE + O3 = CARB11A + CO + HO2 + OH';
k(:,i) = 1.60e-17.*0.82;
Gstr{i,1} = 'ME2BUT1ENE'; Gstr{i,2} = 'O3'; 
fME2BUT1ENE(i)=fME2BUT1ENE(i)-1; fO3(i)=fO3(i)-1; fCARB11A(i)=fCARB11A(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ME2BUT1ENE + O3 = CARB11A + HCOOH';
k(:,i) = 1.60e-17.*0.18;
Gstr{i,1} = 'ME2BUT1ENE'; Gstr{i,2} = 'O3'; 
fME2BUT1ENE(i)=fME2BUT1ENE(i)-1; fO3(i)=fO3(i)-1; fCARB11A(i)=fCARB11A(i)+1; fHCOOH(i)=fHCOOH(i)+1; 

i=i+1;
Rnames{i} = 'ME3BUT1ENE + O3 = CARB11 + CO + HO2 + OH';
k(:,i) = 1.10e-17.*0.36;
Gstr{i,1} = 'ME3BUT1ENE'; Gstr{i,2} = 'O3'; 
fME3BUT1ENE(i)=fME3BUT1ENE(i)-1; fO3(i)=fO3(i)-1; fCARB11(i)=fCARB11(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ME3BUT1ENE + O3 = CARB11 + HCOOH';
k(:,i) = 1.10e-17.*0.64;
Gstr{i,1} = 'ME3BUT1ENE'; Gstr{i,2} = 'O3'; 
fME3BUT1ENE(i)=fME3BUT1ENE(i)-1; fO3(i)=fO3(i)-1; fCARB11(i)=fCARB11(i)+1; fHCOOH(i)=fHCOOH(i)+1; 

i=i+1;
Rnames{i} = 'ME2BUT2ENE + O3 = CH3COCH3 + CH3O2 + CO + OH';
k(:,i) = 6.51e-15.*exp(-829./T).*0.89;
Gstr{i,1} = 'ME2BUT2ENE'; Gstr{i,2} = 'O3'; 
fME2BUT2ENE(i)=fME2BUT2ENE(i)-1; fO3(i)=fO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fCH3O2(i)=fCH3O2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ME2BUT2ENE + O3 = CH3CO2H + CH3COCH3';
k(:,i) = 6.51e-15.*exp(-829./T).*0.11;
Gstr{i,1} = 'ME2BUT2ENE'; Gstr{i,2} = 'O3'; 
fME2BUT2ENE(i)=fME2BUT2ENE(i)-1; fO3(i)=fO3(i)-1; fCH3CO2H(i)=fCH3CO2H(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; 

i=i+1;
Rnames{i} = 'HEX1ENE + O3 = CO + HCHO + OH + RN13O2';
k(:,i) = 1.10e-17.*0.36;
Gstr{i,1} = 'HEX1ENE'; Gstr{i,2} = 'O3'; 
fHEX1ENE(i)=fHEX1ENE(i)-1; fO3(i)=fO3(i)-1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; fRN13O2(i)=fRN13O2(i)+1; 

i=i+1;
Rnames{i} = 'HEX1ENE + O3 = CARB14 + HCOOH';
k(:,i) = 1.10e-17.*0.64;
Gstr{i,1} = 'HEX1ENE'; Gstr{i,2} = 'O3'; 
fHEX1ENE(i)=fHEX1ENE(i)-1; fO3(i)=fO3(i)-1; fCARB14(i)=fCARB14(i)+1; fHCOOH(i)=fHCOOH(i)+1; 

i=i+1;
Rnames{i} = 'CHEX2ENE + O3 = C2H5CHO + C2H5O2 + CO + OH';
k(:,i) = 1.60e-16.*0.69;
Gstr{i,1} = 'CHEX2ENE'; Gstr{i,2} = 'O3'; 
fCHEX2ENE(i)=fCHEX2ENE(i)-1; fO3(i)=fO3(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fC2H5O2(i)=fC2H5O2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CHEX2ENE + O3 = C2H5CHO + PROPACID';
k(:,i) = 1.60e-16.*0.31;
Gstr{i,1} = 'CHEX2ENE'; Gstr{i,2} = 'O3'; 
fCHEX2ENE(i)=fCHEX2ENE(i)-1; fO3(i)=fO3(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fPROPACID(i)=fPROPACID(i)+1; 

i=i+1;
Rnames{i} = 'O3 + THEX2ENE = C2H5CHO + C2H5O2 + CO + OH';
k(:,i) = 1.60e-16.*0.69;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'THEX2ENE'; 
fO3(i)=fO3(i)-1; fTHEX2ENE(i)=fTHEX2ENE(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fC2H5O2(i)=fC2H5O2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'O3 + THEX2ENE = C2H5CHO + PROPACID';
k(:,i) = 1.60e-16.*0.31;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'THEX2ENE'; 
fO3(i)=fO3(i)-1; fTHEX2ENE(i)=fTHEX2ENE(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fPROPACID(i)=fPROPACID(i)+1; 

i=i+1;
Rnames{i} = 'C4H6 + OH = RU11O2';
k(:,i) = 1.48e-11.*exp(448./T);
Gstr{i,1} = 'C4H6'; Gstr{i,2} = 'OH'; 
fC4H6(i)=fC4H6(i)-1; fOH(i)=fOH(i)-1; fRU11O2(i)=fRU11O2(i)+1; 

i=i+1;
Rnames{i} = 'C5H8 + OH = RU14O2';
k(:,i) = 2.70e-11.*exp(390./T);
Gstr{i,1} = 'C5H8'; Gstr{i,2} = 'OH'; 
fC5H8(i)=fC5H8(i)-1; fOH(i)=fOH(i)-1; fRU14O2(i)=fRU14O2(i)+1; 

i=i+1;
Rnames{i} = 'C4H6 + NO3 = NRN9O2';
k(:,i) = 1.03e-13;
Gstr{i,1} = 'C4H6'; Gstr{i,2} = 'NO3'; 
fC4H6(i)=fC4H6(i)-1; fNO3(i)=fNO3(i)-1; fNRN9O2(i)=fNRN9O2(i)+1; 

i=i+1;
Rnames{i} = 'C5H8 + NO3 = NRU14O2';
k(:,i) = 3.15e-12.*exp(-450./T);
Gstr{i,1} = 'C5H8'; Gstr{i,2} = 'NO3'; 
fC5H8(i)=fC5H8(i)-1; fNO3(i)=fNO3(i)-1; fNRU14O2(i)=fNRU14O2(i)+1; 

i=i+1;
Rnames{i} = 'C4H6 + O3 = CO + CO + HCHO + HCHO + HO2 + OH';
k(:,i) = 1.34e-14.*exp(-2283./T).*0.08;
Gstr{i,1} = 'C4H6'; Gstr{i,2} = 'O3'; 
fC4H6(i)=fC4H6(i)-1; fO3(i)=fO3(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4H6 + O3 = CO + HCHO + HCHO + HCOOH';
k(:,i) = 1.34e-14.*exp(-2283./T).*0.92;
Gstr{i,1} = 'C4H6'; Gstr{i,2} = 'O3'; 
fC4H6(i)=fC4H6(i)-1; fO3(i)=fO3(i)-1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHCOOH(i)=fHCOOH(i)+1; 

i=i+1;
Rnames{i} = 'C5H8 + O3 = CO + HO2 + OH + UCARB10';
k(:,i) = 1.03e-14.*exp(-1995./T).*0.125;
Gstr{i,1} = 'C5H8'; Gstr{i,2} = 'O3'; 
fC5H8(i)=fC5H8(i)-1; fO3(i)=fO3(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; fUCARB10(i)=fUCARB10(i)+1; 

i=i+1;
Rnames{i} = 'C5H8 + O3 = HCOOH + UCARB10';
k(:,i) = 1.03e-14.*exp(-1995./T).*0.175;
Gstr{i,1} = 'C5H8'; Gstr{i,2} = 'O3'; 
fC5H8(i)=fC5H8(i)-1; fO3(i)=fO3(i)-1; fHCOOH(i)=fHCOOH(i)+1; fUCARB10(i)=fUCARB10(i)+1; 

i=i+1;
Rnames{i} = 'APINENE + OH = RTN28O2';
k(:,i) = 1.20e-11.*exp(444./T);
Gstr{i,1} = 'APINENE'; Gstr{i,2} = 'OH'; 
fAPINENE(i)=fAPINENE(i)-1; fOH(i)=fOH(i)-1; fRTN28O2(i)=fRTN28O2(i)+1; 

i=i+1;
Rnames{i} = 'APINENE + NO3 = NRTN28O2';
k(:,i) = 1.2e-12.*exp(490./T);
Gstr{i,1} = 'APINENE'; Gstr{i,2} = 'NO3'; 
fAPINENE(i)=fAPINENE(i)-1; fNO3(i)=fNO3(i)-1; fNRTN28O2(i)=fNRTN28O2(i)+1; 

i=i+1;
Rnames{i} = 'APINENE + O3 = CH3COCH3 + OH + RN18AO2';
k(:,i) = 8.05e-16.*exp(-640./T).*0.80;
Gstr{i,1} = 'APINENE'; Gstr{i,2} = 'O3'; 
fAPINENE(i)=fAPINENE(i)-1; fO3(i)=fO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fOH(i)=fOH(i)+1; fRN18AO2(i)=fRN18AO2(i)+1; 

i=i+1;
Rnames{i} = 'APINENE + O3 = H2O2 + TNCARB26';
k(:,i) = 8.05e-16.*exp(-640./T).*0.175;
Gstr{i,1} = 'APINENE'; Gstr{i,2} = 'O3'; 
fAPINENE(i)=fAPINENE(i)-1; fO3(i)=fO3(i)-1; fH2O2(i)=fH2O2(i)+1; fTNCARB26(i)=fTNCARB26(i)+1; 

i=i+1;
Rnames{i} = 'APINENE + O3 = RCOOH25';
k(:,i) = 8.05e-16.*exp(-640./T).*0.025;
Gstr{i,1} = 'APINENE'; Gstr{i,2} = 'O3'; 
fAPINENE(i)=fAPINENE(i)-1; fO3(i)=fO3(i)-1; fRCOOH25(i)=fRCOOH25(i)+1; 

i=i+1;
Rnames{i} = 'BPINENE + OH = RTX28O2';
k(:,i) = 2.38e-11.*exp(357./T);
Gstr{i,1} = 'BPINENE'; Gstr{i,2} = 'OH'; 
fBPINENE(i)=fBPINENE(i)-1; fOH(i)=fOH(i)-1; fRTX28O2(i)=fRTX28O2(i)+1; 

i=i+1;
Rnames{i} = 'BPINENE + NO3 = NRTX28O2';
k(:,i) = 2.51e-12;
Gstr{i,1} = 'BPINENE'; Gstr{i,2} = 'NO3'; 
fBPINENE(i)=fBPINENE(i)-1; fNO3(i)=fNO3(i)-1; fNRTX28O2(i)=fNRTX28O2(i)+1; 

i=i+1;
Rnames{i} = 'BPINENE + O3 = OH + RTX24O2';
k(:,i) = 1.35e-15.*exp(-1270./T).*0.35;
Gstr{i,1} = 'BPINENE'; Gstr{i,2} = 'O3'; 
fBPINENE(i)=fBPINENE(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+1; fRTX24O2(i)=fRTX24O2(i)+1; 

i=i+1;
Rnames{i} = 'BPINENE + O3 = H2O2 + HCHO + TXCARB24';
k(:,i) = 1.35e-15.*exp(-1270./T).*0.20;
Gstr{i,1} = 'BPINENE'; Gstr{i,2} = 'O3'; 
fBPINENE(i)=fBPINENE(i)-1; fO3(i)=fO3(i)-1; fH2O2(i)=fH2O2(i)+1; fHCHO(i)=fHCHO(i)+1; fTXCARB24(i)=fTXCARB24(i)+1; 

i=i+1;
Rnames{i} = 'BPINENE + O3 = HCHO + TXCARB22';
k(:,i) = 1.35e-15.*exp(-1270./T).*0.25;
Gstr{i,1} = 'BPINENE'; Gstr{i,2} = 'O3'; 
fBPINENE(i)=fBPINENE(i)-1; fO3(i)=fO3(i)-1; fHCHO(i)=fHCHO(i)+1; fTXCARB22(i)=fTXCARB22(i)+1; 

i=i+1;
Rnames{i} = 'BPINENE + O3 = CO + TXCARB24';
k(:,i) = 1.35e-15.*exp(-1270./T).*0.20;
Gstr{i,1} = 'BPINENE'; Gstr{i,2} = 'O3'; 
fBPINENE(i)=fBPINENE(i)-1; fO3(i)=fO3(i)-1; fCO(i)=fCO(i)+1; fTXCARB24(i)=fTXCARB24(i)+1; 

i=i+1;
Rnames{i} = 'C2H2 + OH = CO + HCOOH + HO2';
k(:,i) = KMT17.*0.364;
Gstr{i,1} = 'C2H2'; Gstr{i,2} = 'OH'; 
fC2H2(i)=fC2H2(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fHCOOH(i)=fHCOOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H2 + OH = CARB3 + OH';
k(:,i) = KMT17.*0.636;
Gstr{i,1} = 'C2H2'; Gstr{i,2} = 'OH'; 
fC2H2(i)=fC2H2(i)-1; fOH(i)=fOH(i)-1; fCARB3(i)=fCARB3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BENZENE + OH = RA13O2';
k(:,i) = 2.3e-12.*exp(-190./T).*0.47;
Gstr{i,1} = 'BENZENE'; Gstr{i,2} = 'OH'; 
fBENZENE(i)=fBENZENE(i)-1; fOH(i)=fOH(i)-1; fRA13O2(i)=fRA13O2(i)+1; 

i=i+1;
Rnames{i} = 'BENZENE + OH = AROH14 + HO2';
k(:,i) = 2.3e-12.*exp(-190./T).*0.53;
Gstr{i,1} = 'BENZENE'; Gstr{i,2} = 'OH'; 
fBENZENE(i)=fBENZENE(i)-1; fOH(i)=fOH(i)-1; fAROH14(i)=fAROH14(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + TOLUENE = RA16O2';
k(:,i) = 1.8e-12.*exp(340./T).*0.82;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'TOLUENE'; 
fOH(i)=fOH(i)-1; fTOLUENE(i)=fTOLUENE(i)-1; fRA16O2(i)=fRA16O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + TOLUENE = AROH17 + HO2';
k(:,i) = 1.8e-12.*exp(340./T).*0.18;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'TOLUENE'; 
fOH(i)=fOH(i)-1; fTOLUENE(i)=fTOLUENE(i)-1; fAROH17(i)=fAROH17(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + OXYL = RA19AO2';
k(:,i) = 1.36e-11.*0.70;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'OXYL'; 
fOH(i)=fOH(i)-1; fOXYL(i)=fOXYL(i)-1; fRA19AO2(i)=fRA19AO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + OXYL = RA19CO2';
k(:,i) = 1.36e-11.*0.30;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'OXYL'; 
fOH(i)=fOH(i)-1; fOXYL(i)=fOXYL(i)-1; fRA19CO2(i)=fRA19CO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYL + OH = RA19AO2';
k(:,i) = 2.31e-11.*0.70;
Gstr{i,1} = 'MXYL'; Gstr{i,2} = 'OH'; 
fMXYL(i)=fMXYL(i)-1; fOH(i)=fOH(i)-1; fRA19AO2(i)=fRA19AO2(i)+1; 

i=i+1;
Rnames{i} = 'MXYL + OH = RA19BO2';
k(:,i) = 2.31e-11.*0.30;
Gstr{i,1} = 'MXYL'; Gstr{i,2} = 'OH'; 
fMXYL(i)=fMXYL(i)-1; fOH(i)=fOH(i)-1; fRA19BO2(i)=fRA19BO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + PXYL = RA19AO2';
k(:,i) = 1.43e-11.*0.70;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PXYL'; 
fOH(i)=fOH(i)-1; fPXYL(i)=fPXYL(i)-1; fRA19AO2(i)=fRA19AO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + PXYL = RA19BO2';
k(:,i) = 1.43e-11.*0.30;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PXYL'; 
fOH(i)=fOH(i)-1; fPXYL(i)=fPXYL(i)-1; fRA19BO2(i)=fRA19BO2(i)+1; 

i=i+1;
Rnames{i} = 'EBENZ + OH = RA19AO2';
k(:,i) = 7.00e-12.*0.90;
Gstr{i,1} = 'EBENZ'; Gstr{i,2} = 'OH'; 
fEBENZ(i)=fEBENZ(i)-1; fOH(i)=fOH(i)-1; fRA19AO2(i)=fRA19AO2(i)+1; 

i=i+1;
Rnames{i} = 'EBENZ + OH = RN19O2';
k(:,i) = 7.00e-12.*0.10;
Gstr{i,1} = 'EBENZ'; Gstr{i,2} = 'OH'; 
fEBENZ(i)=fEBENZ(i)-1; fOH(i)=fOH(i)-1; fRN19O2(i)=fRN19O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + TM123B = RA22AO2';
k(:,i) = 3.27e-11.*0.50;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'TM123B'; 
fOH(i)=fOH(i)-1; fTM123B(i)=fTM123B(i)-1; fRA22AO2(i)=fRA22AO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + TM123B = RA22BO2';
k(:,i) = 3.27e-11.*0.50;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'TM123B'; 
fOH(i)=fOH(i)-1; fTM123B(i)=fTM123B(i)-1; fRA22BO2(i)=fRA22BO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + TM124B = RA22AO2';
k(:,i) = 3.25e-11.*0.50;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'TM124B'; 
fOH(i)=fOH(i)-1; fTM124B(i)=fTM124B(i)-1; fRA22AO2(i)=fRA22AO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + TM124B = RA22BO2';
k(:,i) = 3.25e-11.*0.50;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'TM124B'; 
fOH(i)=fOH(i)-1; fTM124B(i)=fTM124B(i)-1; fRA22BO2(i)=fRA22BO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + TM135B = RA22AO2';
k(:,i) = 5.67e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'TM135B'; 
fOH(i)=fOH(i)-1; fTM135B(i)=fTM135B(i)-1; fRA22AO2(i)=fRA22AO2(i)+1; 

i=i+1;
Rnames{i} = 'OETHTOL + OH = RA22AO2';
k(:,i) = 1.19e-11;
Gstr{i,1} = 'OETHTOL'; Gstr{i,2} = 'OH'; 
fOETHTOL(i)=fOETHTOL(i)-1; fOH(i)=fOH(i)-1; fRA22AO2(i)=fRA22AO2(i)+1; 

i=i+1;
Rnames{i} = 'METHTOL + OH = RA22AO2';
k(:,i) = 1.86e-11;
Gstr{i,1} = 'METHTOL'; Gstr{i,2} = 'OH'; 
fMETHTOL(i)=fMETHTOL(i)-1; fOH(i)=fOH(i)-1; fRA22AO2(i)=fRA22AO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + PETHTOL = RA22AO2';
k(:,i) = 1.18e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PETHTOL'; 
fOH(i)=fOH(i)-1; fPETHTOL(i)=fPETHTOL(i)-1; fRA22AO2(i)=fRA22AO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + PBENZ = RA22AO2';
k(:,i) = 5.80e-12.*0.55;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PBENZ'; 
fOH(i)=fOH(i)-1; fPBENZ(i)=fPBENZ(i)-1; fRA22AO2(i)=fRA22AO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + PBENZ = RN22O2';
k(:,i) = 5.80e-12.*0.45;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PBENZ'; 
fOH(i)=fOH(i)-1; fPBENZ(i)=fPBENZ(i)-1; fRN22O2(i)=fRN22O2(i)+1; 

i=i+1;
Rnames{i} = 'IPBENZ + OH = RA22AO2';
k(:,i) = 6.30e-12.*0.5;
Gstr{i,1} = 'IPBENZ'; Gstr{i,2} = 'OH'; 
fIPBENZ(i)=fIPBENZ(i)-1; fOH(i)=fOH(i)-1; fRA22AO2(i)=fRA22AO2(i)+1; 

i=i+1;
Rnames{i} = 'IPBENZ + OH = RI19O2';
k(:,i) = 6.30e-12.*0.5;
Gstr{i,1} = 'IPBENZ'; Gstr{i,2} = 'OH'; 
fIPBENZ(i)=fIPBENZ(i)-1; fOH(i)=fOH(i)-1; fRI19O2(i)=fRI19O2(i)+1; 

i=i+1;
Rnames{i} = 'DIME35EB + OH = RA25O2';
k(:,i) = 5.67e-11;
Gstr{i,1} = 'DIME35EB'; Gstr{i,2} = 'OH'; 
fDIME35EB(i)=fDIME35EB(i)-1; fOH(i)=fOH(i)-1; fRA25O2(i)=fRA25O2(i)+1; 

i=i+1;
Rnames{i} = 'DIET35TOL + OH = RA28O2';
k(:,i) = 5.67e-11;
Gstr{i,1} = 'DIET35TOL'; Gstr{i,2} = 'OH'; 
fDIET35TOL(i)=fDIET35TOL(i)-1; fOH(i)=fOH(i)-1; fRA28O2(i)=fRA28O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + STYRENE = RUA20O2';
k(:,i) = 5.80e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'STYRENE'; 
fOH(i)=fOH(i)-1; fSTYRENE(i)=fSTYRENE(i)-1; fRUA20O2(i)=fRUA20O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + STYRENE = NRUA20O2';
k(:,i) = 1.50e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'STYRENE'; 
fNO3(i)=fNO3(i)-1; fSTYRENE(i)=fSTYRENE(i)-1; fNRUA20O2(i)=fNRUA20O2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + STYRENE = BENZAL + HCOOH';
k(:,i) = 1.70e-17.*0.64;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'STYRENE'; 
fO3(i)=fO3(i)-1; fSTYRENE(i)=fSTYRENE(i)-1; fBENZAL(i)=fBENZAL(i)+1; fHCOOH(i)=fHCOOH(i)+1; 

i=i+1;
Rnames{i} = 'O3 + STYRENE = HCHO + OH + RAROH14';
k(:,i) = 1.70e-17.*0.36;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'STYRENE'; 
fO3(i)=fO3(i)-1; fSTYRENE(i)=fSTYRENE(i)-1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; fRAROH14(i)=fRAROH14(i)+1; 

i=i+1;
Rnames{i} = 'BENZAL + OH = RA16BO2';
k(:,i) = 5.9e-12.*exp(225./T);
Gstr{i,1} = 'BENZAL'; Gstr{i,2} = 'OH'; 
fBENZAL(i)=fBENZAL(i)-1; fOH(i)=fOH(i)-1; fRA16BO2(i)=fRA16BO2(i)+1; 

i=i+1;
Rnames{i} = 'BENZAL + NO3 = HNO3 + RA16BO2';
k(:,i) = 2.40e-15;
Gstr{i,1} = 'BENZAL'; Gstr{i,2} = 'NO3'; 
fBENZAL(i)=fBENZAL(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fRA16BO2(i)=fRA16BO2(i)+1; 

i=i+1;
Rnames{i} = 'BENZAL + hv = CO + HO2 + RAROH14';
k(:,i) = J18.*2;
Gstr{i,1} = 'BENZAL'; 
fBENZAL(i)=fBENZAL(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fRAROH14(i)=fRAROH14(i)+1; 

i=i+1;
Rnames{i} = 'HCHO + hv = CO + HO2 + HO2';
k(:,i) = J11;
Gstr{i,1} = 'HCHO'; 
fHCHO(i)=fHCHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCHO + hv = CO + H2';
k(:,i) = J12;
Gstr{i,1} = 'HCHO'; 
fHCHO(i)=fHCHO(i)-1; fCO(i)=fCO(i)+1; fH2(i)=fH2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHO + hv = CH3O2 + CO + HO2';
k(:,i) = J13;
Gstr{i,1} = 'CH3CHO'; 
fCH3CHO(i)=fCH3CHO(i)-1; fCH3O2(i)=fCH3O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CHO + hv = C2H5O2 + CO + HO2';
k(:,i) = J14;
Gstr{i,1} = 'C2H5CHO'; 
fC2H5CHO(i)=fC2H5CHO(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C3H7CHO + hv = CO + HO2 + RN10O2';
k(:,i) = J15;
Gstr{i,1} = 'C3H7CHO'; 
fC3H7CHO(i)=fC3H7CHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fRN10O2(i)=fRN10O2(i)+1; 

i=i+1;
Rnames{i} = 'IPRCHO + hv = CO + HO2 + IC3H7O2';
k(:,i) = J17;
Gstr{i,1} = 'IPRCHO'; 
fIPRCHO(i)=fIPRCHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fIC3H7O2(i)=fIC3H7O2(i)+1; 

i=i+1;
Rnames{i} = 'C4H9CHO + hv = CO + HO2 + RN13O2';
k(:,i) = J15;
Gstr{i,1} = 'C4H9CHO'; 
fC4H9CHO(i)=fC4H9CHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fRN13O2(i)=fRN13O2(i)+1; 

i=i+1;
Rnames{i} = 'HCHO + OH = CO + HO2';
k(:,i) = 5.4e-12.*exp(135./T);
Gstr{i,1} = 'HCHO'; Gstr{i,2} = 'OH'; 
fHCHO(i)=fHCHO(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHO + OH = CH3CO3';
k(:,i) = 4.7e-12.*exp(345./T);
Gstr{i,1} = 'CH3CHO'; Gstr{i,2} = 'OH'; 
fCH3CHO(i)=fCH3CHO(i)-1; fOH(i)=fOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CHO + OH = C2H5CO3';
k(:,i) = 4.9e-12.*exp(405./T);
Gstr{i,1} = 'C2H5CHO'; Gstr{i,2} = 'OH'; 
fC2H5CHO(i)=fC2H5CHO(i)-1; fOH(i)=fOH(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; 

i=i+1;
Rnames{i} = 'C3H7CHO + OH = RN11O2';
k(:,i) = 6.0e-12.*exp(410./T);
Gstr{i,1} = 'C3H7CHO'; Gstr{i,2} = 'OH'; 
fC3H7CHO(i)=fC3H7CHO(i)-1; fOH(i)=fOH(i)-1; fRN11O2(i)=fRN11O2(i)+1; 

i=i+1;
Rnames{i} = 'IPRCHO + OH = RI11O2';
k(:,i) = 6.8e-12.*exp(410./T);
Gstr{i,1} = 'IPRCHO'; Gstr{i,2} = 'OH'; 
fIPRCHO(i)=fIPRCHO(i)-1; fOH(i)=fOH(i)-1; fRI11O2(i)=fRI11O2(i)+1; 

i=i+1;
Rnames{i} = 'C4H9CHO + OH = RN14O2';
k(:,i) = 6.34e-12.*exp(448./T);
Gstr{i,1} = 'C4H9CHO'; Gstr{i,2} = 'OH'; 
fC4H9CHO(i)=fC4H9CHO(i)-1; fOH(i)=fOH(i)-1; fRN14O2(i)=fRN14O2(i)+1; 

i=i+1;
Rnames{i} = 'HCHO + NO3 = CO + HNO3 + HO2';
k(:,i) = 5.5e-16;
Gstr{i,1} = 'HCHO'; Gstr{i,2} = 'NO3'; 
fHCHO(i)=fHCHO(i)-1; fNO3(i)=fNO3(i)-1; fCO(i)=fCO(i)+1; fHNO3(i)=fHNO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHO + NO3 = CH3CO3 + HNO3';
k(:,i) = 1.4e-12.*exp(-1860./T);
Gstr{i,1} = 'CH3CHO'; Gstr{i,2} = 'NO3'; 
fCH3CHO(i)=fCH3CHO(i)-1; fNO3(i)=fNO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CHO + NO3 = C2H5CO3 + HNO3';
k(:,i) = 3.24e-12.*exp(-1860./T);
Gstr{i,1} = 'C2H5CHO'; Gstr{i,2} = 'NO3'; 
fC2H5CHO(i)=fC2H5CHO(i)-1; fNO3(i)=fNO3(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C3H7CHO + NO3 = HNO3 + RN11O2';
k(:,i) = 1.7e-12.*exp(-1500./T);
Gstr{i,1} = 'C3H7CHO'; Gstr{i,2} = 'NO3'; 
fC3H7CHO(i)=fC3H7CHO(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fRN11O2(i)=fRN11O2(i)+1; 

i=i+1;
Rnames{i} = 'IPRCHO + NO3 = HNO3 + RI11O2';
k(:,i) = 1.67e-12.*exp(-1460./T);
Gstr{i,1} = 'IPRCHO'; Gstr{i,2} = 'NO3'; 
fIPRCHO(i)=fIPRCHO(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fRI11O2(i)=fRI11O2(i)+1; 

i=i+1;
Rnames{i} = 'C4H9CHO + NO3 = HNO3 + RN14O2';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'C4H9CHO'; Gstr{i,2} = 'NO3'; 
fC4H9CHO(i)=fC4H9CHO(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fRN14O2(i)=fRN14O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH3 + hv = CH3CO3 + CH3O2';
k(:,i) = J21;
Gstr{i,1} = 'CH3COCH3'; 
fCH3COCH3(i)=fCH3COCH3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'MEK + hv = C2H5O2 + CH3CO3';
k(:,i) = J22;
Gstr{i,1} = 'MEK'; 
fMEK(i)=fMEK(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'MPRK + hv = CH3CO3 + RN10O2';
k(:,i) = J22;
Gstr{i,1} = 'MPRK'; 
fMPRK(i)=fMPRK(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fRN10O2(i)=fRN10O2(i)+1; 

i=i+1;
Rnames{i} = 'MIPK + hv = CH3CO3 + IC3H7O2';
k(:,i) = J22;
Gstr{i,1} = 'MIPK'; 
fMIPK(i)=fMIPK(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fIC3H7O2(i)=fIC3H7O2(i)+1; 

i=i+1;
Rnames{i} = 'CYHEXONE + hv = C2H4 + C3H6 + CO';
k(:,i) = J22.*0.5;
Gstr{i,1} = 'CYHEXONE'; 
fCYHEXONE(i)=fCYHEXONE(i)-1; fC2H4(i)=fC2H4(i)+1; fC3H6(i)=fC3H6(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CYHEXONE + hv = CO + PENT1ENE';
k(:,i) = J22.*0.5;
Gstr{i,1} = 'CYHEXONE'; 
fCYHEXONE(i)=fCYHEXONE(i)-1; fCO(i)=fCO(i)+1; fPENT1ENE(i)=fPENT1ENE(i)+1; 

i=i+1;
Rnames{i} = 'DIEK + hv = C2H5CHO + C2H5O2';
k(:,i) = J22;
Gstr{i,1} = 'DIEK'; 
fDIEK(i)=fDIEK(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fC2H5O2(i)=fC2H5O2(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONE + hv = CH3CO3 + RN13O2';
k(:,i) = J22;
Gstr{i,1} = 'HEX2ONE'; 
fHEX2ONE(i)=fHEX2ONE(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fRN13O2(i)=fRN13O2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONE + hv = C2H5CO3 + RN10O2';
k(:,i) = J22;
Gstr{i,1} = 'HEX3ONE'; 
fHEX3ONE(i)=fHEX3ONE(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fRN10O2(i)=fRN10O2(i)+1; 

i=i+1;
Rnames{i} = 'MIBK + hv = CH3CO3 + RI13O2';
k(:,i) = J22;
Gstr{i,1} = 'MIBK'; 
fMIBK(i)=fMIBK(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fRI13O2(i)=fRI13O2(i)+1; 

i=i+1;
Rnames{i} = 'MTBK + hv = CH3CO3 + RI13O2';
k(:,i) = J22;
Gstr{i,1} = 'MTBK'; 
fMTBK(i)=fMTBK(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fRI13O2(i)=fRI13O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH3 + OH = RN8O2';
k(:,i) = 8.8e-12.*exp(-1320./T) + 1.7e-14.*exp(423./T);
Gstr{i,1} = 'CH3COCH3'; Gstr{i,2} = 'OH'; 
fCH3COCH3(i)=fCH3COCH3(i)-1; fOH(i)=fOH(i)-1; fRN8O2(i)=fRN8O2(i)+1; 

i=i+1;
Rnames{i} = 'MEK + OH = RN11O2';
k(:,i) = 1.5e-12.*exp(-90./T);
Gstr{i,1} = 'MEK'; Gstr{i,2} = 'OH'; 
fMEK(i)=fMEK(i)-1; fOH(i)=fOH(i)-1; fRN11O2(i)=fRN11O2(i)+1; 

i=i+1;
Rnames{i} = 'MPRK + OH = RN14O2';
k(:,i) = 4.90e-12;
Gstr{i,1} = 'MPRK'; Gstr{i,2} = 'OH'; 
fMPRK(i)=fMPRK(i)-1; fOH(i)=fOH(i)-1; fRN14O2(i)=fRN14O2(i)+1; 

i=i+1;
Rnames{i} = 'MIPK + OH = RI14O2';
k(:,i) = 2.77e-12;
Gstr{i,1} = 'MIPK'; Gstr{i,2} = 'OH'; 
fMIPK(i)=fMIPK(i)-1; fOH(i)=fOH(i)-1; fRI14O2(i)=fRI14O2(i)+1; 

i=i+1;
Rnames{i} = 'DIEK + OH = RN14O2';
k(:,i) = 2.00e-12;
Gstr{i,1} = 'DIEK'; Gstr{i,2} = 'OH'; 
fDIEK(i)=fDIEK(i)-1; fOH(i)=fOH(i)-1; fRN14O2(i)=fRN14O2(i)+1; 

i=i+1;
Rnames{i} = 'HEX2ONE + OH = RN17O2';
k(:,i) = 9.10e-12;
Gstr{i,1} = 'HEX2ONE'; Gstr{i,2} = 'OH'; 
fHEX2ONE(i)=fHEX2ONE(i)-1; fOH(i)=fOH(i)-1; fRN17O2(i)=fRN17O2(i)+1; 

i=i+1;
Rnames{i} = 'HEX3ONE + OH = RN17O2';
k(:,i) = 6.90e-12;
Gstr{i,1} = 'HEX3ONE'; Gstr{i,2} = 'OH'; 
fHEX3ONE(i)=fHEX3ONE(i)-1; fOH(i)=fOH(i)-1; fRN17O2(i)=fRN17O2(i)+1; 

i=i+1;
Rnames{i} = 'MIBK + OH = RI17O2';
k(:,i) = 1.41e-11;
Gstr{i,1} = 'MIBK'; Gstr{i,2} = 'OH'; 
fMIBK(i)=fMIBK(i)-1; fOH(i)=fOH(i)-1; fRI17O2(i)=fRI17O2(i)+1; 

i=i+1;
Rnames{i} = 'MTBK + OH = RI17O2';
k(:,i) = 1.21e-12;
Gstr{i,1} = 'MTBK'; Gstr{i,2} = 'OH'; 
fMTBK(i)=fMTBK(i)-1; fOH(i)=fOH(i)-1; fRI17O2(i)=fRI17O2(i)+1; 

i=i+1;
Rnames{i} = 'CYHEXONE + OH = RC16O2';
k(:,i) = 5.40e-12;
Gstr{i,1} = 'CYHEXONE'; Gstr{i,2} = 'OH'; 
fCYHEXONE(i)=fCYHEXONE(i)-1; fOH(i)=fOH(i)-1; fRC16O2(i)=fRC16O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3OH + OH = HCHO + HO2';
k(:,i) = 2.85e-12.*exp(-345./T);
Gstr{i,1} = 'CH3OH'; Gstr{i,2} = 'OH'; 
fCH3OH(i)=fCH3OH(i)-1; fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5OH + OH = CH3CHO + HO2';
k(:,i) = 3.0e-12.*exp(20./T).*0.95;
Gstr{i,1} = 'C2H5OH'; Gstr{i,2} = 'OH'; 
fC2H5OH(i)=fC2H5OH(i)-1; fOH(i)=fOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5OH + OH = HOCH2CH2O2';
k(:,i) = 3.0e-12.*exp(20./T).*0.05;
Gstr{i,1} = 'C2H5OH'; Gstr{i,2} = 'OH'; 
fC2H5OH(i)=fC2H5OH(i)-1; fOH(i)=fOH(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; 

i=i+1;
Rnames{i} = 'NPROPOL + OH = C2H5CHO + HO2';
k(:,i) = 4.6e-12.*exp(70./T).*0.494;
Gstr{i,1} = 'NPROPOL'; Gstr{i,2} = 'OH'; 
fNPROPOL(i)=fNPROPOL(i)-1; fOH(i)=fOH(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NPROPOL + OH = RN9O2';
k(:,i) = 4.6e-12.*exp(70./T).*0.506;
Gstr{i,1} = 'NPROPOL'; Gstr{i,2} = 'OH'; 
fNPROPOL(i)=fNPROPOL(i)-1; fOH(i)=fOH(i)-1; fRN9O2(i)=fRN9O2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOL + OH = CH3COCH3 + HO2';
k(:,i) = 2.6e-12.*exp(200./T).*0.861;
Gstr{i,1} = 'IPROPOL'; Gstr{i,2} = 'OH'; 
fIPROPOL(i)=fIPROPOL(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOL + OH = RN9O2';
k(:,i) = 2.6e-12.*exp(200./T).*0.139;
Gstr{i,1} = 'IPROPOL'; Gstr{i,2} = 'OH'; 
fIPROPOL(i)=fIPROPOL(i)-1; fOH(i)=fOH(i)-1; fRN9O2(i)=fRN9O2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOL + OH = RN12O2';
k(:,i) = 5.3e-12.*exp(140./T);
Gstr{i,1} = 'NBUTOL'; Gstr{i,2} = 'OH'; 
fNBUTOL(i)=fNBUTOL(i)-1; fOH(i)=fOH(i)-1; fRN12O2(i)=fRN12O2(i)+1; 

i=i+1;
Rnames{i} = 'BUT2OL + OH = CARB11A + HO2';
k(:,i) = 8.7e-12.*0.639;
Gstr{i,1} = 'BUT2OL'; Gstr{i,2} = 'OH'; 
fBUT2OL(i)=fBUT2OL(i)-1; fOH(i)=fOH(i)-1; fCARB11A(i)=fCARB11A(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BUT2OL + OH = RN12O2';
k(:,i) = 8.7e-12.*0.361;
Gstr{i,1} = 'BUT2OL'; Gstr{i,2} = 'OH'; 
fBUT2OL(i)=fBUT2OL(i)-1; fOH(i)=fOH(i)-1; fRN12O2(i)=fRN12O2(i)+1; 

i=i+1;
Rnames{i} = 'IBUTOL + OH = HO2 + IPRCHO';
k(:,i) = 2.73e-12.*exp(352./T).*0.352;
Gstr{i,1} = 'IBUTOL'; Gstr{i,2} = 'OH'; 
fIBUTOL(i)=fIBUTOL(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fIPRCHO(i)=fIPRCHO(i)+1; 

i=i+1;
Rnames{i} = 'IBUTOL + OH = RI12O2';
k(:,i) = 2.73e-12.*exp(352./T).*0.648;
Gstr{i,1} = 'IBUTOL'; Gstr{i,2} = 'OH'; 
fIBUTOL(i)=fIBUTOL(i)-1; fOH(i)=fOH(i)-1; fRI12O2(i)=fRI12O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + TBUTOL = RI12O2';
k(:,i) = 1.6e-12.*exp(-121./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'TBUTOL'; 
fOH(i)=fOH(i)-1; fTBUTOL(i)=fTBUTOL(i)-1; fRI12O2(i)=fRI12O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + PECOH = DIEK + HO2';
k(:,i) = 1.22e-11.*0.436;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PECOH'; 
fOH(i)=fOH(i)-1; fPECOH(i)=fPECOH(i)-1; fDIEK(i)=fDIEK(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + PECOH = RN15O2';
k(:,i) = 1.22e-11.*0.564;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PECOH'; 
fOH(i)=fOH(i)-1; fPECOH(i)=fPECOH(i)-1; fRN15O2(i)=fRN15O2(i)+1; 

i=i+1;
Rnames{i} = 'IPEAOH + OH = RN15AO2';
k(:,i) = 1.12e-11;
Gstr{i,1} = 'IPEAOH'; Gstr{i,2} = 'OH'; 
fIPEAOH(i)=fIPEAOH(i)-1; fOH(i)=fOH(i)-1; fRN15AO2(i)=fRN15AO2(i)+1; 

i=i+1;
Rnames{i} = 'ME3BUOL + OH = RI15O2';
k(:,i) = 1.31e-11;
Gstr{i,1} = 'ME3BUOL'; Gstr{i,2} = 'OH'; 
fME3BUOL(i)=fME3BUOL(i)-1; fOH(i)=fOH(i)-1; fRI15O2(i)=fRI15O2(i)+1; 

i=i+1;
Rnames{i} = 'IPECOH + OH = RI15O2';
k(:,i) = 3.85e-12;
Gstr{i,1} = 'IPECOH'; Gstr{i,2} = 'OH'; 
fIPECOH(i)=fIPECOH(i)-1; fOH(i)=fOH(i)-1; fRI15O2(i)=fRI15O2(i)+1; 

i=i+1;
Rnames{i} = 'IPEBOH + OH = HO2 + MIPK';
k(:,i) = 1.24e-11.*0.463;
Gstr{i,1} = 'IPEBOH'; Gstr{i,2} = 'OH'; 
fIPEBOH(i)=fIPEBOH(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fMIPK(i)=fMIPK(i)+1; 

i=i+1;
Rnames{i} = 'IPEBOH + OH = RI15O2';
k(:,i) = 1.24e-11.*0.537;
Gstr{i,1} = 'IPEBOH'; Gstr{i,2} = 'OH'; 
fIPEBOH(i)=fIPEBOH(i)-1; fOH(i)=fOH(i)-1; fRI15O2(i)=fRI15O2(i)+1; 

i=i+1;
Rnames{i} = 'CYHEXOL + OH = CYHEXONE + HO2';
k(:,i) = 1.77e-11.*0.261;
Gstr{i,1} = 'CYHEXOL'; Gstr{i,2} = 'OH'; 
fCYHEXOL(i)=fCYHEXOL(i)-1; fOH(i)=fOH(i)-1; fCYHEXONE(i)=fCYHEXONE(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CYHEXOL + OH = RN17O2';
k(:,i) = 1.77e-11.*0.739;
Gstr{i,1} = 'CYHEXOL'; Gstr{i,2} = 'OH'; 
fCYHEXOL(i)=fCYHEXOL(i)-1; fOH(i)=fOH(i)-1; fRN17O2(i)=fRN17O2(i)+1; 

i=i+1;
Rnames{i} = 'MIBKAOH + OH = RI16AO2';
k(:,i) = 2.88e-12.*0.73;
Gstr{i,1} = 'MIBKAOH'; Gstr{i,2} = 'OH'; 
fMIBKAOH(i)=fMIBKAOH(i)-1; fOH(i)=fOH(i)-1; fRI16AO2(i)=fRI16AO2(i)+1; 

i=i+1;
Rnames{i} = 'MIBKAOH + OH = RN16AO2';
k(:,i) = 2.88e-12.*0.27;
Gstr{i,1} = 'MIBKAOH'; Gstr{i,2} = 'OH'; 
fMIBKAOH(i)=fMIBKAOH(i)-1; fOH(i)=fOH(i)-1; fRN16AO2(i)=fRN16AO2(i)+1; 

i=i+1;
Rnames{i} = 'ETHGLY + OH = HO2 + HOCH2CHO';
k(:,i) = 1.45e-11;
Gstr{i,1} = 'ETHGLY'; Gstr{i,2} = 'OH'; 
fETHGLY(i)=fETHGLY(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'OH + PROPGLY = RN8O2';
k(:,i) = 1.20e-11.*0.387;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PROPGLY'; 
fOH(i)=fOH(i)-1; fPROPGLY(i)=fPROPGLY(i)-1; fRN8O2(i)=fRN8O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + PROPGLY = CARB7 + HO2';
k(:,i) = 1.20e-11.*0.613;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PROPGLY'; 
fOH(i)=fOH(i)-1; fPROPGLY(i)=fPROPGLY(i)-1; fCARB7(i)=fCARB7(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MIBKAOH + hv = CH3CO3 + RI12O2';
k(:,i) = J22.*1.75;
Gstr{i,1} = 'MIBKAOH'; 
fMIBKAOH(i)=fMIBKAOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fRI12O2(i)=fRI12O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3OCH3 + OH = RE6O2';
k(:,i) = 5.7e-12.*exp(-215./T);
Gstr{i,1} = 'CH3OCH3'; Gstr{i,2} = 'OH'; 
fCH3OCH3(i)=fCH3OCH3(i)-1; fOH(i)=fOH(i)-1; fRE6O2(i)=fRE6O2(i)+1; 

i=i+1;
Rnames{i} = 'DIETETHER + OH = RE12O2';
k(:,i) = 8.91e-18.*T.^(2).*exp(837./T);
Gstr{i,1} = 'DIETETHER'; Gstr{i,2} = 'OH'; 
fDIETETHER(i)=fDIETETHER(i)-1; fOH(i)=fOH(i)-1; fRE12O2(i)=fRE12O2(i)+1; 

i=i+1;
Rnames{i} = 'MTBE + OH = RE15O2';
k(:,i) = 6.54e-18.*T.^(2).*exp(483./T).*0.51;
Gstr{i,1} = 'MTBE'; Gstr{i,2} = 'OH'; 
fMTBE(i)=fMTBE(i)-1; fOH(i)=fOH(i)-1; fRE15O2(i)=fRE15O2(i)+1; 

i=i+1;
Rnames{i} = 'MTBE + OH = RI15O2';
k(:,i) = 6.54e-18.*T.^(2).*exp(483./T).*0.49;
Gstr{i,1} = 'MTBE'; Gstr{i,2} = 'OH'; 
fMTBE(i)=fMTBE(i)-1; fOH(i)=fOH(i)-1; fRI15O2(i)=fRI15O2(i)+1; 

i=i+1;
Rnames{i} = 'DIIPRETHER + OH = RN18AO2';
k(:,i) = 2.20e-12.*exp(457./T);
Gstr{i,1} = 'DIIPRETHER'; Gstr{i,2} = 'OH'; 
fDIIPRETHER(i)=fDIIPRETHER(i)-1; fOH(i)=fOH(i)-1; fRN18AO2(i)=fRN18AO2(i)+1; 

i=i+1;
Rnames{i} = 'ETBE + OH = RE18O2';
k(:,i) = 6.82e-18.*T.^(2).*exp(800./T).*0.76;
Gstr{i,1} = 'ETBE'; Gstr{i,2} = 'OH'; 
fETBE(i)=fETBE(i)-1; fOH(i)=fOH(i)-1; fRE18O2(i)=fRE18O2(i)+1; 

i=i+1;
Rnames{i} = 'ETBE + OH = RN18AO2';
k(:,i) = 6.82e-18.*T.^(2).*exp(800./T).*0.24;
Gstr{i,1} = 'ETBE'; Gstr{i,2} = 'OH'; 
fETBE(i)=fETBE(i)-1; fOH(i)=fOH(i)-1; fRN18AO2(i)=fRN18AO2(i)+1; 

i=i+1;
Rnames{i} = 'MO2EOL + OH = CH3O2 + CH3OCHO';
k(:,i) = 4.10e-12.*exp(325./T);
Gstr{i,1} = 'MO2EOL'; Gstr{i,2} = 'OH'; 
fMO2EOL(i)=fMO2EOL(i)-1; fOH(i)=fOH(i)-1; fCH3O2(i)=fCH3O2(i)+1; fCH3OCHO(i)=fCH3OCHO(i)+1; 

i=i+1;
Rnames{i} = 'EOX2EOL + OH = CH3O2 + ECARB7';
k(:,i) = 1.80e-11;
Gstr{i,1} = 'EOX2EOL'; Gstr{i,2} = 'OH'; 
fEOX2EOL(i)=fEOX2EOL(i)-1; fOH(i)=fOH(i)-1; fCH3O2(i)=fCH3O2(i)+1; fECARB7(i)=fECARB7(i)+1; 

i=i+1;
Rnames{i} = 'OH + PR2OHMOX = C2H5O2 + CH3OCHO';
k(:,i) = 1.59e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PR2OHMOX'; 
fOH(i)=fOH(i)-1; fPR2OHMOX(i)=fPR2OHMOX(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fCH3OCHO(i)=fCH3OCHO(i)+1; 

i=i+1;
Rnames{i} = 'BUOX2ETOH + OH = ECARB7 + RN10O2';
k(:,i) = 2.31e-11;
Gstr{i,1} = 'BUOX2ETOH'; Gstr{i,2} = 'OH'; 
fBUOX2ETOH(i)=fBUOX2ETOH(i)-1; fOH(i)=fOH(i)-1; fECARB7(i)=fECARB7(i)+1; fRN10O2(i)=fRN10O2(i)+1; 

i=i+1;
Rnames{i} = 'BOX2PROL + OH = ECARB7 + RN13O2';
k(:,i) = 2.78e-11;
Gstr{i,1} = 'BOX2PROL'; Gstr{i,2} = 'OH'; 
fBOX2PROL(i)=fBOX2PROL(i)-1; fOH(i)=fOH(i)-1; fECARB7(i)=fECARB7(i)+1; fRN13O2(i)=fRN13O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3OCH3 + NO3 = HNO3 + RE6O2';
k(:,i) = 2.60e-16;
Gstr{i,1} = 'CH3OCH3'; Gstr{i,2} = 'NO3'; 
fCH3OCH3(i)=fCH3OCH3(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fRE6O2(i)=fRE6O2(i)+1; 

i=i+1;
Rnames{i} = 'DIETETHER + NO3 = HNO3 + RE12O2';
k(:,i) = 2.80e-15;
Gstr{i,1} = 'DIETETHER'; Gstr{i,2} = 'NO3'; 
fDIETETHER(i)=fDIETETHER(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fRE12O2(i)=fRE12O2(i)+1; 

i=i+1;
Rnames{i} = 'DIIPRETHER + NO3 = HNO3 + RN18AO2';
k(:,i) = 6.50e-15;
Gstr{i,1} = 'DIIPRETHER'; Gstr{i,2} = 'NO3'; 
fDIIPRETHER(i)=fDIIPRETHER(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fRN18AO2(i)=fRN18AO2(i)+1; 

i=i+1;
Rnames{i} = 'MTBE + NO3 = HNO3 + RN15O2';
k(:,i) = 6.40e-16;
Gstr{i,1} = 'MTBE'; Gstr{i,2} = 'NO3'; 
fMTBE(i)=fMTBE(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fRN15O2(i)=fRN15O2(i)+1; 

i=i+1;
Rnames{i} = 'ETBE + NO3 = HNO3 + RE18O2';
k(:,i) = 1.91e-15;
Gstr{i,1} = 'ETBE'; Gstr{i,2} = 'NO3'; 
fETBE(i)=fETBE(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fRE18O2(i)=fRE18O2(i)+1; 

i=i+1;
Rnames{i} = 'MO2EOL + NO3 = CH3O2 + CH3OCHO + HNO3';
k(:,i) = 1.53e-15;
Gstr{i,1} = 'MO2EOL'; Gstr{i,2} = 'NO3'; 
fMO2EOL(i)=fMO2EOL(i)-1; fNO3(i)=fNO3(i)-1; fCH3O2(i)=fCH3O2(i)+1; fCH3OCHO(i)=fCH3OCHO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'EOX2EOL + NO3 = CH3O2 + ECARB7 + HNO3';
k(:,i) = 2.80e-15;
Gstr{i,1} = 'EOX2EOL'; Gstr{i,2} = 'NO3'; 
fEOX2EOL(i)=fEOX2EOL(i)-1; fNO3(i)=fNO3(i)-1; fCH3O2(i)=fCH3O2(i)+1; fECARB7(i)=fECARB7(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + PR2OHMOX = C2H5O2 + CH3OCHO + HNO3';
k(:,i) = 3.76e-15;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'PR2OHMOX'; 
fNO3(i)=fNO3(i)-1; fPR2OHMOX(i)=fPR2OHMOX(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fCH3OCHO(i)=fCH3OCHO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'BUOX2ETOH + NO3 = ECARB7 + HNO3 + RN10O2';
k(:,i) = 4.65e-15;
Gstr{i,1} = 'BUOX2ETOH'; Gstr{i,2} = 'NO3'; 
fBUOX2ETOH(i)=fBUOX2ETOH(i)-1; fNO3(i)=fNO3(i)-1; fECARB7(i)=fECARB7(i)+1; fHNO3(i)=fHNO3(i)+1; fRN10O2(i)=fRN10O2(i)+1; 

i=i+1;
Rnames{i} = 'BOX2PROL + NO3 = ECARB7 + HNO3 + RN13O2';
k(:,i) = 6.50e-15;
Gstr{i,1} = 'BOX2PROL'; Gstr{i,2} = 'NO3'; 
fBOX2PROL(i)=fBOX2PROL(i)-1; fNO3(i)=fNO3(i)-1; fECARB7(i)=fECARB7(i)+1; fHNO3(i)=fHNO3(i)+1; fRN13O2(i)=fRN13O2(i)+1; 

i=i+1;
Rnames{i} = 'DMM + OH = CO + CO + RE6O2';
k(:,i) = 4.93e-12;
Gstr{i,1} = 'DMM'; Gstr{i,2} = 'OH'; 
fDMM(i)=fDMM(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fRE6O2(i)=fRE6O2(i)+1; 

i=i+1;
Rnames{i} = 'DMC + OH = RE6O2';
k(:,i) = 3.20e-13;
Gstr{i,1} = 'DMC'; Gstr{i,2} = 'OH'; 
fDMC(i)=fDMC(i)-1; fOH(i)=fOH(i)-1; fRE6O2(i)=fRE6O2(i)+1; 

i=i+1;
Rnames{i} = 'HCOOH + OH = HO2';
k(:,i) = 4.50e-13;
Gstr{i,1} = 'HCOOH'; Gstr{i,2} = 'OH'; 
fHCOOH(i)=fHCOOH(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO2H + OH = CH3O2';
k(:,i) = 8.00e-13;
Gstr{i,1} = 'CH3CO2H'; Gstr{i,2} = 'OH'; 
fCH3CO2H(i)=fCH3CO2H(i)-1; fOH(i)=fOH(i)-1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + PROPACID = C2H5O2';
k(:,i) = 1.2e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PROPACID'; 
fOH(i)=fOH(i)-1; fPROPACID(i)=fPROPACID(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3OCHO + OH = CH3O2';
k(:,i) = 9.39e-13.*exp(-461./T);
Gstr{i,1} = 'CH3OCHO'; Gstr{i,2} = 'OH'; 
fCH3OCHO(i)=fCH3OCHO(i)-1; fOH(i)=fOH(i)-1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'METHACET + OH = C2H5O2';
k(:,i) = 8.54e-19.*T.^(2).*exp(455./T);
Gstr{i,1} = 'METHACET'; Gstr{i,2} = 'OH'; 
fMETHACET(i)=fMETHACET(i)-1; fOH(i)=fOH(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; 

i=i+1;
Rnames{i} = 'ETHACET + OH = RN10O2';
k(:,i) = 6.92e-19.*T.^(2).*exp(986./T);
Gstr{i,1} = 'ETHACET'; Gstr{i,2} = 'OH'; 
fETHACET(i)=fETHACET(i)-1; fOH(i)=fOH(i)-1; fRN10O2(i)=fRN10O2(i)+1; 

i=i+1;
Rnames{i} = 'NPROACET + OH = RN13O2';
k(:,i) = 1.39e-18.*T.^(2).*exp(991./T).*0.6;
Gstr{i,1} = 'NPROACET'; Gstr{i,2} = 'OH'; 
fNPROACET(i)=fNPROACET(i)-1; fOH(i)=fOH(i)-1; fRN13O2(i)=fRN13O2(i)+1; 

i=i+1;
Rnames{i} = 'NPROACET + OH = RN13AO2';
k(:,i) = 1.39e-18.*T.^(2).*exp(991./T).*0.4;
Gstr{i,1} = 'NPROACET'; Gstr{i,2} = 'OH'; 
fNPROACET(i)=fNPROACET(i)-1; fOH(i)=fOH(i)-1; fRN13AO2(i)=fRN13AO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROACET + OH = RI13O2';
k(:,i) = 2.64e-13.*exp(770./T);
Gstr{i,1} = 'IPROACET'; Gstr{i,2} = 'OH'; 
fIPROACET(i)=fIPROACET(i)-1; fOH(i)=fOH(i)-1; fRI13O2(i)=fRI13O2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTACET + OH = RN16O2';
k(:,i) = 2.48e-18.*T.^(2).*exp(926./T);
Gstr{i,1} = 'NBUTACET'; Gstr{i,2} = 'OH'; 
fNBUTACET(i)=fNBUTACET(i)-1; fOH(i)=fOH(i)-1; fRN16O2(i)=fRN16O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + SBUTACET = RN16O2';
k(:,i) = 6.66e-13.*exp(640./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'SBUTACET'; 
fOH(i)=fOH(i)-1; fSBUTACET(i)=fSBUTACET(i)-1; fRN16O2(i)=fRN16O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + TBUACET = RI16O2';
k(:,i) = 1.88e-12.*exp(-395./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'TBUACET'; 
fOH(i)=fOH(i)-1; fTBUACET(i)=fTBUACET(i)-1; fRI16O2(i)=fRI16O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + NO = HCHO + HO2 + NO2';
k(:,i) = 2.3e-12.*exp(360./T).*0.999;
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'NO'; 
fCH3O2(i)=fCH3O2(i)-1; fNO(i)=fNO(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O2 + NO = CH3CHO + HO2 + NO2';
k(:,i) = 2.55e-12.*exp(380./T).*0.991;
Gstr{i,1} = 'C2H5O2'; Gstr{i,2} = 'NO'; 
fC2H5O2(i)=fC2H5O2(i)-1; fNO(i)=fNO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN10O2 = C2H5CHO + HO2 + NO2';
k(:,i) = 2.80e-12.*exp(360./T).*0.980;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN10O2'; 
fNO(i)=fNO(i)-1; fRN10O2(i)=fRN10O2(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7O2 + NO = CH3COCH3 + HO2 + NO2';
k(:,i) = 2.70e-12.*exp(360./T).*0.958;
Gstr{i,1} = 'IC3H7O2'; Gstr{i,2} = 'NO'; 
fIC3H7O2(i)=fIC3H7O2(i)-1; fNO(i)=fNO(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN13O2 = C2H5O2 + CH3CHO + NO2';
k(:,i) = KRO2NO.*0.917.*0.398;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN13O2'; 
fNO(i)=fNO(i)-1; fRN13O2(i)=fRN13O2(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN13O2 = CARB11A + HO2 + NO2';
k(:,i) = KRO2NO.*0.917.*0.602;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN13O2'; 
fNO(i)=fNO(i)-1; fRN13O2(i)=fRN13O2(i)-1; fCARB11A(i)=fCARB11A(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN16O2 = NO2 + RN15AO2';
k(:,i) = KRO2NO.*0.877;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN16O2'; 
fNO(i)=fNO(i)-1; fRN16O2(i)=fRN16O2(i)-1; fNO2(i)=fNO2(i)+1; fRN15AO2(i)=fRN15AO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN19O2 = NO2 + RN18AO2';
k(:,i) = KRO2NO.*0.788;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN19O2'; 
fNO(i)=fNO(i)-1; fRN19O2(i)=fRN19O2(i)-1; fNO2(i)=fNO2(i)+1; fRN18AO2(i)=fRN18AO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN22O2 = NO2 + RN21AO2';
k(:,i) = KRO2NO.*0.722;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN22O2'; 
fNO(i)=fNO(i)-1; fRN22O2(i)=fRN22O2(i)-1; fNO2(i)=fNO2(i)+1; fRN21AO2(i)=fRN21AO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN25O2 = NO2 + RN24AO2';
k(:,i) = KRO2NO.*0.654;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN25O2'; 
fNO(i)=fNO(i)-1; fRN25O2(i)=fRN25O2(i)-1; fNO2(i)=fNO2(i)+1; fRN24AO2(i)=fRN24AO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN28O2 = NO2 + RN27AO2';
k(:,i) = KRO2NO.*0.607;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN28O2'; 
fNO(i)=fNO(i)-1; fRN28O2(i)=fRN28O2(i)-1; fNO2(i)=fNO2(i)+1; fRN27AO2(i)=fRN27AO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN31O2 = NO2 + RN30AO2';
k(:,i) = KRO2NO.*0.583;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN31O2'; 
fNO(i)=fNO(i)-1; fRN31O2(i)=fRN31O2(i)-1; fNO2(i)=fNO2(i)+1; fRN30AO2(i)=fRN30AO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN34O2 = NO2 + RN33AO2';
k(:,i) = KRO2NO.*0.569;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN34O2'; 
fNO(i)=fNO(i)-1; fRN34O2(i)=fRN34O2(i)-1; fNO2(i)=fNO2(i)+1; fRN33AO2(i)=fRN33AO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN37O2 = NO2 + RN36AO2';
k(:,i) = KRO2NO.*0.560;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN37O2'; 
fNO(i)=fNO(i)-1; fRN37O2(i)=fRN37O2(i)-1; fNO2(i)=fNO2(i)+1; fRN36AO2(i)=fRN36AO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RI13O2 = CH3COCH3 + CH3O2 + NO2';
k(:,i) = KRO2NO.*0.973.*0.831;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RI13O2'; 
fNO(i)=fNO(i)-1; fRI13O2(i)=fRI13O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fCH3O2(i)=fCH3O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RI13O2 = HO2 + IPRCHO + NO2';
k(:,i) = KRO2NO.*0.973.*0.169;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RI13O2'; 
fNO(i)=fNO(i)-1; fRI13O2(i)=fRI13O2(i)-1; fHO2(i)=fHO2(i)+1; fIPRCHO(i)=fIPRCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RI16O2 = C2H5O2 + CH3COCH3 + NO2';
k(:,i) = KRO2NO.*0.925.*0.913;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RI16O2'; 
fNO(i)=fNO(i)-1; fRI16O2(i)=fRI16O2(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RI16O2 = HO2 + MIPK + NO2';
k(:,i) = KRO2NO.*0.925.*0.087;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RI16O2'; 
fNO(i)=fNO(i)-1; fRI16O2(i)=fRI16O2(i)-1; fHO2(i)=fHO2(i)+1; fMIPK(i)=fMIPK(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RI16AO2 = HCHO + NO2 + RI13O2';
k(:,i) = KRO2NO.*0.949;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RI16AO2'; 
fNO(i)=fNO(i)-1; fRI16AO2(i)=fRI16AO2(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fRI13O2(i)=fRI13O2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN19BO2 = NO2 + RN18AO2';
k(:,i) = KRO2NO.*0.890;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN19BO2'; 
fNO(i)=fNO(i)-1; fRN19BO2(i)=fRN19BO2(i)-1; fNO2(i)=fNO2(i)+1; fRN18AO2(i)=fRN18AO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RI19O2 = CH3COCH3 + IC3H7O2 + NO2';
k(:,i) = KRO2NO.*0.939;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RI19O2'; 
fNO(i)=fNO(i)-1; fRI19O2(i)=fRI19O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fIC3H7O2(i)=fIC3H7O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN13AO2 = NO2 + RN12O2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN13AO2'; 
fNO(i)=fNO(i)-1; fRN13AO2(i)=fRN13AO2(i)-1; fNO2(i)=fNO2(i)+1; fRN12O2(i)=fRN12O2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN16AO2 = NO2 + RN15O2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN16AO2'; 
fNO(i)=fNO(i)-1; fRN16AO2(i)=fRN16AO2(i)-1; fNO2(i)=fNO2(i)+1; fRN15O2(i)=fRN15O2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN19AO2 = NO2 + RN18O2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN19AO2'; 
fNO(i)=fNO(i)-1; fRN19AO2(i)=fRN19AO2(i)-1; fNO2(i)=fNO2(i)+1; fRN18O2(i)=fRN18O2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN22AO2 = NO2 + RN21O2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN22AO2'; 
fNO(i)=fNO(i)-1; fRN22AO2(i)=fRN22AO2(i)-1; fNO2(i)=fNO2(i)+1; fRN21O2(i)=fRN21O2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN25AO2 = NO2 + RN24O2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN25AO2'; 
fNO(i)=fNO(i)-1; fRN25AO2(i)=fRN25AO2(i)-1; fNO2(i)=fNO2(i)+1; fRN24O2(i)=fRN24O2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN28AO2 = NO2 + RN27O2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN28AO2'; 
fNO(i)=fNO(i)-1; fRN28AO2(i)=fRN28AO2(i)-1; fNO2(i)=fNO2(i)+1; fRN27O2(i)=fRN27O2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN31AO2 = NO2 + RN30O2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN31AO2'; 
fNO(i)=fNO(i)-1; fRN31AO2(i)=fRN31AO2(i)-1; fNO2(i)=fNO2(i)+1; fRN30O2(i)=fRN30O2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN34AO2 = NO2 + RN33O2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN34AO2'; 
fNO(i)=fNO(i)-1; fRN34AO2(i)=fRN34AO2(i)-1; fNO2(i)=fNO2(i)+1; fRN33O2(i)=fRN33O2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RA13O2 = CARB3 + HO2 + NO2 + UDCARB8';
k(:,i) = KRO2NO.*0.918;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RA13O2'; 
fNO(i)=fNO(i)-1; fRA13O2(i)=fRA13O2(i)-1; fCARB3(i)=fCARB3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB8(i)=fUDCARB8(i)+1; 

i=i+1;
Rnames{i} = 'NO + RA16O2 = CARB3 + HO2 + NO2 + UDCARB11';
k(:,i) = KRO2NO.*0.889.*0.7;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RA16O2'; 
fNO(i)=fNO(i)-1; fRA16O2(i)=fRA16O2(i)-1; fCARB3(i)=fCARB3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB11(i)=fUDCARB11(i)+1; 

i=i+1;
Rnames{i} = 'NO + RA16O2 = CARB6 + HO2 + NO2 + UDCARB8';
k(:,i) = KRO2NO.*0.889.*0.3;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RA16O2'; 
fNO(i)=fNO(i)-1; fRA16O2(i)=fRA16O2(i)-1; fCARB6(i)=fCARB6(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB8(i)=fUDCARB8(i)+1; 

i=i+1;
Rnames{i} = 'NO + RA19AO2 = CARB3 + HO2 + NO2 + UDCARB14';
k(:,i) = KRO2NO.*0.862;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RA19AO2'; 
fNO(i)=fNO(i)-1; fRA19AO2(i)=fRA19AO2(i)-1; fCARB3(i)=fCARB3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB14(i)=fUDCARB14(i)+1; 

i=i+1;
Rnames{i} = 'NO + RA19BO2 = CARB6 + HO2 + NO2 + UDCARB11';
k(:,i) = KRO2NO.*0.862;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RA19BO2'; 
fNO(i)=fNO(i)-1; fRA19BO2(i)=fRA19BO2(i)-1; fCARB6(i)=fCARB6(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB11(i)=fUDCARB11(i)+1; 

i=i+1;
Rnames{i} = 'NO + RA19CO2 = CARB9 + HO2 + NO2 + UDCARB8';
k(:,i) = KRO2NO.*0.862;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RA19CO2'; 
fNO(i)=fNO(i)-1; fRA19CO2(i)=fRA19CO2(i)-1; fCARB9(i)=fCARB9(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB8(i)=fUDCARB8(i)+1; 

i=i+1;
Rnames{i} = 'NO + RA22AO2 = CARB6 + HO2 + NO2 + UDCARB14';
k(:,i) = KRO2NO.*0.843;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RA22AO2'; 
fNO(i)=fNO(i)-1; fRA22AO2(i)=fRA22AO2(i)-1; fCARB6(i)=fCARB6(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB14(i)=fUDCARB14(i)+1; 

i=i+1;
Rnames{i} = 'NO + RA22BO2 = CARB9 + HO2 + NO2 + UDCARB11';
k(:,i) = KRO2NO.*0.843;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RA22BO2'; 
fNO(i)=fNO(i)-1; fRA22BO2(i)=fRA22BO2(i)-1; fCARB9(i)=fCARB9(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB11(i)=fUDCARB11(i)+1; 

i=i+1;
Rnames{i} = 'NO + RA25O2 = CARB6 + HO2 + NO2 + UDCARB17';
k(:,i) = KRO2NO.*0.833;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RA25O2'; 
fNO(i)=fNO(i)-1; fRA25O2(i)=fRA25O2(i)-1; fCARB6(i)=fCARB6(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB17(i)=fUDCARB17(i)+1; 

i=i+1;
Rnames{i} = 'NO + RA28O2 = CARB6 + HO2 + NO2 + UDCARB20';
k(:,i) = KRO2NO.*0.828;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RA28O2'; 
fNO(i)=fNO(i)-1; fRA28O2(i)=fRA28O2(i)-1; fCARB6(i)=fCARB6(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB20(i)=fUDCARB20(i)+1; 

i=i+1;
Rnames{i} = 'NO + RUA20O2 = BENZAL + HCHO + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RUA20O2'; 
fNO(i)=fNO(i)-1; fRUA20O2(i)=fRUA20O2(i)-1; fBENZAL(i)=fBENZAL(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RA16BO2 = NO2 + RAROH14';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RA16BO2'; 
fNO(i)=fNO(i)-1; fRA16BO2(i)=fRA16BO2(i)-1; fNO2(i)=fNO2(i)+1; fRAROH14(i)=fRAROH14(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + NO = HCHO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.995.*0.776;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'NO'; 
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fNO(i)=fNO(i)-1; fHCHO(i)=fHCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + NO = HO2 + HOCH2CHO + NO2';
k(:,i) = KRO2NO.*0.995.*0.224;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'NO'; 
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN9O2 = CH3CHO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.979;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN9O2'; 
fNO(i)=fNO(i)-1; fRN9O2(i)=fRN9O2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN12O2 = CH3CHO + CH3CHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.959;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN12O2'; 
fNO(i)=fNO(i)-1; fRN12O2(i)=fRN12O2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN15O2 = C2H5CHO + CH3CHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.936;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN15O2'; 
fNO(i)=fNO(i)-1; fRN15O2(i)=fRN15O2(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN18O2 = C2H5CHO + C2H5CHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.903;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN18O2'; 
fNO(i)=fNO(i)-1; fRN18O2(i)=fRN18O2(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN21O2 = C2H5CHO + CARB11 + HO2 + NO2';
k(:,i) = KRO2NO.*0.861;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN21O2'; 
fNO(i)=fNO(i)-1; fRN21O2(i)=fRN21O2(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fCARB11(i)=fCARB11(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN24O2 = CARB11 + CARB11 + HO2 + NO2';
k(:,i) = KRO2NO.*0.827;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN24O2'; 
fNO(i)=fNO(i)-1; fRN24O2(i)=fRN24O2(i)-1; fCARB11(i)=fCARB11(i)+1; fCARB11(i)=fCARB11(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN27O2 = CARB11 + CARB14 + HO2 + NO2';
k(:,i) = KRO2NO.*0.804;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN27O2'; 
fNO(i)=fNO(i)-1; fRN27O2(i)=fRN27O2(i)-1; fCARB11(i)=fCARB11(i)+1; fCARB14(i)=fCARB14(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN30O2 = CARB14 + CARB14 + HO2 + NO2';
k(:,i) = KRO2NO.*0.792;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN30O2'; 
fNO(i)=fNO(i)-1; fRN30O2(i)=fRN30O2(i)-1; fCARB14(i)=fCARB14(i)+1; fCARB14(i)=fCARB14(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN33O2 = CARB14 + CARB17 + HO2 + NO2';
k(:,i) = KRO2NO.*0.785;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN33O2'; 
fNO(i)=fNO(i)-1; fRN33O2(i)=fRN33O2(i)-1; fCARB14(i)=fCARB14(i)+1; fCARB17(i)=fCARB17(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN36O2 = CARB17 + CARB17 + HO2 + NO2';
k(:,i) = KRO2NO.*0.780;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN36O2'; 
fNO(i)=fNO(i)-1; fRN36O2(i)=fRN36O2(i)-1; fCARB17(i)=fCARB17(i)+1; fCARB17(i)=fCARB17(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RI12O2 = CH3COCH3 + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.988;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RI12O2'; 
fNO(i)=fNO(i)-1; fRI12O2(i)=fRI12O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RI15O2 = CH3CHO + CH3COCH3 + HO2 + NO2';
k(:,i) = KRO2NO.*0.966;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RI15O2'; 
fNO(i)=fNO(i)-1; fRI15O2(i)=fRI15O2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN15AO2 = CARB13 + HO2 + NO2';
k(:,i) = KRO2NO.*0.975;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN15AO2'; 
fNO(i)=fNO(i)-1; fRN15AO2(i)=fRN15AO2(i)-1; fCARB13(i)=fCARB13(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN18AO2 = CARB16 + HO2 + NO2';
k(:,i) = KRO2NO.*0.946;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN18AO2'; 
fNO(i)=fNO(i)-1; fRN18AO2(i)=fRN18AO2(i)-1; fCARB16(i)=fCARB16(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN21AO2 = CARB19 + HO2 + NO2';
k(:,i) = KRO2NO.*0.889;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN21AO2'; 
fNO(i)=fNO(i)-1; fRN21AO2(i)=fRN21AO2(i)-1; fCARB19(i)=fCARB19(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN24AO2 = CARB22 + HO2 + NO2';
k(:,i) = KRO2NO.*0.862;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN24AO2'; 
fNO(i)=fNO(i)-1; fRN24AO2(i)=fRN24AO2(i)-1; fCARB22(i)=fCARB22(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN27AO2 = CARB25 + HO2 + NO2';
k(:,i) = KRO2NO.*0.843;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN27AO2'; 
fNO(i)=fNO(i)-1; fRN27AO2(i)=fRN27AO2(i)-1; fCARB25(i)=fCARB25(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN30AO2 = CARB28 + HO2 + NO2';
k(:,i) = KRO2NO.*0.834;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN30AO2'; 
fNO(i)=fNO(i)-1; fRN30AO2(i)=fRN30AO2(i)-1; fCARB28(i)=fCARB28(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN33AO2 = CARB31 + HO2 + NO2';
k(:,i) = KRO2NO.*0.828;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN33AO2'; 
fNO(i)=fNO(i)-1; fRN33AO2(i)=fRN33AO2(i)-1; fCARB31(i)=fCARB31(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN36AO2 = CARB34 + HO2 + NO2';
k(:,i) = KRO2NO.*0.824;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN36AO2'; 
fNO(i)=fNO(i)-1; fRN36AO2(i)=fRN36AO2(i)-1; fCARB34(i)=fCARB34(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RC18O2 = CYHEXONE + HO2 + NO2';
k(:,i) = KRO2NO.*0.922;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RC18O2'; 
fNO(i)=fNO(i)-1; fRC18O2(i)=fRC18O2(i)-1; fCYHEXONE(i)=fCYHEXONE(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RC16O2 = CCARB14 + HO2 + NO2';
k(:,i) = KRO2NO.*0.932;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RC16O2'; 
fNO(i)=fNO(i)-1; fRC16O2(i)=fRC16O2(i)-1; fCCARB14(i)=fCCARB14(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RC14O2 = CCARB12 + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RC14O2'; 
fNO(i)=fNO(i)-1; fRC14O2(i)=fRC14O2(i)-1; fCCARB12(i)=fCCARB12(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + NO = CH3O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'NO'; 
fCH3CO3(i)=fCH3CO3(i)-1; fNO(i)=fNO(i)-1; fCH3O2(i)=fCH3O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3 + NO = C2H5O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'NO'; 
fC2H5CO3(i)=fC2H5CO3(i)-1; fNO(i)=fNO(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + NO = HCHO + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'NO'; 
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fNO(i)=fNO(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN8O2 = CH3CO3 + HCHO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN8O2'; 
fNO(i)=fNO(i)-1; fRN8O2(i)=fRN8O2(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN11O2 = CH3CHO + CH3CO3 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN11O2'; 
fNO(i)=fNO(i)-1; fRN11O2(i)=fRN11O2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN14O2 = C2H5CO3 + CH3CHO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN14O2'; 
fNO(i)=fNO(i)-1; fRN14O2(i)=fRN14O2(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN17O2 = NO2 + RN16AO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN17O2'; 
fNO(i)=fNO(i)-1; fRN17O2(i)=fRN17O2(i)-1; fNO2(i)=fNO2(i)+1; fRN16AO2(i)=fRN16AO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN20O2 = NO2 + RN19O2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN20O2'; 
fNO(i)=fNO(i)-1; fRN20O2(i)=fRN20O2(i)-1; fNO2(i)=fNO2(i)+1; fRN19O2(i)=fRN19O2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN23O2 = NO2 + RN22O2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN23O2'; 
fNO(i)=fNO(i)-1; fRN23O2(i)=fRN23O2(i)-1; fNO2(i)=fNO2(i)+1; fRN22O2(i)=fRN22O2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN26O2 = NO2 + RN25O2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN26O2'; 
fNO(i)=fNO(i)-1; fRN26O2(i)=fRN26O2(i)-1; fNO2(i)=fNO2(i)+1; fRN25O2(i)=fRN25O2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN29O2 = NO2 + RN28O2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN29O2'; 
fNO(i)=fNO(i)-1; fRN29O2(i)=fRN29O2(i)-1; fNO2(i)=fNO2(i)+1; fRN28O2(i)=fRN28O2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN32O2 = NO2 + RN31O2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN32O2'; 
fNO(i)=fNO(i)-1; fRN32O2(i)=fRN32O2(i)-1; fNO2(i)=fNO2(i)+1; fRN31O2(i)=fRN31O2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN35O2 = NO2 + RN34O2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN35O2'; 
fNO(i)=fNO(i)-1; fRN35O2(i)=fRN35O2(i)-1; fNO2(i)=fNO2(i)+1; fRN34O2(i)=fRN34O2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RU11O2 = CH3CHO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.935;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RU11O2'; 
fNO(i)=fNO(i)-1; fRU11O2(i)=fRU11O2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RU14O2 = HO2 + NO2 + UCARB12';
k(:,i) = KRO2NO.*0.900.*0.032;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RU14O2'; 
fNO(i)=fNO(i)-1; fRU14O2(i)=fRU14O2(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUCARB12(i)=fUCARB12(i)+1; 

i=i+1;
Rnames{i} = 'NO + RU14O2 = HCHO + HO2 + NO2 + UCARB10';
k(:,i) = KRO2NO.*0.900.*0.968;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RU14O2'; 
fNO(i)=fNO(i)-1; fRU14O2(i)=fRU14O2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUCARB10(i)=fUCARB10(i)+1; 

i=i+1;
Rnames{i} = 'NO + RU12O2 = CARB6 + HO2 + HOCH2CHO + NO2';
k(:,i) = KRO2NO.*0.407;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RU12O2'; 
fNO(i)=fNO(i)-1; fRU12O2(i)=fRU12O2(i)-1; fCARB6(i)=fCARB6(i)+1; fHO2(i)=fHO2(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RU12O2 = CARB3 + CARB7 + HO2 + NO2';
k(:,i) = KRO2NO.*0.388;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RU12O2'; 
fNO(i)=fNO(i)-1; fRU12O2(i)=fRU12O2(i)-1; fCARB3(i)=fCARB3(i)+1; fCARB7(i)=fCARB7(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RU10O2 = CH3CO3 + HOCH2CHO + NO2';
k(:,i) = KRO2NO.*0.670;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RU10O2'; 
fNO(i)=fNO(i)-1; fRU10O2(i)=fRU10O2(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RU10O2 = CARB6 + HCHO + HO2 + NO2';
k(:,i) = KRO2NO.*0.295;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RU10O2'; 
fNO(i)=fNO(i)-1; fRU10O2(i)=fRU10O2(i)-1; fCARB6(i)=fCARB6(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RU10O2 = RU10NO3';
k(:,i) = KRO2NO.*0.035;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RU10O2'; 
fNO(i)=fNO(i)-1; fRU10O2(i)=fRU10O2(i)-1; fRU10NO3(i)=fRU10NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RI11O2 = IC3H7O2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RI11O2'; 
fNO(i)=fNO(i)-1; fRI11O2(i)=fRI11O2(i)-1; fIC3H7O2(i)=fIC3H7O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RI14O2 = CH3CO3 + CH3COCH3 + NO2';
k(:,i) = KRO2NO.*0.52;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RI14O2'; 
fNO(i)=fNO(i)-1; fRI14O2(i)=fRI14O2(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RI14O2 = C2H5CO3 + CH3CHO + NO2';
k(:,i) = KRO2NO.*0.48;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RI14O2'; 
fNO(i)=fNO(i)-1; fRI14O2(i)=fRI14O2(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RI17O2 = CH3COCH3 + NO2 + RN8O2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RI17O2'; 
fNO(i)=fNO(i)-1; fRI17O2(i)=fRI17O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; fRN8O2(i)=fRN8O2(i)+1; 

i=i+1;
Rnames{i} = 'NO + NRN6O2 = HCHO + HCHO + NO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NRN6O2'; 
fNO(i)=fNO(i)-1; fNRN6O2(i)=fNRN6O2(i)-1; fHCHO(i)=fHCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + NRN9O2 = CH3CHO + HCHO + NO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NRN9O2'; 
fNO(i)=fNO(i)-1; fNRN9O2(i)=fNRN9O2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + NRN12O2 = CH3CHO + CH3CHO + NO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NRN12O2'; 
fNO(i)=fNO(i)-1; fNRN12O2(i)=fNRN12O2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + NRN15O2 = C2H5CHO + CH3CHO + NO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NRN15O2'; 
fNO(i)=fNO(i)-1; fNRN15O2(i)=fNRN15O2(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + NRN18O2 = C2H5CHO + C2H5CHO + NO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NRN18O2'; 
fNO(i)=fNO(i)-1; fNRN18O2(i)=fNRN18O2(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fC2H5CHO(i)=fC2H5CHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + NRI12O2 = CH3COCH3 + HCHO + NO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NRI12O2'; 
fNO(i)=fNO(i)-1; fNRI12O2(i)=fNRI12O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + NRI15O2 = CH3CHO + CH3COCH3 + NO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NRI15O2'; 
fNO(i)=fNO(i)-1; fNRI15O2(i)=fNRI15O2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + NRU14O2 = HO2 + NO2 + NUCARB12';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NRU14O2'; 
fNO(i)=fNO(i)-1; fNRU14O2(i)=fNRU14O2(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fNUCARB12(i)=fNUCARB12(i)+1; 

i=i+1;
Rnames{i} = 'NO + NRU12O2 = CO + HO2 + NO2 + NOA';
k(:,i) = KRO2NO.*0.5;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NRU12O2'; 
fNO(i)=fNO(i)-1; fNRU12O2(i)=fNRU12O2(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fNOA(i)=fNOA(i)+1; 

i=i+1;
Rnames{i} = 'NO + NRUA20O2 = BENZAL + HCHO + NO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NRUA20O2'; 
fNO(i)=fNO(i)-1; fNRUA20O2(i)=fNRUA20O2(i)-1; fBENZAL(i)=fBENZAL(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RE6O2 = CH3OCHO + HO2 + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RE6O2'; 
fNO(i)=fNO(i)-1; fRE6O2(i)=fRE6O2(i)-1; fCH3OCHO(i)=fCH3OCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RE12O2 = CH3O2 + ECARB7 + NO2';
k(:,i) = KRO2NO.*0.920;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RE12O2'; 
fNO(i)=fNO(i)-1; fRE12O2(i)=fRE12O2(i)-1; fCH3O2(i)=fCH3O2(i)+1; fECARB7(i)=fECARB7(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RE15O2 = ECARB13 + HO2 + NO2';
k(:,i) = KRO2NO.*0.948;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RE15O2'; 
fNO(i)=fNO(i)-1; fRE15O2(i)=fRE15O2(i)-1; fECARB13(i)=fECARB13(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RE18O2 = CH3O2 + ECARB13 + NO2';
k(:,i) = KRO2NO.*0.805;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RE18O2'; 
fNO(i)=fNO(i)-1; fRE18O2(i)=fRE18O2(i)-1; fCH3O2(i)=fCH3O2(i)+1; fECARB13(i)=fECARB13(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RTN28O2 = HO2 + NO2 + TNCARB26';
k(:,i) = KRO2NO.*0.767.*0.915;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RTN28O2'; 
fNO(i)=fNO(i)-1; fRTN28O2(i)=fRTN28O2(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fTNCARB26(i)=fTNCARB26(i)+1; 

i=i+1;
Rnames{i} = 'NO + RTN28O2 = CH3COCH3 + NO2 + RN19O2';
k(:,i) = KRO2NO.*0.767.*0.085;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RTN28O2'; 
fNO(i)=fNO(i)-1; fRTN28O2(i)=fRTN28O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; fRN19O2(i)=fRN19O2(i)+1; 

i=i+1;
Rnames{i} = 'NO + NRTN28O2 = NO2 + NO2 + TNCARB26';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NRTN28O2'; 
fNO(i)=fNO(i)-1; fNRTN28O2(i)=fNRTN28O2(i)-1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; fTNCARB26(i)=fTNCARB26(i)+1; 

i=i+1;
Rnames{i} = 'NO + RTN26O2 = NO2 + RTN25O2';
k(:,i) = KAPNO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RTN26O2'; 
fNO(i)=fNO(i)-1; fRTN26O2(i)=fRTN26O2(i)-1; fNO2(i)=fNO2(i)+1; fRTN25O2(i)=fRTN25O2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RTN25O2 = NO2 + RTN24O2';
k(:,i) = KRO2NO.*0.840;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RTN25O2'; 
fNO(i)=fNO(i)-1; fRTN25O2(i)=fRTN25O2(i)-1; fNO2(i)=fNO2(i)+1; fRTN24O2(i)=fRTN24O2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RTN24O2 = NO2 + RTN23O2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RTN24O2'; 
fNO(i)=fNO(i)-1; fRTN24O2(i)=fRTN24O2(i)-1; fNO2(i)=fNO2(i)+1; fRTN23O2(i)=fRTN23O2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RTN23O2 = CH3COCH3 + NO2 + RTN14O2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RTN23O2'; 
fNO(i)=fNO(i)-1; fRTN23O2(i)=fRTN23O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; fRTN14O2(i)=fRTN14O2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RTN14O2 = HCHO + HO2 + NO2 + TNCARB10';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RTN14O2'; 
fNO(i)=fNO(i)-1; fRTN14O2(i)=fRTN14O2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fTNCARB10(i)=fTNCARB10(i)+1; 

i=i+1;
Rnames{i} = 'NO + RTN10O2 = CO + NO2 + RN8O2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RTN10O2'; 
fNO(i)=fNO(i)-1; fRTN10O2(i)=fRTN10O2(i)-1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; fRN8O2(i)=fRN8O2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RTX28O2 = HCHO + HO2 + NO2 + TXCARB24';
k(:,i) = KRO2NO.*0.767.*0.915;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RTX28O2'; 
fNO(i)=fNO(i)-1; fRTX28O2(i)=fRTX28O2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fTXCARB24(i)=fTXCARB24(i)+1; 

i=i+1;
Rnames{i} = 'NO + RTX28O2 = CH3COCH3 + NO2 + RN19O2';
k(:,i) = KRO2NO.*0.767.*0.085;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RTX28O2'; 
fNO(i)=fNO(i)-1; fRTX28O2(i)=fRTX28O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; fRN19O2(i)=fRN19O2(i)+1; 

i=i+1;
Rnames{i} = 'NO + NRTX28O2 = HCHO + NO2 + NO2 + TXCARB24';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NRTX28O2'; 
fNO(i)=fNO(i)-1; fNRTX28O2(i)=fNRTX28O2(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; fTXCARB24(i)=fTXCARB24(i)+1; 

i=i+1;
Rnames{i} = 'NO + RTX24O2 = HO2 + NO2 + TXCARB22';
k(:,i) = KRO2NO.*0.843.*0.6;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RTX24O2'; 
fNO(i)=fNO(i)-1; fRTX24O2(i)=fRTX24O2(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fTXCARB22(i)=fTXCARB22(i)+1; 

i=i+1;
Rnames{i} = 'NO + RTX24O2 = CH3COCH3 + HCHO + NO2 + RN13AO2';
k(:,i) = KRO2NO.*0.843.*0.4;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RTX24O2'; 
fNO(i)=fNO(i)-1; fRTX24O2(i)=fRTX24O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fRN13AO2(i)=fRN13AO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RTX22O2 = CH3COCH3 + NO2 + RN13O2';
k(:,i) = KRO2NO.*0.700;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RTX22O2'; 
fNO(i)=fNO(i)-1; fRTX22O2(i)=fRTX22O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; fRN13O2(i)=fRN13O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + NO = CH3NO3';
k(:,i) = 2.3e-12.*exp(360./T).*0.001;
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'NO'; 
fCH3O2(i)=fCH3O2(i)-1; fNO(i)=fNO(i)-1; fCH3NO3(i)=fCH3NO3(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O2 + NO = C2H5NO3';
k(:,i) = 2.55e-12.*exp(380./T).*0.009;
Gstr{i,1} = 'C2H5O2'; Gstr{i,2} = 'NO'; 
fC2H5O2(i)=fC2H5O2(i)-1; fNO(i)=fNO(i)-1; fC2H5NO3(i)=fC2H5NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN10O2 = RN10NO3';
k(:,i) = 2.80e-12.*exp(360./T).*0.020;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN10O2'; 
fNO(i)=fNO(i)-1; fRN10O2(i)=fRN10O2(i)-1; fRN10NO3(i)=fRN10NO3(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7O2 + NO = IC3H7NO3';
k(:,i) = 2.70e-12.*exp(360./T).*0.042;
Gstr{i,1} = 'IC3H7O2'; Gstr{i,2} = 'NO'; 
fIC3H7O2(i)=fIC3H7O2(i)-1; fNO(i)=fNO(i)-1; fIC3H7NO3(i)=fIC3H7NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN13O2 = RN13NO3';
k(:,i) = KRO2NO.*0.083;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN13O2'; 
fNO(i)=fNO(i)-1; fRN13O2(i)=fRN13O2(i)-1; fRN13NO3(i)=fRN13NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN16O2 = RN16NO3';
k(:,i) = KRO2NO.*0.123;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN16O2'; 
fNO(i)=fNO(i)-1; fRN16O2(i)=fRN16O2(i)-1; fRN16NO3(i)=fRN16NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN19O2 = RN19NO3';
k(:,i) = KRO2NO.*0.212;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN19O2'; 
fNO(i)=fNO(i)-1; fRN19O2(i)=fRN19O2(i)-1; fRN19NO3(i)=fRN19NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN22O2 = RN22NO3';
k(:,i) = KRO2NO.*0.278;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN22O2'; 
fNO(i)=fNO(i)-1; fRN22O2(i)=fRN22O2(i)-1; fRN22NO3(i)=fRN22NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN25O2 = RN25NO3';
k(:,i) = KRO2NO.*0.346;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN25O2'; 
fNO(i)=fNO(i)-1; fRN25O2(i)=fRN25O2(i)-1; fRN25NO3(i)=fRN25NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN28O2 = RN28NO3';
k(:,i) = KRO2NO.*0.393;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN28O2'; 
fNO(i)=fNO(i)-1; fRN28O2(i)=fRN28O2(i)-1; fRN28NO3(i)=fRN28NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN31O2 = RN31NO3';
k(:,i) = KRO2NO.*0.417;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN31O2'; 
fNO(i)=fNO(i)-1; fRN31O2(i)=fRN31O2(i)-1; fRN31NO3(i)=fRN31NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN34O2 = RN34NO3';
k(:,i) = KRO2NO.*0.431;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN34O2'; 
fNO(i)=fNO(i)-1; fRN34O2(i)=fRN34O2(i)-1; fRN34NO3(i)=fRN34NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN37O2 = RN37NO3';
k(:,i) = KRO2NO.*0.440;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN37O2'; 
fNO(i)=fNO(i)-1; fRN37O2(i)=fRN37O2(i)-1; fRN37NO3(i)=fRN37NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RI13O2 = RI13NO3';
k(:,i) = KRO2NO.*0.027;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RI13O2'; 
fNO(i)=fNO(i)-1; fRI13O2(i)=fRI13O2(i)-1; fRI13NO3(i)=fRI13NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RI16O2 = RI16NO3';
k(:,i) = KRO2NO.*0.075;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RI16O2'; 
fNO(i)=fNO(i)-1; fRI16O2(i)=fRI16O2(i)-1; fRI16NO3(i)=fRI16NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RI16AO2 = RI16NO3';
k(:,i) = KRO2NO.*0.051;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RI16AO2'; 
fNO(i)=fNO(i)-1; fRI16AO2(i)=fRI16AO2(i)-1; fRI16NO3(i)=fRI16NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN19BO2 = RN19NO3';
k(:,i) = KRO2NO.*0.110;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN19BO2'; 
fNO(i)=fNO(i)-1; fRN19BO2(i)=fRN19BO2(i)-1; fRN19NO3(i)=fRN19NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RI19O2 = RN19NO3';
k(:,i) = KRO2NO.*0.061;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RI19O2'; 
fNO(i)=fNO(i)-1; fRI19O2(i)=fRI19O2(i)-1; fRN19NO3(i)=fRN19NO3(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + NO = HOC2H4NO3';
k(:,i) = KRO2NO.*0.005;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'NO'; 
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fNO(i)=fNO(i)-1; fHOC2H4NO3(i)=fHOC2H4NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN9O2 = RN9NO3';
k(:,i) = KRO2NO.*0.021;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN9O2'; 
fNO(i)=fNO(i)-1; fRN9O2(i)=fRN9O2(i)-1; fRN9NO3(i)=fRN9NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN12O2 = RN12NO3';
k(:,i) = KRO2NO.*0.041;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN12O2'; 
fNO(i)=fNO(i)-1; fRN12O2(i)=fRN12O2(i)-1; fRN12NO3(i)=fRN12NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN15O2 = RN15NO3';
k(:,i) = KRO2NO.*0.064;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN15O2'; 
fNO(i)=fNO(i)-1; fRN15O2(i)=fRN15O2(i)-1; fRN15NO3(i)=fRN15NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN18O2 = RN18NO3';
k(:,i) = KRO2NO.*0.097;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN18O2'; 
fNO(i)=fNO(i)-1; fRN18O2(i)=fRN18O2(i)-1; fRN18NO3(i)=fRN18NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN21O2 = RN21NO3';
k(:,i) = KRO2NO.*0.139;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN21O2'; 
fNO(i)=fNO(i)-1; fRN21O2(i)=fRN21O2(i)-1; fRN21NO3(i)=fRN21NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN24O2 = RN24NO3';
k(:,i) = KRO2NO.*0.173;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN24O2'; 
fNO(i)=fNO(i)-1; fRN24O2(i)=fRN24O2(i)-1; fRN24NO3(i)=fRN24NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN27O2 = RN27NO3';
k(:,i) = KRO2NO.*0.196;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN27O2'; 
fNO(i)=fNO(i)-1; fRN27O2(i)=fRN27O2(i)-1; fRN27NO3(i)=fRN27NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN30O2 = RN30NO3';
k(:,i) = KRO2NO.*0.208;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN30O2'; 
fNO(i)=fNO(i)-1; fRN30O2(i)=fRN30O2(i)-1; fRN30NO3(i)=fRN30NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN33O2 = RN33NO3';
k(:,i) = KRO2NO.*0.215;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN33O2'; 
fNO(i)=fNO(i)-1; fRN33O2(i)=fRN33O2(i)-1; fRN33NO3(i)=fRN33NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN36O2 = RN36NO3';
k(:,i) = KRO2NO.*0.220;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN36O2'; 
fNO(i)=fNO(i)-1; fRN36O2(i)=fRN36O2(i)-1; fRN36NO3(i)=fRN36NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RI12O2 = RI12NO3';
k(:,i) = KRO2NO.*0.012;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RI12O2'; 
fNO(i)=fNO(i)-1; fRI12O2(i)=fRI12O2(i)-1; fRI12NO3(i)=fRI12NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RI15O2 = RI15NO3';
k(:,i) = KRO2NO.*0.034;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RI15O2'; 
fNO(i)=fNO(i)-1; fRI15O2(i)=fRI15O2(i)-1; fRI15NO3(i)=fRI15NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN15AO2 = RN15NO3';
k(:,i) = KRO2NO.*0.025;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN15AO2'; 
fNO(i)=fNO(i)-1; fRN15AO2(i)=fRN15AO2(i)-1; fRN15NO3(i)=fRN15NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN18AO2 = RN18NO3';
k(:,i) = KRO2NO.*0.054;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN18AO2'; 
fNO(i)=fNO(i)-1; fRN18AO2(i)=fRN18AO2(i)-1; fRN18NO3(i)=fRN18NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN21AO2 = RN21NO3';
k(:,i) = KRO2NO.*0.111;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN21AO2'; 
fNO(i)=fNO(i)-1; fRN21AO2(i)=fRN21AO2(i)-1; fRN21NO3(i)=fRN21NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN24AO2 = RN24NO3';
k(:,i) = KRO2NO.*0.138;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN24AO2'; 
fNO(i)=fNO(i)-1; fRN24AO2(i)=fRN24AO2(i)-1; fRN24NO3(i)=fRN24NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN27AO2 = RN27NO3';
k(:,i) = KRO2NO.*0.157;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN27AO2'; 
fNO(i)=fNO(i)-1; fRN27AO2(i)=fRN27AO2(i)-1; fRN27NO3(i)=fRN27NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN30AO2 = RN30NO3';
k(:,i) = KRO2NO.*0.166;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN30AO2'; 
fNO(i)=fNO(i)-1; fRN30AO2(i)=fRN30AO2(i)-1; fRN30NO3(i)=fRN30NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN33AO2 = RN33NO3';
k(:,i) = KRO2NO.*0.172;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN33AO2'; 
fNO(i)=fNO(i)-1; fRN33AO2(i)=fRN33AO2(i)-1; fRN33NO3(i)=fRN33NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RN36AO2 = RN36NO3';
k(:,i) = KRO2NO.*0.176;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RN36AO2'; 
fNO(i)=fNO(i)-1; fRN36AO2(i)=fRN36AO2(i)-1; fRN36NO3(i)=fRN36NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RC18O2 = RC18NO3';
k(:,i) = KRO2NO.*0.078;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RC18O2'; 
fNO(i)=fNO(i)-1; fRC18O2(i)=fRC18O2(i)-1; fRC18NO3(i)=fRC18NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RC16O2 = RN16NO3';
k(:,i) = KRO2NO.*0.068;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RC16O2'; 
fNO(i)=fNO(i)-1; fRC16O2(i)=fRC16O2(i)-1; fRN16NO3(i)=fRN16NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RU11O2 = RU11NO3';
k(:,i) = KRO2NO.*0.065;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RU11O2'; 
fNO(i)=fNO(i)-1; fRU11O2(i)=fRU11O2(i)-1; fRU11NO3(i)=fRU11NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RU14O2 = RU14NO3';
k(:,i) = KRO2NO.*0.100;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RU14O2'; 
fNO(i)=fNO(i)-1; fRU14O2(i)=fRU14O2(i)-1; fRU14NO3(i)=fRU14NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RA13O2 = RA13NO3';
k(:,i) = KRO2NO.*0.082;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RA13O2'; 
fNO(i)=fNO(i)-1; fRA13O2(i)=fRA13O2(i)-1; fRA13NO3(i)=fRA13NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RA16O2 = RA16NO3';
k(:,i) = KRO2NO.*0.111;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RA16O2'; 
fNO(i)=fNO(i)-1; fRA16O2(i)=fRA16O2(i)-1; fRA16NO3(i)=fRA16NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RA19AO2 = RA19NO3';
k(:,i) = KRO2NO.*0.138;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RA19AO2'; 
fNO(i)=fNO(i)-1; fRA19AO2(i)=fRA19AO2(i)-1; fRA19NO3(i)=fRA19NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RA19BO2 = RA19NO3';
k(:,i) = KRO2NO.*0.138;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RA19BO2'; 
fNO(i)=fNO(i)-1; fRA19BO2(i)=fRA19BO2(i)-1; fRA19NO3(i)=fRA19NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RA19CO2 = RA19NO3';
k(:,i) = KRO2NO.*0.138;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RA19CO2'; 
fNO(i)=fNO(i)-1; fRA19CO2(i)=fRA19CO2(i)-1; fRA19NO3(i)=fRA19NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RA22AO2 = RA22NO3';
k(:,i) = KRO2NO.*0.157;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RA22AO2'; 
fNO(i)=fNO(i)-1; fRA22AO2(i)=fRA22AO2(i)-1; fRA22NO3(i)=fRA22NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RA22BO2 = RA22NO3';
k(:,i) = KRO2NO.*0.157;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RA22BO2'; 
fNO(i)=fNO(i)-1; fRA22BO2(i)=fRA22BO2(i)-1; fRA22NO3(i)=fRA22NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RA25O2 = RA25NO3';
k(:,i) = KRO2NO.*0.167;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RA25O2'; 
fNO(i)=fNO(i)-1; fRA25O2(i)=fRA25O2(i)-1; fRA25NO3(i)=fRA25NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RA28O2 = RA28NO3';
k(:,i) = KRO2NO.*0.172;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RA28O2'; 
fNO(i)=fNO(i)-1; fRA28O2(i)=fRA28O2(i)-1; fRA28NO3(i)=fRA28NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RE12O2 = RE12NO3';
k(:,i) = KRO2NO.*0.080;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RE12O2'; 
fNO(i)=fNO(i)-1; fRE12O2(i)=fRE12O2(i)-1; fRE12NO3(i)=fRE12NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RE15O2 = RE15NO3';
k(:,i) = KRO2NO.*0.052;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RE15O2'; 
fNO(i)=fNO(i)-1; fRE15O2(i)=fRE15O2(i)-1; fRE15NO3(i)=fRE15NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RE18O2 = RE18NO3';
k(:,i) = KRO2NO.*0.195;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RE18O2'; 
fNO(i)=fNO(i)-1; fRE18O2(i)=fRE18O2(i)-1; fRE18NO3(i)=fRE18NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RTN28O2 = RTN28NO3';
k(:,i) = KRO2NO.*0.233;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RTN28O2'; 
fNO(i)=fNO(i)-1; fRTN28O2(i)=fRTN28O2(i)-1; fRTN28NO3(i)=fRTN28NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RTN25O2 = RTN25NO3';
k(:,i) = KRO2NO.*0.160;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RTN25O2'; 
fNO(i)=fNO(i)-1; fRTN25O2(i)=fRTN25O2(i)-1; fRTN25NO3(i)=fRTN25NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RTX28O2 = RTX28NO3';
k(:,i) = KRO2NO.*0.233;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RTX28O2'; 
fNO(i)=fNO(i)-1; fRTX28O2(i)=fRTX28O2(i)-1; fRTX28NO3(i)=fRTX28NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RTX24O2 = RTX24NO3';
k(:,i) = KRO2NO.*0.157;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RTX24O2'; 
fNO(i)=fNO(i)-1; fRTX24O2(i)=fRTX24O2(i)-1; fRTX24NO3(i)=fRTX24NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RTX22O2 = RTX22NO3';
k(:,i) = KRO2NO.*0.300;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RTX22O2'; 
fNO(i)=fNO(i)-1; fRTX22O2(i)=fRTX22O2(i)-1; fRTX22NO3(i)=fRTX22NO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + NO3 = HCHO + HO2 + NO2';
k(:,i) = 1.2e-12;
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'NO3'; 
fCH3O2(i)=fCH3O2(i)-1; fNO3(i)=fNO3(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O2 + NO3 = CH3CHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C2H5O2'; Gstr{i,2} = 'NO3'; 
fC2H5O2(i)=fC2H5O2(i)-1; fNO3(i)=fNO3(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN10O2 = C2H5CHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN10O2'; 
fNO3(i)=fNO3(i)-1; fRN10O2(i)=fRN10O2(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7O2 + NO3 = CH3COCH3 + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'IC3H7O2'; Gstr{i,2} = 'NO3'; 
fIC3H7O2(i)=fIC3H7O2(i)-1; fNO3(i)=fNO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN13O2 = C2H5O2 + CH3CHO + NO2';
k(:,i) = KRO2NO3.*0.398;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN13O2'; 
fNO3(i)=fNO3(i)-1; fRN13O2(i)=fRN13O2(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN13O2 = CARB11A + HO2 + NO2';
k(:,i) = KRO2NO3.*0.602;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN13O2'; 
fNO3(i)=fNO3(i)-1; fRN13O2(i)=fRN13O2(i)-1; fCARB11A(i)=fCARB11A(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN16O2 = NO2 + RN15AO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN16O2'; 
fNO3(i)=fNO3(i)-1; fRN16O2(i)=fRN16O2(i)-1; fNO2(i)=fNO2(i)+1; fRN15AO2(i)=fRN15AO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN19O2 = NO2 + RN18AO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN19O2'; 
fNO3(i)=fNO3(i)-1; fRN19O2(i)=fRN19O2(i)-1; fNO2(i)=fNO2(i)+1; fRN18AO2(i)=fRN18AO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN22O2 = NO2 + RN21AO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN22O2'; 
fNO3(i)=fNO3(i)-1; fRN22O2(i)=fRN22O2(i)-1; fNO2(i)=fNO2(i)+1; fRN21AO2(i)=fRN21AO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN25O2 = NO2 + RN24AO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN25O2'; 
fNO3(i)=fNO3(i)-1; fRN25O2(i)=fRN25O2(i)-1; fNO2(i)=fNO2(i)+1; fRN24AO2(i)=fRN24AO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN28O2 = NO2 + RN27AO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN28O2'; 
fNO3(i)=fNO3(i)-1; fRN28O2(i)=fRN28O2(i)-1; fNO2(i)=fNO2(i)+1; fRN27AO2(i)=fRN27AO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN31O2 = NO2 + RN30AO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN31O2'; 
fNO3(i)=fNO3(i)-1; fRN31O2(i)=fRN31O2(i)-1; fNO2(i)=fNO2(i)+1; fRN30AO2(i)=fRN30AO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN34O2 = NO2 + RN33AO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN34O2'; 
fNO3(i)=fNO3(i)-1; fRN34O2(i)=fRN34O2(i)-1; fNO2(i)=fNO2(i)+1; fRN33AO2(i)=fRN33AO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN37O2 = NO2 + RN36AO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN37O2'; 
fNO3(i)=fNO3(i)-1; fRN37O2(i)=fRN37O2(i)-1; fNO2(i)=fNO2(i)+1; fRN36AO2(i)=fRN36AO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RI13O2 = CH3COCH3 + CH3O2 + NO2';
k(:,i) = KRO2NO3.*0.831;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RI13O2'; 
fNO3(i)=fNO3(i)-1; fRI13O2(i)=fRI13O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fCH3O2(i)=fCH3O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RI13O2 = HO2 + IPRCHO + NO2';
k(:,i) = KRO2NO3.*0.169;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RI13O2'; 
fNO3(i)=fNO3(i)-1; fRI13O2(i)=fRI13O2(i)-1; fHO2(i)=fHO2(i)+1; fIPRCHO(i)=fIPRCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RI16O2 = C2H5O2 + CH3COCH3 + NO2';
k(:,i) = KRO2NO3.*0.913;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RI16O2'; 
fNO3(i)=fNO3(i)-1; fRI16O2(i)=fRI16O2(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RI16O2 = HO2 + MIPK + NO2';
k(:,i) = KRO2NO3.*0.087;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RI16O2'; 
fNO3(i)=fNO3(i)-1; fRI16O2(i)=fRI16O2(i)-1; fHO2(i)=fHO2(i)+1; fMIPK(i)=fMIPK(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RI16AO2 = HCHO + NO2 + RI13O2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RI16AO2'; 
fNO3(i)=fNO3(i)-1; fRI16AO2(i)=fRI16AO2(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fRI13O2(i)=fRI13O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN19BO2 = NO2 + RN18AO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN19BO2'; 
fNO3(i)=fNO3(i)-1; fRN19BO2(i)=fRN19BO2(i)-1; fNO2(i)=fNO2(i)+1; fRN18AO2(i)=fRN18AO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RI19O2 = CH3COCH3 + IC3H7O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RI19O2'; 
fNO3(i)=fNO3(i)-1; fRI19O2(i)=fRI19O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fIC3H7O2(i)=fIC3H7O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN13AO2 = NO2 + RN12O2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN13AO2'; 
fNO3(i)=fNO3(i)-1; fRN13AO2(i)=fRN13AO2(i)-1; fNO2(i)=fNO2(i)+1; fRN12O2(i)=fRN12O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN16AO2 = NO2 + RN15O2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN16AO2'; 
fNO3(i)=fNO3(i)-1; fRN16AO2(i)=fRN16AO2(i)-1; fNO2(i)=fNO2(i)+1; fRN15O2(i)=fRN15O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN19AO2 = NO2 + RN18O2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN19AO2'; 
fNO3(i)=fNO3(i)-1; fRN19AO2(i)=fRN19AO2(i)-1; fNO2(i)=fNO2(i)+1; fRN18O2(i)=fRN18O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN22AO2 = NO2 + RN21O2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN22AO2'; 
fNO3(i)=fNO3(i)-1; fRN22AO2(i)=fRN22AO2(i)-1; fNO2(i)=fNO2(i)+1; fRN21O2(i)=fRN21O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN25AO2 = NO2 + RN24O2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN25AO2'; 
fNO3(i)=fNO3(i)-1; fRN25AO2(i)=fRN25AO2(i)-1; fNO2(i)=fNO2(i)+1; fRN24O2(i)=fRN24O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN28AO2 = NO2 + RN27O2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN28AO2'; 
fNO3(i)=fNO3(i)-1; fRN28AO2(i)=fRN28AO2(i)-1; fNO2(i)=fNO2(i)+1; fRN27O2(i)=fRN27O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN31AO2 = NO2 + RN30O2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN31AO2'; 
fNO3(i)=fNO3(i)-1; fRN31AO2(i)=fRN31AO2(i)-1; fNO2(i)=fNO2(i)+1; fRN30O2(i)=fRN30O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN34AO2 = NO2 + RN33O2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN34AO2'; 
fNO3(i)=fNO3(i)-1; fRN34AO2(i)=fRN34AO2(i)-1; fNO2(i)=fNO2(i)+1; fRN33O2(i)=fRN33O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RA13O2 = CARB3 + HO2 + NO2 + UDCARB8';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RA13O2'; 
fNO3(i)=fNO3(i)-1; fRA13O2(i)=fRA13O2(i)-1; fCARB3(i)=fCARB3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB8(i)=fUDCARB8(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RA16O2 = CARB3 + HO2 + NO2 + UDCARB11';
k(:,i) = KRO2NO3.*0.7;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RA16O2'; 
fNO3(i)=fNO3(i)-1; fRA16O2(i)=fRA16O2(i)-1; fCARB3(i)=fCARB3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB11(i)=fUDCARB11(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RA16O2 = CARB6 + HO2 + NO2 + UDCARB8';
k(:,i) = KRO2NO3.*0.3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RA16O2'; 
fNO3(i)=fNO3(i)-1; fRA16O2(i)=fRA16O2(i)-1; fCARB6(i)=fCARB6(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB8(i)=fUDCARB8(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RA19AO2 = CARB3 + HO2 + NO2 + UDCARB14';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RA19AO2'; 
fNO3(i)=fNO3(i)-1; fRA19AO2(i)=fRA19AO2(i)-1; fCARB3(i)=fCARB3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB14(i)=fUDCARB14(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RA19BO2 = CARB6 + HO2 + NO2 + UDCARB11';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RA19BO2'; 
fNO3(i)=fNO3(i)-1; fRA19BO2(i)=fRA19BO2(i)-1; fCARB6(i)=fCARB6(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB11(i)=fUDCARB11(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RA19CO2 = CARB9 + HO2 + NO2 + UDCARB8';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RA19CO2'; 
fNO3(i)=fNO3(i)-1; fRA19CO2(i)=fRA19CO2(i)-1; fCARB9(i)=fCARB9(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB8(i)=fUDCARB8(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RA22AO2 = CARB6 + HO2 + NO2 + UDCARB14';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RA22AO2'; 
fNO3(i)=fNO3(i)-1; fRA22AO2(i)=fRA22AO2(i)-1; fCARB6(i)=fCARB6(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB14(i)=fUDCARB14(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RA22BO2 = CARB9 + HO2 + NO2 + UDCARB11';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RA22BO2'; 
fNO3(i)=fNO3(i)-1; fRA22BO2(i)=fRA22BO2(i)-1; fCARB9(i)=fCARB9(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB11(i)=fUDCARB11(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RA25O2 = CARB6 + HO2 + NO2 + UDCARB17';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RA25O2'; 
fNO3(i)=fNO3(i)-1; fRA25O2(i)=fRA25O2(i)-1; fCARB6(i)=fCARB6(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB17(i)=fUDCARB17(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RA28O2 = CARB6 + HO2 + NO2 + UDCARB20';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RA28O2'; 
fNO3(i)=fNO3(i)-1; fRA28O2(i)=fRA28O2(i)-1; fCARB6(i)=fCARB6(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB20(i)=fUDCARB20(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RUA20O2 = BENZAL + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RUA20O2'; 
fNO3(i)=fNO3(i)-1; fRUA20O2(i)=fRUA20O2(i)-1; fBENZAL(i)=fBENZAL(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RA16BO2 = NO2 + RAROH14';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RA16BO2'; 
fNO3(i)=fNO3(i)-1; fRA16BO2(i)=fRA16BO2(i)-1; fNO2(i)=fNO2(i)+1; fRAROH14(i)=fRAROH14(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + NO3 = HCHO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3.*0.776;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'NO3'; 
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fNO3(i)=fNO3(i)-1; fHCHO(i)=fHCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + NO3 = HO2 + HOCH2CHO + NO2';
k(:,i) = KRO2NO3.*0.224;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'NO3'; 
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN9O2 = CH3CHO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN9O2'; 
fNO3(i)=fNO3(i)-1; fRN9O2(i)=fRN9O2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN12O2 = CH3CHO + CH3CHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN12O2'; 
fNO3(i)=fNO3(i)-1; fRN12O2(i)=fRN12O2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN15O2 = C2H5CHO + CH3CHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN15O2'; 
fNO3(i)=fNO3(i)-1; fRN15O2(i)=fRN15O2(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN18O2 = C2H5CHO + C2H5CHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN18O2'; 
fNO3(i)=fNO3(i)-1; fRN18O2(i)=fRN18O2(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN21O2 = C2H5CHO + CARB11 + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN21O2'; 
fNO3(i)=fNO3(i)-1; fRN21O2(i)=fRN21O2(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fCARB11(i)=fCARB11(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN24O2 = CARB11 + CARB11 + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN24O2'; 
fNO3(i)=fNO3(i)-1; fRN24O2(i)=fRN24O2(i)-1; fCARB11(i)=fCARB11(i)+1; fCARB11(i)=fCARB11(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN27O2 = CARB11 + CARB14 + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN27O2'; 
fNO3(i)=fNO3(i)-1; fRN27O2(i)=fRN27O2(i)-1; fCARB11(i)=fCARB11(i)+1; fCARB14(i)=fCARB14(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN30O2 = CARB14 + CARB14 + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN30O2'; 
fNO3(i)=fNO3(i)-1; fRN30O2(i)=fRN30O2(i)-1; fCARB14(i)=fCARB14(i)+1; fCARB14(i)=fCARB14(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN33O2 = CARB14 + CARB17 + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN33O2'; 
fNO3(i)=fNO3(i)-1; fRN33O2(i)=fRN33O2(i)-1; fCARB14(i)=fCARB14(i)+1; fCARB17(i)=fCARB17(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN36O2 = CARB17 + CARB17 + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN36O2'; 
fNO3(i)=fNO3(i)-1; fRN36O2(i)=fRN36O2(i)-1; fCARB17(i)=fCARB17(i)+1; fCARB17(i)=fCARB17(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RI12O2 = CH3COCH3 + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RI12O2'; 
fNO3(i)=fNO3(i)-1; fRI12O2(i)=fRI12O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RI15O2 = CH3CHO + CH3COCH3 + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RI15O2'; 
fNO3(i)=fNO3(i)-1; fRI15O2(i)=fRI15O2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN15AO2 = CARB13 + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN15AO2'; 
fNO3(i)=fNO3(i)-1; fRN15AO2(i)=fRN15AO2(i)-1; fCARB13(i)=fCARB13(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN18AO2 = CARB16 + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN18AO2'; 
fNO3(i)=fNO3(i)-1; fRN18AO2(i)=fRN18AO2(i)-1; fCARB16(i)=fCARB16(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN21AO2 = CARB19 + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN21AO2'; 
fNO3(i)=fNO3(i)-1; fRN21AO2(i)=fRN21AO2(i)-1; fCARB19(i)=fCARB19(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN24AO2 = CARB22 + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN24AO2'; 
fNO3(i)=fNO3(i)-1; fRN24AO2(i)=fRN24AO2(i)-1; fCARB22(i)=fCARB22(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN27AO2 = CARB25 + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN27AO2'; 
fNO3(i)=fNO3(i)-1; fRN27AO2(i)=fRN27AO2(i)-1; fCARB25(i)=fCARB25(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN30AO2 = CARB28 + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN30AO2'; 
fNO3(i)=fNO3(i)-1; fRN30AO2(i)=fRN30AO2(i)-1; fCARB28(i)=fCARB28(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN33AO2 = CARB31 + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN33AO2'; 
fNO3(i)=fNO3(i)-1; fRN33AO2(i)=fRN33AO2(i)-1; fCARB31(i)=fCARB31(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN36AO2 = CARB34 + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN36AO2'; 
fNO3(i)=fNO3(i)-1; fRN36AO2(i)=fRN36AO2(i)-1; fCARB34(i)=fCARB34(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RC18O2 = CYHEXONE + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RC18O2'; 
fNO3(i)=fNO3(i)-1; fRC18O2(i)=fRC18O2(i)-1; fCYHEXONE(i)=fCYHEXONE(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RC16O2 = CCARB14 + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RC16O2'; 
fNO3(i)=fNO3(i)-1; fRC16O2(i)=fRC16O2(i)-1; fCCARB14(i)=fCCARB14(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RC14O2 = CCARB12 + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RC14O2'; 
fNO3(i)=fNO3(i)-1; fRC14O2(i)=fRC14O2(i)-1; fCCARB12(i)=fCCARB12(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + NO3 = CH3O2 + NO2';
k(:,i) = KRO2NO3.*1.60;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'NO3'; 
fCH3CO3(i)=fCH3CO3(i)-1; fNO3(i)=fNO3(i)-1; fCH3O2(i)=fCH3O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3 + NO3 = C2H5O2 + NO2';
k(:,i) = KRO2NO3.*1.60;
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'NO3'; 
fC2H5CO3(i)=fC2H5CO3(i)-1; fNO3(i)=fNO3(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + NO3 = HCHO + HO2 + NO2';
k(:,i) = KRO2NO3.*1.60;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'NO3'; 
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fNO3(i)=fNO3(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN8O2 = CH3CO3 + HCHO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN8O2'; 
fNO3(i)=fNO3(i)-1; fRN8O2(i)=fRN8O2(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN11O2 = CH3CHO + CH3CO3 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN11O2'; 
fNO3(i)=fNO3(i)-1; fRN11O2(i)=fRN11O2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN14O2 = C2H5CO3 + CH3CHO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN14O2'; 
fNO3(i)=fNO3(i)-1; fRN14O2(i)=fRN14O2(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN17O2 = NO2 + RN16AO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN17O2'; 
fNO3(i)=fNO3(i)-1; fRN17O2(i)=fRN17O2(i)-1; fNO2(i)=fNO2(i)+1; fRN16AO2(i)=fRN16AO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN20O2 = NO2 + RN19O2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN20O2'; 
fNO3(i)=fNO3(i)-1; fRN20O2(i)=fRN20O2(i)-1; fNO2(i)=fNO2(i)+1; fRN19O2(i)=fRN19O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN23O2 = NO2 + RN22O2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN23O2'; 
fNO3(i)=fNO3(i)-1; fRN23O2(i)=fRN23O2(i)-1; fNO2(i)=fNO2(i)+1; fRN22O2(i)=fRN22O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN26O2 = NO2 + RN25O2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN26O2'; 
fNO3(i)=fNO3(i)-1; fRN26O2(i)=fRN26O2(i)-1; fNO2(i)=fNO2(i)+1; fRN25O2(i)=fRN25O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN29O2 = NO2 + RN28O2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN29O2'; 
fNO3(i)=fNO3(i)-1; fRN29O2(i)=fRN29O2(i)-1; fNO2(i)=fNO2(i)+1; fRN28O2(i)=fRN28O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN32O2 = NO2 + RN31O2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN32O2'; 
fNO3(i)=fNO3(i)-1; fRN32O2(i)=fRN32O2(i)-1; fNO2(i)=fNO2(i)+1; fRN31O2(i)=fRN31O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RN35O2 = NO2 + RN34O2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RN35O2'; 
fNO3(i)=fNO3(i)-1; fRN35O2(i)=fRN35O2(i)-1; fNO2(i)=fNO2(i)+1; fRN34O2(i)=fRN34O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RU11O2 = CH3CHO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RU11O2'; 
fNO3(i)=fNO3(i)-1; fRU11O2(i)=fRU11O2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RU14O2 = HO2 + NO2 + UCARB12';
k(:,i) = KRO2NO3.*0.032;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RU14O2'; 
fNO3(i)=fNO3(i)-1; fRU14O2(i)=fRU14O2(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUCARB12(i)=fUCARB12(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RU14O2 = HCHO + HO2 + NO2 + UCARB10';
k(:,i) = KRO2NO3.*0.968;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RU14O2'; 
fNO3(i)=fNO3(i)-1; fRU14O2(i)=fRU14O2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUCARB10(i)=fUCARB10(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RU12O2 = CARB6 + HO2 + HOCH2CHO + NO2';
k(:,i) = KRO2NO3.*0.422;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RU12O2'; 
fNO3(i)=fNO3(i)-1; fRU12O2(i)=fRU12O2(i)-1; fCARB6(i)=fCARB6(i)+1; fHO2(i)=fHO2(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RU12O2 = CARB3 + CARB7 + HO2 + NO2';
k(:,i) = KRO2NO3.*0.402;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RU12O2'; 
fNO3(i)=fNO3(i)-1; fRU12O2(i)=fRU12O2(i)-1; fCARB3(i)=fCARB3(i)+1; fCARB7(i)=fCARB7(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RU10O2 = CH3CO3 + HOCH2CHO + NO2';
k(:,i) = KRO2NO3.*0.7;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RU10O2'; 
fNO3(i)=fNO3(i)-1; fRU10O2(i)=fRU10O2(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RU10O2 = CARB6 + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3.*0.3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RU10O2'; 
fNO3(i)=fNO3(i)-1; fRU10O2(i)=fRU10O2(i)-1; fCARB6(i)=fCARB6(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RI11O2 = IC3H7O2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RI11O2'; 
fNO3(i)=fNO3(i)-1; fRI11O2(i)=fRI11O2(i)-1; fIC3H7O2(i)=fIC3H7O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RI14O2 = CH3CO3 + CH3COCH3 + NO2';
k(:,i) = KRO2NO3.*0.52;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RI14O2'; 
fNO3(i)=fNO3(i)-1; fRI14O2(i)=fRI14O2(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RI14O2 = C2H5CO3 + CH3CHO + NO2';
k(:,i) = KRO2NO3.*0.48;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RI14O2'; 
fNO3(i)=fNO3(i)-1; fRI14O2(i)=fRI14O2(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RI17O2 = CH3COCH3 + NO2 + RN8O2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RI17O2'; 
fNO3(i)=fNO3(i)-1; fRI17O2(i)=fRI17O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; fRN8O2(i)=fRN8O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + NRN6O2 = HCHO + HCHO + NO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NRN6O2'; 
fNO3(i)=fNO3(i)-1; fNRN6O2(i)=fNRN6O2(i)-1; fHCHO(i)=fHCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + NRN9O2 = CH3CHO + HCHO + NO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NRN9O2'; 
fNO3(i)=fNO3(i)-1; fNRN9O2(i)=fNRN9O2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + NRN12O2 = CH3CHO + CH3CHO + NO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NRN12O2'; 
fNO3(i)=fNO3(i)-1; fNRN12O2(i)=fNRN12O2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + NRN15O2 = C2H5CHO + CH3CHO + NO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NRN15O2'; 
fNO3(i)=fNO3(i)-1; fNRN15O2(i)=fNRN15O2(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + NRN18O2 = C2H5CHO + C2H5CHO + NO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NRN18O2'; 
fNO3(i)=fNO3(i)-1; fNRN18O2(i)=fNRN18O2(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fC2H5CHO(i)=fC2H5CHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + NRI12O2 = CH3COCH3 + HCHO + NO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NRI12O2'; 
fNO3(i)=fNO3(i)-1; fNRI12O2(i)=fNRI12O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + NRI15O2 = CH3CHO + CH3COCH3 + NO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NRI15O2'; 
fNO3(i)=fNO3(i)-1; fNRI15O2(i)=fNRI15O2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + NRU14O2 = HO2 + NO2 + NUCARB12';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NRU14O2'; 
fNO3(i)=fNO3(i)-1; fNRU14O2(i)=fNRU14O2(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fNUCARB12(i)=fNUCARB12(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + NRU12O2 = CO + HO2 + NO2 + NOA';
k(:,i) = KRO2NO3.*0.5;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NRU12O2'; 
fNO3(i)=fNO3(i)-1; fNRU12O2(i)=fNRU12O2(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fNOA(i)=fNOA(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + NRUA20O2 = BENZAL + HCHO + NO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NRUA20O2'; 
fNO3(i)=fNO3(i)-1; fNRUA20O2(i)=fNRUA20O2(i)-1; fBENZAL(i)=fBENZAL(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RE6O2 = CH3OCHO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RE6O2'; 
fNO3(i)=fNO3(i)-1; fRE6O2(i)=fRE6O2(i)-1; fCH3OCHO(i)=fCH3OCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RE12O2 = CH3O2 + ECARB7 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RE12O2'; 
fNO3(i)=fNO3(i)-1; fRE12O2(i)=fRE12O2(i)-1; fCH3O2(i)=fCH3O2(i)+1; fECARB7(i)=fECARB7(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RE15O2 = ECARB13 + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RE15O2'; 
fNO3(i)=fNO3(i)-1; fRE15O2(i)=fRE15O2(i)-1; fECARB13(i)=fECARB13(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RE18O2 = CH3O2 + ECARB13 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RE18O2'; 
fNO3(i)=fNO3(i)-1; fRE18O2(i)=fRE18O2(i)-1; fCH3O2(i)=fCH3O2(i)+1; fECARB13(i)=fECARB13(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RTN28O2 = HO2 + NO2 + TNCARB26';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RTN28O2'; 
fNO3(i)=fNO3(i)-1; fRTN28O2(i)=fRTN28O2(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fTNCARB26(i)=fTNCARB26(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + NRTN28O2 = NO2 + NO2 + TNCARB26';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NRTN28O2'; 
fNO3(i)=fNO3(i)-1; fNRTN28O2(i)=fNRTN28O2(i)-1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; fTNCARB26(i)=fTNCARB26(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RTN26O2 = NO2 + RTN25O2';
k(:,i) = KRO2NO3.*1.60;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RTN26O2'; 
fNO3(i)=fNO3(i)-1; fRTN26O2(i)=fRTN26O2(i)-1; fNO2(i)=fNO2(i)+1; fRTN25O2(i)=fRTN25O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RTN25O2 = NO2 + RTN24O2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RTN25O2'; 
fNO3(i)=fNO3(i)-1; fRTN25O2(i)=fRTN25O2(i)-1; fNO2(i)=fNO2(i)+1; fRTN24O2(i)=fRTN24O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RTN24O2 = NO2 + RTN23O2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RTN24O2'; 
fNO3(i)=fNO3(i)-1; fRTN24O2(i)=fRTN24O2(i)-1; fNO2(i)=fNO2(i)+1; fRTN23O2(i)=fRTN23O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RTN23O2 = CH3COCH3 + NO2 + RTN14O2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RTN23O2'; 
fNO3(i)=fNO3(i)-1; fRTN23O2(i)=fRTN23O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; fRTN14O2(i)=fRTN14O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RTN14O2 = HCHO + HO2 + NO2 + TNCARB10';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RTN14O2'; 
fNO3(i)=fNO3(i)-1; fRTN14O2(i)=fRTN14O2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fTNCARB10(i)=fTNCARB10(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RTN10O2 = CO + NO2 + RN8O2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RTN10O2'; 
fNO3(i)=fNO3(i)-1; fRTN10O2(i)=fRTN10O2(i)-1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; fRN8O2(i)=fRN8O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RTX28O2 = HCHO + HO2 + NO2 + TXCARB24';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RTX28O2'; 
fNO3(i)=fNO3(i)-1; fRTX28O2(i)=fRTX28O2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fTXCARB24(i)=fTXCARB24(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RTX24O2 = HO2 + NO2 + TXCARB22';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RTX24O2'; 
fNO3(i)=fNO3(i)-1; fRTX24O2(i)=fRTX24O2(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fTXCARB22(i)=fTXCARB22(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RTX22O2 = CH3COCH3 + NO2 + RN13O2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RTX22O2'; 
fNO3(i)=fNO3(i)-1; fRTX22O2(i)=fRTX22O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; fRN13O2(i)=fRN13O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + NRTX28O2 = HCHO + NO2 + NO2 + TXCARB24';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NRTX28O2'; 
fNO3(i)=fNO3(i)-1; fNRTX28O2(i)=fNRTX28O2(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; fTXCARB24(i)=fTXCARB24(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + HO2 = CH3OOH';
k(:,i) = 3.8e-13.*exp(780./T);
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'HO2'; 
fCH3O2(i)=fCH3O2(i)-1; fHO2(i)=fHO2(i)-1; fCH3OOH(i)=fCH3OOH(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O2 + HO2 = C2H5OOH';
k(:,i) = 4.3e-13.*exp(870./T);
Gstr{i,1} = 'C2H5O2'; Gstr{i,2} = 'HO2'; 
fC2H5O2(i)=fC2H5O2(i)-1; fHO2(i)=fHO2(i)-1; fC2H5OOH(i)=fC2H5OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN10O2 = RN10OOH';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN10O2'; 
fHO2(i)=fHO2(i)-1; fRN10O2(i)=fRN10O2(i)-1; fRN10OOH(i)=fRN10OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + IC3H7O2 = IC3H7OOH';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'IC3H7O2'; 
fHO2(i)=fHO2(i)-1; fIC3H7O2(i)=fIC3H7O2(i)-1; fIC3H7OOH(i)=fIC3H7OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN13O2 = RN13OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN13O2'; 
fHO2(i)=fHO2(i)-1; fRN13O2(i)=fRN13O2(i)-1; fRN13OOH(i)=fRN13OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN16O2 = RN16OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN16O2'; 
fHO2(i)=fHO2(i)-1; fRN16O2(i)=fRN16O2(i)-1; fRN16OOH(i)=fRN16OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN19O2 = RN19OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN19O2'; 
fHO2(i)=fHO2(i)-1; fRN19O2(i)=fRN19O2(i)-1; fRN19OOH(i)=fRN19OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN22O2 = RN22OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN22O2'; 
fHO2(i)=fHO2(i)-1; fRN22O2(i)=fRN22O2(i)-1; fRN22OOH(i)=fRN22OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN25O2 = RN25OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN25O2'; 
fHO2(i)=fHO2(i)-1; fRN25O2(i)=fRN25O2(i)-1; fRN25OOH(i)=fRN25OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN28O2 = RN28OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN28O2'; 
fHO2(i)=fHO2(i)-1; fRN28O2(i)=fRN28O2(i)-1; fRN28OOH(i)=fRN28OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN31O2 = RN31OOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN31O2'; 
fHO2(i)=fHO2(i)-1; fRN31O2(i)=fRN31O2(i)-1; fRN31OOH(i)=fRN31OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN34O2 = RN34OOH';
k(:,i) = KRO2HO2.*0.932;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN34O2'; 
fHO2(i)=fHO2(i)-1; fRN34O2(i)=fRN34O2(i)-1; fRN34OOH(i)=fRN34OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN37O2 = RN37OOH';
k(:,i) = KRO2HO2.*0.947;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN37O2'; 
fHO2(i)=fHO2(i)-1; fRN37O2(i)=fRN37O2(i)-1; fRN37OOH(i)=fRN37OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RI13O2 = RI13OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RI13O2'; 
fHO2(i)=fHO2(i)-1; fRI13O2(i)=fRI13O2(i)-1; fRI13OOH(i)=fRI13OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RI16O2 = RI16OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RI16O2'; 
fHO2(i)=fHO2(i)-1; fRI16O2(i)=fRI16O2(i)-1; fRI16OOH(i)=fRI16OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RI16AO2 = RI16OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RI16AO2'; 
fHO2(i)=fHO2(i)-1; fRI16AO2(i)=fRI16AO2(i)-1; fRI16OOH(i)=fRI16OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN19BO2 = RN19OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN19BO2'; 
fHO2(i)=fHO2(i)-1; fRN19BO2(i)=fRN19BO2(i)-1; fRN19OOH(i)=fRN19OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RI19O2 = RN19OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RI19O2'; 
fHO2(i)=fHO2(i)-1; fRI19O2(i)=fRI19O2(i)-1; fRN19OOH(i)=fRN19OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN13AO2 = RN13OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN13AO2'; 
fHO2(i)=fHO2(i)-1; fRN13AO2(i)=fRN13AO2(i)-1; fRN13OOH(i)=fRN13OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN16AO2 = RN16OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN16AO2'; 
fHO2(i)=fHO2(i)-1; fRN16AO2(i)=fRN16AO2(i)-1; fRN16OOH(i)=fRN16OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN19AO2 = RN19OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN19AO2'; 
fHO2(i)=fHO2(i)-1; fRN19AO2(i)=fRN19AO2(i)-1; fRN19OOH(i)=fRN19OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN22AO2 = RN22OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN22AO2'; 
fHO2(i)=fHO2(i)-1; fRN22AO2(i)=fRN22AO2(i)-1; fRN22OOH(i)=fRN22OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN25AO2 = RN25OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN25AO2'; 
fHO2(i)=fHO2(i)-1; fRN25AO2(i)=fRN25AO2(i)-1; fRN25OOH(i)=fRN25OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN28AO2 = RN28OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN28AO2'; 
fHO2(i)=fHO2(i)-1; fRN28AO2(i)=fRN28AO2(i)-1; fRN28OOH(i)=fRN28OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN31AO2 = RN31OOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN31AO2'; 
fHO2(i)=fHO2(i)-1; fRN31AO2(i)=fRN31AO2(i)-1; fRN31OOH(i)=fRN31OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN34AO2 = RN34OOH';
k(:,i) = KRO2HO2.*0.932;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN34AO2'; 
fHO2(i)=fHO2(i)-1; fRN34AO2(i)=fRN34AO2(i)-1; fRN34OOH(i)=fRN34OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RA13O2 = RA13OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RA13O2'; 
fHO2(i)=fHO2(i)-1; fRA13O2(i)=fRA13O2(i)-1; fRA13OOH(i)=fRA13OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RA16O2 = RA16OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RA16O2'; 
fHO2(i)=fHO2(i)-1; fRA16O2(i)=fRA16O2(i)-1; fRA16OOH(i)=fRA16OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RA19AO2 = RA19OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RA19AO2'; 
fHO2(i)=fHO2(i)-1; fRA19AO2(i)=fRA19AO2(i)-1; fRA19OOH(i)=fRA19OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RA19BO2 = RA19OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RA19BO2'; 
fHO2(i)=fHO2(i)-1; fRA19BO2(i)=fRA19BO2(i)-1; fRA19OOH(i)=fRA19OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RA19CO2 = RA19OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RA19CO2'; 
fHO2(i)=fHO2(i)-1; fRA19CO2(i)=fRA19CO2(i)-1; fRA19OOH(i)=fRA19OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RA22AO2 = RA22OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RA22AO2'; 
fHO2(i)=fHO2(i)-1; fRA22AO2(i)=fRA22AO2(i)-1; fRA22OOH(i)=fRA22OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RA22BO2 = RA22OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RA22BO2'; 
fHO2(i)=fHO2(i)-1; fRA22BO2(i)=fRA22BO2(i)-1; fRA22OOH(i)=fRA22OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RA25O2 = RA25OOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RA25O2'; 
fHO2(i)=fHO2(i)-1; fRA25O2(i)=fRA25O2(i)-1; fRA25OOH(i)=fRA25OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RA28O2 = RA28OOH';
k(:,i) = KRO2HO2.*0.932;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RA28O2'; 
fHO2(i)=fHO2(i)-1; fRA28O2(i)=fRA28O2(i)-1; fRA28OOH(i)=fRA28OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RUA20O2 = RUA20OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RUA20O2'; 
fHO2(i)=fHO2(i)-1; fRUA20O2(i)=fRUA20O2(i)-1; fRUA20OOH(i)=fRUA20OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RA16BO2 = RA16BOOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RA16BO2'; 
fHO2(i)=fHO2(i)-1; fRA16BO2(i)=fRA16BO2(i)-1; fRA16BOOH(i)=fRA16BOOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HOCH2CH2O2 = HOC2H4OOH';
k(:,i) = 2.03e-13.*exp(1250./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HOCH2CH2O2'; 
fHO2(i)=fHO2(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fHOC2H4OOH(i)=fHOC2H4OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN9O2 = RN9OOH';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN9O2'; 
fHO2(i)=fHO2(i)-1; fRN9O2(i)=fRN9O2(i)-1; fRN9OOH(i)=fRN9OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN12O2 = RN12OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN12O2'; 
fHO2(i)=fHO2(i)-1; fRN12O2(i)=fRN12O2(i)-1; fRN12OOH(i)=fRN12OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN15O2 = RN15OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN15O2'; 
fHO2(i)=fHO2(i)-1; fRN15O2(i)=fRN15O2(i)-1; fRN15OOH(i)=fRN15OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN18O2 = RN18OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN18O2'; 
fHO2(i)=fHO2(i)-1; fRN18O2(i)=fRN18O2(i)-1; fRN18OOH(i)=fRN18OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN21O2 = RN21OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN21O2'; 
fHO2(i)=fHO2(i)-1; fRN21O2(i)=fRN21O2(i)-1; fRN21OOH(i)=fRN21OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN24O2 = RN24OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN24O2'; 
fHO2(i)=fHO2(i)-1; fRN24O2(i)=fRN24O2(i)-1; fRN24OOH(i)=fRN24OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN27O2 = RN27OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN27O2'; 
fHO2(i)=fHO2(i)-1; fRN27O2(i)=fRN27O2(i)-1; fRN27OOH(i)=fRN27OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN30O2 = RN30OOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN30O2'; 
fHO2(i)=fHO2(i)-1; fRN30O2(i)=fRN30O2(i)-1; fRN30OOH(i)=fRN30OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN33O2 = RN33OOH';
k(:,i) = KRO2HO2.*0.932;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN33O2'; 
fHO2(i)=fHO2(i)-1; fRN33O2(i)=fRN33O2(i)-1; fRN33OOH(i)=fRN33OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN36O2 = RN36OOH';
k(:,i) = KRO2HO2.*0.947;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN36O2'; 
fHO2(i)=fHO2(i)-1; fRN36O2(i)=fRN36O2(i)-1; fRN36OOH(i)=fRN36OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RI12O2 = RI12OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RI12O2'; 
fHO2(i)=fHO2(i)-1; fRI12O2(i)=fRI12O2(i)-1; fRI12OOH(i)=fRI12OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RI15O2 = RI15OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RI15O2'; 
fHO2(i)=fHO2(i)-1; fRI15O2(i)=fRI15O2(i)-1; fRI15OOH(i)=fRI15OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN15AO2 = RN15OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN15AO2'; 
fHO2(i)=fHO2(i)-1; fRN15AO2(i)=fRN15AO2(i)-1; fRN15OOH(i)=fRN15OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN18AO2 = RN18OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN18AO2'; 
fHO2(i)=fHO2(i)-1; fRN18AO2(i)=fRN18AO2(i)-1; fRN18OOH(i)=fRN18OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN21AO2 = RN21OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN21AO2'; 
fHO2(i)=fHO2(i)-1; fRN21AO2(i)=fRN21AO2(i)-1; fRN21OOH(i)=fRN21OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN24AO2 = RN24OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN24AO2'; 
fHO2(i)=fHO2(i)-1; fRN24AO2(i)=fRN24AO2(i)-1; fRN24OOH(i)=fRN24OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN27AO2 = RN27OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN27AO2'; 
fHO2(i)=fHO2(i)-1; fRN27AO2(i)=fRN27AO2(i)-1; fRN27OOH(i)=fRN27OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN30AO2 = RN30OOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN30AO2'; 
fHO2(i)=fHO2(i)-1; fRN30AO2(i)=fRN30AO2(i)-1; fRN30OOH(i)=fRN30OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN33AO2 = RN33OOH';
k(:,i) = KRO2HO2.*0.932;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN33AO2'; 
fHO2(i)=fHO2(i)-1; fRN33AO2(i)=fRN33AO2(i)-1; fRN33OOH(i)=fRN33OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN36AO2 = RN36OOH';
k(:,i) = KRO2HO2.*0.947;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN36AO2'; 
fHO2(i)=fHO2(i)-1; fRN36AO2(i)=fRN36AO2(i)-1; fRN36OOH(i)=fRN36OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RC18O2 = RC18OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RC18O2'; 
fHO2(i)=fHO2(i)-1; fRC18O2(i)=fRC18O2(i)-1; fRC18OOH(i)=fRC18OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RC16O2 = RN16OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RC16O2'; 
fHO2(i)=fHO2(i)-1; fRC16O2(i)=fRC16O2(i)-1; fRN16OOH(i)=fRN16OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RC14O2 = RN14OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RC14O2'; 
fHO2(i)=fHO2(i)-1; fRC14O2(i)=fRC14O2(i)-1; fRN14OOH(i)=fRN14OOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + HO2 = CH3CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'HO2'; 
fCH3CO3(i)=fCH3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3CO3H(i)=fCH3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3 + HO2 = C2H5CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'HO2'; 
fC2H5CO3(i)=fC2H5CO3(i)-1; fHO2(i)=fHO2(i)-1; fC2H5CO3H(i)=fC2H5CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HOCH2CO3 = HOCH2CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HOCH2CO3'; 
fHO2(i)=fHO2(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)-1; fHOCH2CO3H(i)=fHOCH2CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN8O2 = RN8OOH';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN8O2'; 
fHO2(i)=fHO2(i)-1; fRN8O2(i)=fRN8O2(i)-1; fRN8OOH(i)=fRN8OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN11O2 = RN11OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN11O2'; 
fHO2(i)=fHO2(i)-1; fRN11O2(i)=fRN11O2(i)-1; fRN11OOH(i)=fRN11OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN14O2 = RN14OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN14O2'; 
fHO2(i)=fHO2(i)-1; fRN14O2(i)=fRN14O2(i)-1; fRN14OOH(i)=fRN14OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN17O2 = RN17OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN17O2'; 
fHO2(i)=fHO2(i)-1; fRN17O2(i)=fRN17O2(i)-1; fRN17OOH(i)=fRN17OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN20O2 = RN20OOH';
k(:,i) = KRO2HO2.*0.820;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN20O2'; 
fHO2(i)=fHO2(i)-1; fRN20O2(i)=fRN20O2(i)-1; fRN20OOH(i)=fRN20OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN23O2 = RN23OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN23O2'; 
fHO2(i)=fHO2(i)-1; fRN23O2(i)=fRN23O2(i)-1; fRN23OOH(i)=fRN23OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN26O2 = RN26OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN26O2'; 
fHO2(i)=fHO2(i)-1; fRN26O2(i)=fRN26O2(i)-1; fRN26OOH(i)=fRN26OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN29O2 = RN29OOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN29O2'; 
fHO2(i)=fHO2(i)-1; fRN29O2(i)=fRN29O2(i)-1; fRN29OOH(i)=fRN29OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN32O2 = RN32OOH';
k(:,i) = KRO2HO2.*0.932;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN32O2'; 
fHO2(i)=fHO2(i)-1; fRN32O2(i)=fRN32O2(i)-1; fRN32OOH(i)=fRN32OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RN35O2 = RN35OOH';
k(:,i) = KRO2HO2.*0.947;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RN35O2'; 
fHO2(i)=fHO2(i)-1; fRN35O2(i)=fRN35O2(i)-1; fRN35OOH(i)=fRN35OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RU11O2 = RU11OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RU11O2'; 
fHO2(i)=fHO2(i)-1; fRU11O2(i)=fRU11O2(i)-1; fRU11OOH(i)=fRU11OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RU14O2 = RU14OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RU14O2'; 
fHO2(i)=fHO2(i)-1; fRU14O2(i)=fRU14O2(i)-1; fRU14OOH(i)=fRU14OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RU12O2 = RU12OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RU12O2'; 
fHO2(i)=fHO2(i)-1; fRU12O2(i)=fRU12O2(i)-1; fRU12OOH(i)=fRU12OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RU10O2 = RU10OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RU10O2'; 
fHO2(i)=fHO2(i)-1; fRU10O2(i)=fRU10O2(i)-1; fRU10OOH(i)=fRU10OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RI11O2 = RI11OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RI11O2'; 
fHO2(i)=fHO2(i)-1; fRI11O2(i)=fRI11O2(i)-1; fRI11OOH(i)=fRI11OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RI14O2 = RI14OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RI14O2'; 
fHO2(i)=fHO2(i)-1; fRI14O2(i)=fRI14O2(i)-1; fRI14OOH(i)=fRI14OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RI17O2 = RI17OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RI17O2'; 
fHO2(i)=fHO2(i)-1; fRI17O2(i)=fRI17O2(i)-1; fRI17OOH(i)=fRI17OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NRN6O2 = NRN6OOH';
k(:,i) = KRO2HO2.*0.387;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NRN6O2'; 
fHO2(i)=fHO2(i)-1; fNRN6O2(i)=fNRN6O2(i)-1; fNRN6OOH(i)=fNRN6OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NRN9O2 = NRN9OOH';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NRN9O2'; 
fHO2(i)=fHO2(i)-1; fNRN9O2(i)=fNRN9O2(i)-1; fNRN9OOH(i)=fNRN9OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NRN12O2 = NRN12OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NRN12O2'; 
fHO2(i)=fHO2(i)-1; fNRN12O2(i)=fNRN12O2(i)-1; fNRN12OOH(i)=fNRN12OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NRN15O2 = NRN15OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NRN15O2'; 
fHO2(i)=fHO2(i)-1; fNRN15O2(i)=fNRN15O2(i)-1; fNRN15OOH(i)=fNRN15OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NRN18O2 = NRN18OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NRN18O2'; 
fHO2(i)=fHO2(i)-1; fNRN18O2(i)=fNRN18O2(i)-1; fNRN18OOH(i)=fNRN18OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NRI12O2 = NRI12OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NRI12O2'; 
fHO2(i)=fHO2(i)-1; fNRI12O2(i)=fNRI12O2(i)-1; fNRI12OOH(i)=fNRI12OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NRI15O2 = NRI15OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NRI15O2'; 
fHO2(i)=fHO2(i)-1; fNRI15O2(i)=fNRI15O2(i)-1; fNRI15OOH(i)=fNRI15OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NRU14O2 = NRU14OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NRU14O2'; 
fHO2(i)=fHO2(i)-1; fNRU14O2(i)=fNRU14O2(i)-1; fNRU14OOH(i)=fNRU14OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NRU12O2 = NRU12OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NRU12O2'; 
fHO2(i)=fHO2(i)-1; fNRU12O2(i)=fNRU12O2(i)-1; fNRU12OOH(i)=fNRU12OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NRUA20O2 = NRUA20OOH';
k(:,i) = KRO2HO2.*0.859;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NRUA20O2'; 
fHO2(i)=fHO2(i)-1; fNRUA20O2(i)=fNRUA20O2(i)-1; fNRUA20OOH(i)=fNRUA20OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RE6O2 = CH3OCHO';
k(:,i) = KRO2HO2.*0.387;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RE6O2'; 
fHO2(i)=fHO2(i)-1; fRE6O2(i)=fRE6O2(i)-1; fCH3OCHO(i)=fCH3OCHO(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RE12O2 = ETHACET';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RE12O2'; 
fHO2(i)=fHO2(i)-1; fRE12O2(i)=fRE12O2(i)-1; fETHACET(i)=fETHACET(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RE15O2 = ECARB13';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RE15O2'; 
fHO2(i)=fHO2(i)-1; fRE15O2(i)=fRE15O2(i)-1; fECARB13(i)=fECARB13(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RE18O2 = TBUACET';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RE18O2'; 
fHO2(i)=fHO2(i)-1; fRE18O2(i)=fRE18O2(i)-1; fTBUACET(i)=fTBUACET(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RTN28O2 = RTN28OOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RTN28O2'; 
fHO2(i)=fHO2(i)-1; fRTN28O2(i)=fRTN28O2(i)-1; fRTN28OOH(i)=fRTN28OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NRTN28O2 = NRTN28OOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NRTN28O2'; 
fHO2(i)=fHO2(i)-1; fNRTN28O2(i)=fNRTN28O2(i)-1; fNRTN28OOH(i)=fNRTN28OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RTN26O2 = RTN26OOH';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RTN26O2'; 
fHO2(i)=fHO2(i)-1; fRTN26O2(i)=fRTN26O2(i)-1; fRTN26OOH(i)=fRTN26OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RTN25O2 = RTN25OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RTN25O2'; 
fHO2(i)=fHO2(i)-1; fRTN25O2(i)=fRTN25O2(i)-1; fRTN25OOH(i)=fRTN25OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RTN24O2 = RTN24OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RTN24O2'; 
fHO2(i)=fHO2(i)-1; fRTN24O2(i)=fRTN24O2(i)-1; fRTN24OOH(i)=fRTN24OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RTN23O2 = RTN23OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RTN23O2'; 
fHO2(i)=fHO2(i)-1; fRTN23O2(i)=fRTN23O2(i)-1; fRTN23OOH(i)=fRTN23OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RTN14O2 = RTN14OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RTN14O2'; 
fHO2(i)=fHO2(i)-1; fRTN14O2(i)=fRTN14O2(i)-1; fRTN14OOH(i)=fRTN14OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RTN10O2 = RTN10OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RTN10O2'; 
fHO2(i)=fHO2(i)-1; fRTN10O2(i)=fRTN10O2(i)-1; fRTN10OOH(i)=fRTN10OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RTX28O2 = RTX28OOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RTX28O2'; 
fHO2(i)=fHO2(i)-1; fRTX28O2(i)=fRTX28O2(i)-1; fRTX28OOH(i)=fRTX28OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RTX24O2 = RTX24OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RTX24O2'; 
fHO2(i)=fHO2(i)-1; fRTX24O2(i)=fRTX24O2(i)-1; fRTX24OOH(i)=fRTX24OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RTX22O2 = RTX22OOH';
k(:,i) = KRO2HO2.*0.890;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RTX22O2'; 
fHO2(i)=fHO2(i)-1; fRTX22O2(i)=fRTX22O2(i)-1; fRTX22OOH(i)=fRTX22OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NRTX28O2 = NRTX28OOH';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NRTX28O2'; 
fHO2(i)=fHO2(i)-1; fNRTX28O2(i)=fNRTX28O2(i)-1; fNRTX28OOH(i)=fNRTX28OOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + RO2 = HCHO + HO2';
k(:,i) = 2.*KCH3O2.*7.18.*exp(-885./T);
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'RO2';
fCH3O2(i)=fCH3O2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + RO2 = HCHO';
k(:,i) = 2.*KCH3O2.*0.5.*(1-7.18.*exp(-885./T));
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'RO2';
fCH3O2(i)=fCH3O2(i)-1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + RO2 = CH3OH';
k(:,i) = 2.*KCH3O2.*0.5.*(1-7.18.*exp(-885./T));
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'RO2';
fCH3O2(i)=fCH3O2(i)-1; fCH3OH(i)=fCH3OH(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O2 + RO2 = CH3CHO + HO2';
k(:,i) = 3.10e-13.*0.6;
Gstr{i,1} = 'C2H5O2'; Gstr{i,2} = 'RO2';
fC2H5O2(i)=fC2H5O2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O2 + RO2 = CH3CHO';
k(:,i) = 3.10e-13.*0.2;
Gstr{i,1} = 'C2H5O2'; Gstr{i,2} = 'RO2';
fC2H5O2(i)=fC2H5O2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O2 + RO2 = C2H5OH';
k(:,i) = 3.10e-13.*0.2;
Gstr{i,1} = 'C2H5O2'; Gstr{i,2} = 'RO2';
fC2H5O2(i)=fC2H5O2(i)-1; fC2H5OH(i)=fC2H5OH(i)+1; 

i=i+1;
Rnames{i} = 'RN10O2 + RO2 = C2H5CHO + HO2';
k(:,i) = 6.00e-13.*0.6;
Gstr{i,1} = 'RN10O2'; Gstr{i,2} = 'RO2';
fRN10O2(i)=fRN10O2(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RN10O2 + RO2 = C2H5CHO';
k(:,i) = 6.00e-13.*0.2;
Gstr{i,1} = 'RN10O2'; Gstr{i,2} = 'RO2';
fRN10O2(i)=fRN10O2(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; 

i=i+1;
Rnames{i} = 'RN10O2 + RO2 = NPROPOL';
k(:,i) = 6.00e-13.*0.2;
Gstr{i,1} = 'RN10O2'; Gstr{i,2} = 'RO2';
fRN10O2(i)=fRN10O2(i)-1; fNPROPOL(i)=fNPROPOL(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7O2 + RO2 = CH3COCH3 + HO2';
k(:,i) = 4.00e-14.*0.6;
Gstr{i,1} = 'IC3H7O2'; Gstr{i,2} = 'RO2';
fIC3H7O2(i)=fIC3H7O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7O2 + RO2 = CH3COCH3';
k(:,i) = 4.00e-14.*0.2;
Gstr{i,1} = 'IC3H7O2'; Gstr{i,2} = 'RO2';
fIC3H7O2(i)=fIC3H7O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7O2 + RO2 = IPROPOL';
k(:,i) = 4.00e-14.*0.2;
Gstr{i,1} = 'IC3H7O2'; Gstr{i,2} = 'RO2';
fIC3H7O2(i)=fIC3H7O2(i)-1; fIPROPOL(i)=fIPROPOL(i)+1; 

i=i+1;
Rnames{i} = 'RN13O2 + RO2 = C2H5O2 + CH3CHO';
k(:,i) = 2.50e-13.*0.398;
Gstr{i,1} = 'RN13O2'; Gstr{i,2} = 'RO2';
fRN13O2(i)=fRN13O2(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; 

i=i+1;
Rnames{i} = 'RN13O2 + RO2 = CARB11A + HO2';
k(:,i) = 2.50e-13.*0.602;
Gstr{i,1} = 'RN13O2'; Gstr{i,2} = 'RO2';
fRN13O2(i)=fRN13O2(i)-1; fCARB11A(i)=fCARB11A(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RN13AO2 + RO2 = RN12O2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RN13AO2'; Gstr{i,2} = 'RO2';
fRN13AO2(i)=fRN13AO2(i)-1; fRN12O2(i)=fRN12O2(i)+1; 

i=i+1;
Rnames{i} = 'RN16AO2 + RO2 = RN15O2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RN16AO2'; Gstr{i,2} = 'RO2';
fRN16AO2(i)=fRN16AO2(i)-1; fRN15O2(i)=fRN15O2(i)+1; 

i=i+1;
Rnames{i} = 'RN19AO2 + RO2 = RN18O2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RN19AO2'; Gstr{i,2} = 'RO2';
fRN19AO2(i)=fRN19AO2(i)-1; fRN18O2(i)=fRN18O2(i)+1; 

i=i+1;
Rnames{i} = 'RN22AO2 + RO2 = RN21O2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RN22AO2'; Gstr{i,2} = 'RO2';
fRN22AO2(i)=fRN22AO2(i)-1; fRN21O2(i)=fRN21O2(i)+1; 

i=i+1;
Rnames{i} = 'RN25AO2 + RO2 = RN24O2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RN25AO2'; Gstr{i,2} = 'RO2';
fRN25AO2(i)=fRN25AO2(i)-1; fRN24O2(i)=fRN24O2(i)+1; 

i=i+1;
Rnames{i} = 'RN28AO2 + RO2 = RN27O2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RN28AO2'; Gstr{i,2} = 'RO2';
fRN28AO2(i)=fRN28AO2(i)-1; fRN27O2(i)=fRN27O2(i)+1; 

i=i+1;
Rnames{i} = 'RN31AO2 + RO2 = RN30O2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RN31AO2'; Gstr{i,2} = 'RO2';
fRN31AO2(i)=fRN31AO2(i)-1; fRN30O2(i)=fRN30O2(i)+1; 

i=i+1;
Rnames{i} = 'RN34AO2 + RO2 = RN33O2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RN34AO2'; Gstr{i,2} = 'RO2';
fRN34AO2(i)=fRN34AO2(i)-1; fRN33O2(i)=fRN33O2(i)+1; 

i=i+1;
Rnames{i} = 'RA13O2 + RO2 = CARB3 + HO2 + UDCARB8';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RA13O2'; Gstr{i,2} = 'RO2';
fRA13O2(i)=fRA13O2(i)-1; fCARB3(i)=fCARB3(i)+1; fHO2(i)=fHO2(i)+1; fUDCARB8(i)=fUDCARB8(i)+1; 

i=i+1;
Rnames{i} = 'RA16O2 + RO2 = CARB3 + HO2 + UDCARB11';
k(:,i) = 8.80e-13.*0.7;
Gstr{i,1} = 'RA16O2'; Gstr{i,2} = 'RO2';
fRA16O2(i)=fRA16O2(i)-1; fCARB3(i)=fCARB3(i)+1; fHO2(i)=fHO2(i)+1; fUDCARB11(i)=fUDCARB11(i)+1; 

i=i+1;
Rnames{i} = 'RA16O2 + RO2 = CARB6 + HO2 + UDCARB8';
k(:,i) = 8.80e-13.*0.3;
Gstr{i,1} = 'RA16O2'; Gstr{i,2} = 'RO2';
fRA16O2(i)=fRA16O2(i)-1; fCARB6(i)=fCARB6(i)+1; fHO2(i)=fHO2(i)+1; fUDCARB8(i)=fUDCARB8(i)+1; 

i=i+1;
Rnames{i} = 'RA19AO2 + RO2 = CARB3 + HO2 + UDCARB14';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RA19AO2'; Gstr{i,2} = 'RO2';
fRA19AO2(i)=fRA19AO2(i)-1; fCARB3(i)=fCARB3(i)+1; fHO2(i)=fHO2(i)+1; fUDCARB14(i)=fUDCARB14(i)+1; 

i=i+1;
Rnames{i} = 'RA19BO2 + RO2 = CARB3 + HO2 + UDCARB14';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RA19BO2'; Gstr{i,2} = 'RO2';
fRA19BO2(i)=fRA19BO2(i)-1; fCARB3(i)=fCARB3(i)+1; fHO2(i)=fHO2(i)+1; fUDCARB14(i)=fUDCARB14(i)+1; 

i=i+1;
Rnames{i} = 'RA19CO2 + RO2 = CARB3 + HO2 + UDCARB14';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RA19CO2'; Gstr{i,2} = 'RO2';
fRA19CO2(i)=fRA19CO2(i)-1; fCARB3(i)=fCARB3(i)+1; fHO2(i)=fHO2(i)+1; fUDCARB14(i)=fUDCARB14(i)+1; 

i=i+1;
Rnames{i} = 'RA22AO2 + RO2 = CARB6 + HO2 + UDCARB14';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RA22AO2'; Gstr{i,2} = 'RO2';
fRA22AO2(i)=fRA22AO2(i)-1; fCARB6(i)=fCARB6(i)+1; fHO2(i)=fHO2(i)+1; fUDCARB14(i)=fUDCARB14(i)+1; 

i=i+1;
Rnames{i} = 'RA22BO2 + RO2 = CARB9 + HO2 + UDCARB11';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RA22BO2'; Gstr{i,2} = 'RO2';
fRA22BO2(i)=fRA22BO2(i)-1; fCARB9(i)=fCARB9(i)+1; fHO2(i)=fHO2(i)+1; fUDCARB11(i)=fUDCARB11(i)+1; 

i=i+1;
Rnames{i} = 'RA25O2 + RO2 = CARB6 + HO2 + UDCARB17';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RA25O2'; Gstr{i,2} = 'RO2';
fRA25O2(i)=fRA25O2(i)-1; fCARB6(i)=fCARB6(i)+1; fHO2(i)=fHO2(i)+1; fUDCARB17(i)=fUDCARB17(i)+1; 

i=i+1;
Rnames{i} = 'RA28O2 + RO2 = CARB6 + HO2 + UDCARB20';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RA28O2'; Gstr{i,2} = 'RO2';
fRA28O2(i)=fRA28O2(i)-1; fCARB6(i)=fCARB6(i)+1; fHO2(i)=fHO2(i)+1; fUDCARB20(i)=fUDCARB20(i)+1; 

i=i+1;
Rnames{i} = 'RUA20O2 + RO2 = BENZAL + HCHO + HO2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RUA20O2'; Gstr{i,2} = 'RO2';
fRUA20O2(i)=fRUA20O2(i)-1; fBENZAL(i)=fBENZAL(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RA16BO2 + RO2 = RAROH14';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RA16BO2'; Gstr{i,2} = 'RO2';
fRA16BO2(i)=fRA16BO2(i)-1; fRAROH14(i)=fRAROH14(i)+1; 

i=i+1;
Rnames{i} = 'RI13O2 + RO2 = CH3COCH3 + CH3O2';
k(:,i) = 6.70e-13;
Gstr{i,1} = 'RI13O2'; Gstr{i,2} = 'RO2';
fRI13O2(i)=fRI13O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'RI16O2 + RO2 = C2H5O2 + CH3COCH3';
k(:,i) = 6.70e-13;
Gstr{i,1} = 'RI16O2'; Gstr{i,2} = 'RO2';
fRI16O2(i)=fRI16O2(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; 

i=i+1;
Rnames{i} = 'RI16AO2 + RO2 = HCHO + RI13O2';
k(:,i) = 1.30e-12;
Gstr{i,1} = 'RI16AO2'; Gstr{i,2} = 'RO2';
fRI16AO2(i)=fRI16AO2(i)-1; fHCHO(i)=fHCHO(i)+1; fRI13O2(i)=fRI13O2(i)+1; 

i=i+1;
Rnames{i} = 'RN19BO2 + RO2 = RN18AO2';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'RN19BO2'; Gstr{i,2} = 'RO2';
fRN19BO2(i)=fRN19BO2(i)-1; fRN18AO2(i)=fRN18AO2(i)+1; 

i=i+1;
Rnames{i} = 'RI19O2 + RO2 = CH3COCH3 + IC3H7O2';
k(:,i) = 6.70e-13;
Gstr{i,1} = 'RI19O2'; Gstr{i,2} = 'RO2';
fRI19O2(i)=fRI19O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fIC3H7O2(i)=fIC3H7O2(i)+1; 

i=i+1;
Rnames{i} = 'RN16O2 + RO2 = RN15AO2';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'RN16O2'; Gstr{i,2} = 'RO2';
fRN16O2(i)=fRN16O2(i)-1; fRN15AO2(i)=fRN15AO2(i)+1; 

i=i+1;
Rnames{i} = 'RN19O2 + RO2 = RN18AO2';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'RN19O2'; Gstr{i,2} = 'RO2';
fRN19O2(i)=fRN19O2(i)-1; fRN18AO2(i)=fRN18AO2(i)+1; 

i=i+1;
Rnames{i} = 'RN22O2 + RO2 = RN21AO2';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'RN22O2'; Gstr{i,2} = 'RO2';
fRN22O2(i)=fRN22O2(i)-1; fRN21AO2(i)=fRN21AO2(i)+1; 

i=i+1;
Rnames{i} = 'RN25O2 + RO2 = RN24AO2';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'RN25O2'; Gstr{i,2} = 'RO2';
fRN25O2(i)=fRN25O2(i)-1; fRN24AO2(i)=fRN24AO2(i)+1; 

i=i+1;
Rnames{i} = 'RN28O2 + RO2 = RN27AO2';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'RN28O2'; Gstr{i,2} = 'RO2';
fRN28O2(i)=fRN28O2(i)-1; fRN27AO2(i)=fRN27AO2(i)+1; 

i=i+1;
Rnames{i} = 'RN31O2 + RO2 = RN30AO2';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'RN31O2'; Gstr{i,2} = 'RO2';
fRN31O2(i)=fRN31O2(i)-1; fRN30AO2(i)=fRN30AO2(i)+1; 

i=i+1;
Rnames{i} = 'RN34O2 + RO2 = RN33AO2';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'RN34O2'; Gstr{i,2} = 'RO2';
fRN34O2(i)=fRN34O2(i)-1; fRN33AO2(i)=fRN33AO2(i)+1; 

i=i+1;
Rnames{i} = 'RN37O2 + RO2 = RN36AO2';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'RN37O2'; Gstr{i,2} = 'RO2';
fRN37O2(i)=fRN37O2(i)-1; fRN36AO2(i)=fRN36AO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + RO2 = HCHO + HCHO + HO2';
k(:,i) = 2.00e-12.*0.776;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'RO2';
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fHCHO(i)=fHCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + RO2 = HO2 + HOCH2CHO';
k(:,i) = 2.00e-12.*0.224;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'RO2';
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fHO2(i)=fHO2(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'RN9O2 + RO2 = CH3CHO + HCHO + HO2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RN9O2'; Gstr{i,2} = 'RO2';
fRN9O2(i)=fRN9O2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RN12O2 + RO2 = CH3CHO + CH3CHO + HO2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RN12O2'; Gstr{i,2} = 'RO2';
fRN12O2(i)=fRN12O2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RN15O2 + RO2 = C2H5CHO + CH3CHO + HO2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RN15O2'; Gstr{i,2} = 'RO2';
fRN15O2(i)=fRN15O2(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RN18O2 + RO2 = C2H5CHO + C2H5CHO + HO2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RN18O2'; Gstr{i,2} = 'RO2';
fRN18O2(i)=fRN18O2(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RN21O2 + RO2 = C2H5CHO + CARB11 + HO2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RN21O2'; Gstr{i,2} = 'RO2';
fRN21O2(i)=fRN21O2(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fCARB11(i)=fCARB11(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RN24O2 + RO2 = CARB11 + CARB11 + HO2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RN24O2'; Gstr{i,2} = 'RO2';
fRN24O2(i)=fRN24O2(i)-1; fCARB11(i)=fCARB11(i)+1; fCARB11(i)=fCARB11(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RN27O2 + RO2 = CARB11 + CARB14 + HO2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RN27O2'; Gstr{i,2} = 'RO2';
fRN27O2(i)=fRN27O2(i)-1; fCARB11(i)=fCARB11(i)+1; fCARB14(i)=fCARB14(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RN30O2 + RO2 = CARB14 + CARB14 + HO2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RN30O2'; Gstr{i,2} = 'RO2';
fRN30O2(i)=fRN30O2(i)-1; fCARB14(i)=fCARB14(i)+1; fCARB14(i)=fCARB14(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RN33O2 + RO2 = CARB14 + CARB17 + HO2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RN33O2'; Gstr{i,2} = 'RO2';
fRN33O2(i)=fRN33O2(i)-1; fCARB14(i)=fCARB14(i)+1; fCARB17(i)=fCARB17(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RN36O2 + RO2 = CARB17 + CARB17 + HO2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RN36O2'; Gstr{i,2} = 'RO2';
fRN36O2(i)=fRN36O2(i)-1; fCARB17(i)=fCARB17(i)+1; fCARB17(i)=fCARB17(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RI12O2 + RO2 = CH3COCH3 + HCHO + HO2';
k(:,i) = 6.70e-13;
Gstr{i,1} = 'RI12O2'; Gstr{i,2} = 'RO2';
fRI12O2(i)=fRI12O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RI15O2 + RO2 = CH3CHO + CH3COCH3 + HO2';
k(:,i) = 6.70e-13;
Gstr{i,1} = 'RI15O2'; Gstr{i,2} = 'RO2';
fRI15O2(i)=fRI15O2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RN15AO2 + RO2 = CARB13 + HO2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RN15AO2'; Gstr{i,2} = 'RO2';
fRN15AO2(i)=fRN15AO2(i)-1; fCARB13(i)=fCARB13(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RN18AO2 + RO2 = CARB16 + HO2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RN18AO2'; Gstr{i,2} = 'RO2';
fRN18AO2(i)=fRN18AO2(i)-1; fCARB16(i)=fCARB16(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RN21AO2 + RO2 = CARB19 + HO2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RN21AO2'; Gstr{i,2} = 'RO2';
fRN21AO2(i)=fRN21AO2(i)-1; fCARB19(i)=fCARB19(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RN24AO2 + RO2 = CARB22 + HO2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RN24AO2'; Gstr{i,2} = 'RO2';
fRN24AO2(i)=fRN24AO2(i)-1; fCARB22(i)=fCARB22(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RN27AO2 + RO2 = CARB25 + HO2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RN27AO2'; Gstr{i,2} = 'RO2';
fRN27AO2(i)=fRN27AO2(i)-1; fCARB25(i)=fCARB25(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RN30AO2 + RO2 = CARB28 + HO2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RN30AO2'; Gstr{i,2} = 'RO2';
fRN30AO2(i)=fRN30AO2(i)-1; fCARB28(i)=fCARB28(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RN33AO2 + RO2 = CARB31 + HO2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RN33AO2'; Gstr{i,2} = 'RO2';
fRN33AO2(i)=fRN33AO2(i)-1; fCARB31(i)=fCARB31(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RN36AO2 + RO2 = CARB34 + HO2';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RN36AO2'; Gstr{i,2} = 'RO2';
fRN36AO2(i)=fRN36AO2(i)-1; fCARB34(i)=fCARB34(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RC18O2 + RO2 = CYHEXONE + HO2';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'RC18O2'; Gstr{i,2} = 'RO2';
fRC18O2(i)=fRC18O2(i)-1; fCYHEXONE(i)=fCYHEXONE(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RC16O2 + RO2 = CCARB14 + HO2';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'RC16O2'; Gstr{i,2} = 'RO2';
fRC16O2(i)=fRC16O2(i)-1; fCCARB14(i)=fCCARB14(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RC14O2 + RO2 = CCARB12 + HO2';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'RC14O2'; Gstr{i,2} = 'RO2';
fRC14O2(i)=fRC14O2(i)-1; fCCARB12(i)=fCCARB12(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + RO2 = CH3O2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'RO2';
fCH3CO3(i)=fCH3CO3(i)-1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3 + RO2 = C2H5O2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'RO2';
fC2H5CO3(i)=fC2H5CO3(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + RO2 = HCHO + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'RO2';
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RN8O2 + RO2 = CH3CO3 + HCHO';
k(:,i) = 1.40e-12;
Gstr{i,1} = 'RN8O2'; Gstr{i,2} = 'RO2';
fRN8O2(i)=fRN8O2(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'RN11O2 + RO2 = CH3CHO + CH3CO3';
k(:,i) = 1.40e-12;
Gstr{i,1} = 'RN11O2'; Gstr{i,2} = 'RO2';
fRN11O2(i)=fRN11O2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'RN14O2 + RO2 = C2H5CO3 + CH3CHO';
k(:,i) = 1.40e-12;
Gstr{i,1} = 'RN14O2'; Gstr{i,2} = 'RO2';
fRN14O2(i)=fRN14O2(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; 

i=i+1;
Rnames{i} = 'RN17O2 + RO2 = RN16AO2';
k(:,i) = 1.40e-12;
Gstr{i,1} = 'RN17O2'; Gstr{i,2} = 'RO2';
fRN17O2(i)=fRN17O2(i)-1; fRN16AO2(i)=fRN16AO2(i)+1; 

i=i+1;
Rnames{i} = 'RN20O2 + RO2 = RN19O2';
k(:,i) = 1.40e-12;
Gstr{i,1} = 'RN20O2'; Gstr{i,2} = 'RO2';
fRN20O2(i)=fRN20O2(i)-1; fRN19O2(i)=fRN19O2(i)+1; 

i=i+1;
Rnames{i} = 'RN23O2 + RO2 = RN22O2';
k(:,i) = 1.40e-12;
Gstr{i,1} = 'RN23O2'; Gstr{i,2} = 'RO2';
fRN23O2(i)=fRN23O2(i)-1; fRN22O2(i)=fRN22O2(i)+1; 

i=i+1;
Rnames{i} = 'RN26O2 + RO2 = RN25O2';
k(:,i) = 1.40e-12;
Gstr{i,1} = 'RN26O2'; Gstr{i,2} = 'RO2';
fRN26O2(i)=fRN26O2(i)-1; fRN25O2(i)=fRN25O2(i)+1; 

i=i+1;
Rnames{i} = 'RN29O2 + RO2 = RN28O2';
k(:,i) = 1.40e-12;
Gstr{i,1} = 'RN29O2'; Gstr{i,2} = 'RO2';
fRN29O2(i)=fRN29O2(i)-1; fRN28O2(i)=fRN28O2(i)+1; 

i=i+1;
Rnames{i} = 'RN32O2 + RO2 = RN31O2';
k(:,i) = 1.40e-12;
Gstr{i,1} = 'RN32O2'; Gstr{i,2} = 'RO2';
fRN32O2(i)=fRN32O2(i)-1; fRN31O2(i)=fRN31O2(i)+1; 

i=i+1;
Rnames{i} = 'RN35O2 + RO2 = RN34O2';
k(:,i) = 1.40e-12;
Gstr{i,1} = 'RN35O2'; Gstr{i,2} = 'RO2';
fRN35O2(i)=fRN35O2(i)-1; fRN34O2(i)=fRN34O2(i)+1; 

i=i+1;
Rnames{i} = 'RU11O2 + RO2 = CH3CHO + HCHO + HO2';
k(:,i) = 2.73e-12;
Gstr{i,1} = 'RU11O2'; Gstr{i,2} = 'RO2';
fRU11O2(i)=fRU11O2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RU14O2 + RO2 = HO2 + UCARB12';
k(:,i) = 1.26e-12.*0.1;
Gstr{i,1} = 'RU14O2'; Gstr{i,2} = 'RO2';
fRU14O2(i)=fRU14O2(i)-1; fHO2(i)=fHO2(i)+1; fUCARB12(i)=fUCARB12(i)+1; 

i=i+1;
Rnames{i} = 'RU14O2 + RO2 = HCHO + HO2 + UCARB10';
k(:,i) = 1.26e-12.*0.9;
Gstr{i,1} = 'RU14O2'; Gstr{i,2} = 'RO2';
fRU14O2(i)=fRU14O2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fUCARB10(i)=fUCARB10(i)+1; 

i=i+1;
Rnames{i} = 'RU12O2 + RO2 = CH3CO3 + HOCH2CHO';
k(:,i) = 4.20e-13.*0.422;
Gstr{i,1} = 'RU12O2'; Gstr{i,2} = 'RO2';
fRU12O2(i)=fRU12O2(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'RU12O2 + RO2 = CARB3 + CARB7 + HO2';
k(:,i) = 4.20e-13.*0.402;
Gstr{i,1} = 'RU12O2'; Gstr{i,2} = 'RO2';
fRU12O2(i)=fRU12O2(i)-1; fCARB3(i)=fCARB3(i)+1; fCARB7(i)=fCARB7(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RU10O2 + RO2 = CH3CO3 + HOCH2CHO';
k(:,i) = 1.83e-12.*0.7;
Gstr{i,1} = 'RU10O2'; Gstr{i,2} = 'RO2';
fRU10O2(i)=fRU10O2(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'RU10O2 + RO2 = CARB6 + HCHO + HO2';
k(:,i) = 1.83e-12.*0.3;
Gstr{i,1} = 'RU10O2'; Gstr{i,2} = 'RO2';
fRU10O2(i)=fRU10O2(i)-1; fCARB6(i)=fCARB6(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RI11O2 + RO2 = IC3H7O2';
k(:,i) = 1.40e-12;
Gstr{i,1} = 'RI11O2'; Gstr{i,2} = 'RO2';
fRI11O2(i)=fRI11O2(i)-1; fIC3H7O2(i)=fIC3H7O2(i)+1; 

i=i+1;
Rnames{i} = 'RI14O2 + RO2 = CH3CO3 + CH3COCH3';
k(:,i) = 1.40e-12;
Gstr{i,1} = 'RI14O2'; Gstr{i,2} = 'RO2';
fRI14O2(i)=fRI14O2(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; 

i=i+1;
Rnames{i} = 'RI17O2 + RO2 = CH3COCH3 + RN8O2';
k(:,i) = 6.70e-15;
Gstr{i,1} = 'RI17O2'; Gstr{i,2} = 'RO2';
fRI17O2(i)=fRI17O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fRN8O2(i)=fRN8O2(i)+1; 

i=i+1;
Rnames{i} = 'NRN6O2 + RO2 = HCHO + HCHO + NO2';
k(:,i) = 6.00e-13;
Gstr{i,1} = 'NRN6O2'; Gstr{i,2} = 'RO2';
fNRN6O2(i)=fNRN6O2(i)-1; fHCHO(i)=fHCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NRN9O2 + RO2 = CH3CHO + HCHO + NO2';
k(:,i) = 2.30e-13;
Gstr{i,1} = 'NRN9O2'; Gstr{i,2} = 'RO2';
fNRN9O2(i)=fNRN9O2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NRN12O2 + RO2 = CH3CHO + CH3CHO + NO2';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'NRN12O2'; Gstr{i,2} = 'RO2';
fNRN12O2(i)=fNRN12O2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NRN15O2 + RO2 = C2H5CHO + CH3CHO + NO2';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'NRN15O2'; Gstr{i,2} = 'RO2';
fNRN15O2(i)=fNRN15O2(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NRN18O2 + RO2 = C2H5CHO + C2H5CHO + NO2';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'NRN18O2'; Gstr{i,2} = 'RO2';
fNRN18O2(i)=fNRN18O2(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fC2H5CHO(i)=fC2H5CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NRI12O2 + RO2 = CH3COCH3 + HCHO + NO2';
k(:,i) = 1.92e-14;
Gstr{i,1} = 'NRI12O2'; Gstr{i,2} = 'RO2';
fNRI12O2(i)=fNRI12O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NRI15O2 + RO2 = CH3CHO + CH3COCH3 + NO2';
k(:,i) = 1.92e-14;
Gstr{i,1} = 'NRI15O2'; Gstr{i,2} = 'RO2';
fNRI15O2(i)=fNRI15O2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NRU14O2 + RO2 = HO2 + NUCARB12';
k(:,i) = 1.30e-12;
Gstr{i,1} = 'NRU14O2'; Gstr{i,2} = 'RO2';
fNRU14O2(i)=fNRU14O2(i)-1; fHO2(i)=fHO2(i)+1; fNUCARB12(i)=fNUCARB12(i)+1; 

i=i+1;
Rnames{i} = 'NRU12O2 + RO2 = CO + HO2 + NOA';
k(:,i) = 9.60e-13.*0.5;
Gstr{i,1} = 'NRU12O2'; Gstr{i,2} = 'RO2';
fNRU12O2(i)=fNRU12O2(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNOA(i)=fNOA(i)+1; 

i=i+1;
Rnames{i} = 'NRUA20O2 + RO2 = BENZAL + HCHO + NO2';
k(:,i) = 2.30e-13;
Gstr{i,1} = 'NRUA20O2'; Gstr{i,2} = 'RO2';
fNRUA20O2(i)=fNRUA20O2(i)-1; fBENZAL(i)=fBENZAL(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'RE6O2 + RO2 = CH3OCHO + HO2';
k(:,i) = 2.00e-12;
Gstr{i,1} = 'RE6O2'; Gstr{i,2} = 'RO2';
fRE6O2(i)=fRE6O2(i)-1; fCH3OCHO(i)=fCH3OCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RE12O2 + RO2 = CH3O2 + ECARB7';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RE12O2'; Gstr{i,2} = 'RO2';
fRE12O2(i)=fRE12O2(i)-1; fCH3O2(i)=fCH3O2(i)+1; fECARB7(i)=fECARB7(i)+1; 

i=i+1;
Rnames{i} = 'RE15O2 + RO2 = ECARB13 + HO2';
k(:,i) = 2.00e-12;
Gstr{i,1} = 'RE15O2'; Gstr{i,2} = 'RO2';
fRE15O2(i)=fRE15O2(i)-1; fECARB13(i)=fECARB13(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RE18O2 + RO2 = CH3O2 + ECARB13';
k(:,i) = 2.00e-12;
Gstr{i,1} = 'RE18O2'; Gstr{i,2} = 'RO2';
fRE18O2(i)=fRE18O2(i)-1; fCH3O2(i)=fCH3O2(i)+1; fECARB13(i)=fECARB13(i)+1; 

i=i+1;
Rnames{i} = 'RTN28O2 + RO2 = HO2 + TNCARB26';
k(:,i) = 2.85e-13;
Gstr{i,1} = 'RTN28O2'; Gstr{i,2} = 'RO2';
fRTN28O2(i)=fRTN28O2(i)-1; fHO2(i)=fHO2(i)+1; fTNCARB26(i)=fTNCARB26(i)+1; 

i=i+1;
Rnames{i} = 'NRTN28O2 + RO2 = NO2 + TNCARB26';
k(:,i) = 1.00e-13;
Gstr{i,1} = 'NRTN28O2'; Gstr{i,2} = 'RO2';
fNRTN28O2(i)=fNRTN28O2(i)-1; fNO2(i)=fNO2(i)+1; fTNCARB26(i)=fTNCARB26(i)+1; 

i=i+1;
Rnames{i} = 'RTN26O2 + RO2 = RTN25O2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'RTN26O2'; Gstr{i,2} = 'RO2';
fRTN26O2(i)=fRTN26O2(i)-1; fRTN25O2(i)=fRTN25O2(i)+1; 

i=i+1;
Rnames{i} = 'RTN25O2 + RO2 = RTN24O2';
k(:,i) = 1.30e-12;
Gstr{i,1} = 'RTN25O2'; Gstr{i,2} = 'RO2';
fRTN25O2(i)=fRTN25O2(i)-1; fRTN24O2(i)=fRTN24O2(i)+1; 

i=i+1;
Rnames{i} = 'RTN24O2 + RO2 = RTN23O2';
k(:,i) = 6.70e-15;
Gstr{i,1} = 'RTN24O2'; Gstr{i,2} = 'RO2';
fRTN24O2(i)=fRTN24O2(i)-1; fRTN23O2(i)=fRTN23O2(i)+1; 

i=i+1;
Rnames{i} = 'RTN23O2 + RO2 = CH3COCH3 + RTN14O2';
k(:,i) = 6.70e-15;
Gstr{i,1} = 'RTN23O2'; Gstr{i,2} = 'RO2';
fRTN23O2(i)=fRTN23O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fRTN14O2(i)=fRTN14O2(i)+1; 

i=i+1;
Rnames{i} = 'RTN14O2 + RO2 = HCHO + HO2 + TNCARB10';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'RTN14O2'; Gstr{i,2} = 'RO2';
fRTN14O2(i)=fRTN14O2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fTNCARB10(i)=fTNCARB10(i)+1; 

i=i+1;
Rnames{i} = 'RTN10O2 + RO2 = CO + RN8O2';
k(:,i) = 2.00e-12;
Gstr{i,1} = 'RTN10O2'; Gstr{i,2} = 'RO2';
fRTN10O2(i)=fRTN10O2(i)-1; fCO(i)=fCO(i)+1; fRN8O2(i)=fRN8O2(i)+1; 

i=i+1;
Rnames{i} = 'RTX28O2 + RO2 = HCHO + HO2 + TXCARB24';
k(:,i) = 2.00e-12;
Gstr{i,1} = 'RTX28O2'; Gstr{i,2} = 'RO2';
fRTX28O2(i)=fRTX28O2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fTXCARB24(i)=fTXCARB24(i)+1; 

i=i+1;
Rnames{i} = 'RTX24O2 + RO2 = HO2 + TXCARB22';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'RTX24O2'; Gstr{i,2} = 'RO2';
fRTX24O2(i)=fRTX24O2(i)-1; fHO2(i)=fHO2(i)+1; fTXCARB22(i)=fTXCARB22(i)+1; 

i=i+1;
Rnames{i} = 'RTX22O2 + RO2 = CH3COCH3 + RN13O2';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'RTX22O2'; Gstr{i,2} = 'RO2';
fRTX22O2(i)=fRTX22O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fRN13O2(i)=fRN13O2(i)+1; 

i=i+1;
Rnames{i} = 'NRTX28O2 + RO2 = HCHO + NO2 + TXCARB24';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'NRTX28O2'; Gstr{i,2} = 'RO2';
fNRTX28O2(i)=fNRTX28O2(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fTXCARB24(i)=fTXCARB24(i)+1; 

i=i+1;
Rnames{i} = 'CARB11 + hv = C2H5O2 + CH3CO3';
k(:,i) = J22.*2.86;
Gstr{i,1} = 'CARB11'; 
fCARB11(i)=fCARB11(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CARB14 + hv = CH3CO3 + RN10O2';
k(:,i) = J22.*4.74;
Gstr{i,1} = 'CARB14'; 
fCARB14(i)=fCARB14(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fRN10O2(i)=fRN10O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB17 + hv = RN10O2 + RN8O2';
k(:,i) = J22.*1.33;
Gstr{i,1} = 'CARB17'; 
fCARB17(i)=fCARB17(i)-1; fRN10O2(i)=fRN10O2(i)+1; fRN8O2(i)=fRN8O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB20 + hv = RN13O2 + RN8O2';
k(:,i) = J22;
Gstr{i,1} = 'CARB20'; 
fCARB20(i)=fCARB20(i)-1; fRN13O2(i)=fRN13O2(i)+1; fRN8O2(i)=fRN8O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB23 + hv = RN11O2 + RN13O2';
k(:,i) = J22;
Gstr{i,1} = 'CARB23'; 
fCARB23(i)=fCARB23(i)-1; fRN11O2(i)=fRN11O2(i)+1; fRN13O2(i)=fRN13O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB26 + hv = RN11O2 + RN16O2';
k(:,i) = J22;
Gstr{i,1} = 'CARB26'; 
fCARB26(i)=fCARB26(i)-1; fRN11O2(i)=fRN11O2(i)+1; fRN16O2(i)=fRN16O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB29 + hv = RN14O2 + RN16O2';
k(:,i) = J22;
Gstr{i,1} = 'CARB29'; 
fCARB29(i)=fCARB29(i)-1; fRN14O2(i)=fRN14O2(i)+1; fRN16O2(i)=fRN16O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB32 + hv = RN14O2 + RN19O2';
k(:,i) = J22;
Gstr{i,1} = 'CARB32'; 
fCARB32(i)=fCARB32(i)-1; fRN14O2(i)=fRN14O2(i)+1; fRN19O2(i)=fRN19O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB35 + hv = RN17O2 + RN19O2';
k(:,i) = J22;
Gstr{i,1} = 'CARB35'; 
fCARB35(i)=fCARB35(i)-1; fRN17O2(i)=fRN17O2(i)+1; fRN19O2(i)=fRN19O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB11A + hv = C2H5O2 + CH3CO3';
k(:,i) = J22;
Gstr{i,1} = 'CARB11A'; 
fCARB11A(i)=fCARB11A(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CARB7 + hv = CH3CO3 + HCHO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'CARB7'; 
fCARB7(i)=fCARB7(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CARB10 + hv = CH3CHO + CH3CO3 + HO2';
k(:,i) = J22;
Gstr{i,1} = 'CARB10'; 
fCARB10(i)=fCARB10(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CARB13 + hv = CH3CHO + HO2 + RN8O2';
k(:,i) = J22.*3.00;
Gstr{i,1} = 'CARB13'; 
fCARB13(i)=fCARB13(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fRN8O2(i)=fRN8O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB16 + hv = C2H5CHO + HO2 + RN8O2';
k(:,i) = J22.*3.35;
Gstr{i,1} = 'CARB16'; 
fCARB16(i)=fCARB16(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; fRN8O2(i)=fRN8O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB19 + hv = C2H5CHO + HO2 + RN11O2';
k(:,i) = J22.*1.28;
Gstr{i,1} = 'CARB19'; 
fCARB19(i)=fCARB19(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; fRN11O2(i)=fRN11O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB22 + hv = CARB11 + HO2 + RN11O2';
k(:,i) = J22.*1.83;
Gstr{i,1} = 'CARB22'; 
fCARB22(i)=fCARB22(i)-1; fCARB11(i)=fCARB11(i)+1; fHO2(i)=fHO2(i)+1; fRN11O2(i)=fRN11O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB25 + hv = CARB11 + HO2 + RN14O2';
k(:,i) = J22.*3.36;
Gstr{i,1} = 'CARB25'; 
fCARB25(i)=fCARB25(i)-1; fCARB11(i)=fCARB11(i)+1; fHO2(i)=fHO2(i)+1; fRN14O2(i)=fRN14O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB28 + hv = CARB14 + HO2 + RN14O2';
k(:,i) = J22.*4.58;
Gstr{i,1} = 'CARB28'; 
fCARB28(i)=fCARB28(i)-1; fCARB14(i)=fCARB14(i)+1; fHO2(i)=fHO2(i)+1; fRN14O2(i)=fRN14O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB31 + hv = CARB14 + HO2 + RN17O2';
k(:,i) = J22.*4.13;
Gstr{i,1} = 'CARB31'; 
fCARB31(i)=fCARB31(i)-1; fCARB14(i)=fCARB14(i)+1; fHO2(i)=fHO2(i)+1; fRN17O2(i)=fRN17O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB34 + hv = CARB17 + HO2 + RN17O2';
k(:,i) = J22.*6.95;
Gstr{i,1} = 'CARB34'; 
fCARB34(i)=fCARB34(i)-1; fCARB17(i)=fCARB17(i)+1; fHO2(i)=fHO2(i)+1; fRN17O2(i)=fRN17O2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CHO + hv = CO + HCHO + HO2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'HOCH2CHO'; 
fHOCH2CHO(i)=fHOCH2CHO(i)-1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'UCARB10 + hv = CH3CO3 + HCHO + HO2';
k(:,i) = J18.*2;
Gstr{i,1} = 'UCARB10'; 
fUCARB10(i)=fUCARB10(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CARB3 + hv = CO + CO + HO2 + HO2';
k(:,i) = J33;
Gstr{i,1} = 'CARB3'; 
fCARB3(i)=fCARB3(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CARB6 + hv = CH3CO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'CARB6'; 
fCARB6(i)=fCARB6(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CARB9 + hv = CH3CO3 + CH3CO3';
k(:,i) = J35;
Gstr{i,1} = 'CARB9'; 
fCARB9(i)=fCARB9(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CARB12 + hv = CH3CO3 + RN8O2';
k(:,i) = J35;
Gstr{i,1} = 'CARB12'; 
fCARB12(i)=fCARB12(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fRN8O2(i)=fRN8O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB15 + hv = RN8O2 + RN8O2';
k(:,i) = J35;
Gstr{i,1} = 'CARB15'; 
fCARB15(i)=fCARB15(i)-1; fRN8O2(i)=fRN8O2(i)+1; fRN8O2(i)=fRN8O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB18 + hv = RN11O2 + RN8O2';
k(:,i) = J35;
Gstr{i,1} = 'CARB18'; 
fCARB18(i)=fCARB18(i)-1; fRN11O2(i)=fRN11O2(i)+1; fRN8O2(i)=fRN8O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB21 + hv = RN11O2 + RN11O2';
k(:,i) = J35;
Gstr{i,1} = 'CARB21'; 
fCARB21(i)=fCARB21(i)-1; fRN11O2(i)=fRN11O2(i)+1; fRN11O2(i)=fRN11O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB24 + hv = RN11O2 + RN14O2';
k(:,i) = J35;
Gstr{i,1} = 'CARB24'; 
fCARB24(i)=fCARB24(i)-1; fRN11O2(i)=fRN11O2(i)+1; fRN14O2(i)=fRN14O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB27 + hv = RN14O2 + RN14O2';
k(:,i) = J35;
Gstr{i,1} = 'CARB27'; 
fCARB27(i)=fCARB27(i)-1; fRN14O2(i)=fRN14O2(i)+1; fRN14O2(i)=fRN14O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB30 + hv = RN14O2 + RN17O2';
k(:,i) = J35;
Gstr{i,1} = 'CARB30'; 
fCARB30(i)=fCARB30(i)-1; fRN14O2(i)=fRN14O2(i)+1; fRN17O2(i)=fRN17O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB33 + hv = RN17O2 + RN17O2';
k(:,i) = J35;
Gstr{i,1} = 'CARB33'; 
fCARB33(i)=fCARB33(i)-1; fRN17O2(i)=fRN17O2(i)+1; fRN17O2(i)=fRN17O2(i)+1; 

i=i+1;
Rnames{i} = 'UCARB12 + hv = CH3CO3 + CO + HO2 + HOCH2CHO';
k(:,i) = J18.*0.5;
Gstr{i,1} = 'UCARB12'; 
fUCARB12(i)=fUCARB12(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'NUCARB12 + hv = CO + HUCARB9 + NO2 + OH';
k(:,i) = J56.*8;
Gstr{i,1} = 'NUCARB12'; 
fNUCARB12(i)=fNUCARB12(i)-1; fCO(i)=fCO(i)+1; fHUCARB9(i)=fHUCARB9(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NOA + hv = CH3CO3 + HCHO + NO2';
k(:,i) = J56;
Gstr{i,1} = 'NOA'; 
fNOA(i)=fNOA(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'UDCARB8 + hv = C2H5O2 + HO2';
k(:,i) = J4.*0.02.*0.64;
Gstr{i,1} = 'UDCARB8'; 
fUDCARB8(i)=fUDCARB8(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'UDCARB8 + hv = ANHY + HO2 + HO2';
k(:,i) = J4.*0.02.*0.36;
Gstr{i,1} = 'UDCARB8'; 
fUDCARB8(i)=fUDCARB8(i)-1; fANHY(i)=fANHY(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'UDCARB11 + hv = HO2 + RN10O2';
k(:,i) = J4.*0.02.*0.55;
Gstr{i,1} = 'UDCARB11'; 
fUDCARB11(i)=fUDCARB11(i)-1; fHO2(i)=fHO2(i)+1; fRN10O2(i)=fRN10O2(i)+1; 

i=i+1;
Rnames{i} = 'UDCARB11 + hv = ANHY + CH3O2 + HO2';
k(:,i) = J4.*0.02.*0.45;
Gstr{i,1} = 'UDCARB11'; 
fUDCARB11(i)=fUDCARB11(i)-1; fANHY(i)=fANHY(i)+1; fCH3O2(i)=fCH3O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'UDCARB14 + hv = HO2 + RN13O2';
k(:,i) = J4.*0.02.*0.55;
Gstr{i,1} = 'UDCARB14'; 
fUDCARB14(i)=fUDCARB14(i)-1; fHO2(i)=fHO2(i)+1; fRN13O2(i)=fRN13O2(i)+1; 

i=i+1;
Rnames{i} = 'UDCARB14 + hv = ANHY + C2H5O2 + HO2';
k(:,i) = J4.*0.02.*0.45;
Gstr{i,1} = 'UDCARB14'; 
fUDCARB14(i)=fUDCARB14(i)-1; fANHY(i)=fANHY(i)+1; fC2H5O2(i)=fC2H5O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'UDCARB17 + hv = HO2 + RN16O2';
k(:,i) = J4.*0.02.*0.55;
Gstr{i,1} = 'UDCARB17'; 
fUDCARB17(i)=fUDCARB17(i)-1; fHO2(i)=fHO2(i)+1; fRN16O2(i)=fRN16O2(i)+1; 

i=i+1;
Rnames{i} = 'UDCARB17 + hv = ANHY + HO2 + RN10O2';
k(:,i) = J4.*0.02.*0.45;
Gstr{i,1} = 'UDCARB17'; 
fUDCARB17(i)=fUDCARB17(i)-1; fANHY(i)=fANHY(i)+1; fHO2(i)=fHO2(i)+1; fRN10O2(i)=fRN10O2(i)+1; 

i=i+1;
Rnames{i} = 'UDCARB20 + hv = HO2 + RN19O2';
k(:,i) = J4.*0.02.*0.55;
Gstr{i,1} = 'UDCARB20'; 
fUDCARB20(i)=fUDCARB20(i)-1; fHO2(i)=fHO2(i)+1; fRN19O2(i)=fRN19O2(i)+1; 

i=i+1;
Rnames{i} = 'UDCARB20 + hv = ANHY + HO2 + RN13O2';
k(:,i) = J4.*0.02.*0.45;
Gstr{i,1} = 'UDCARB20'; 
fUDCARB20(i)=fUDCARB20(i)-1; fANHY(i)=fANHY(i)+1; fHO2(i)=fHO2(i)+1; fRN13O2(i)=fRN13O2(i)+1; 

i=i+1;
Rnames{i} = 'TNCARB26 + hv = HO2 + RTN26O2';
k(:,i) = J15;
Gstr{i,1} = 'TNCARB26'; 
fTNCARB26(i)=fTNCARB26(i)-1; fHO2(i)=fHO2(i)+1; fRTN26O2(i)=fRTN26O2(i)+1; 

i=i+1;
Rnames{i} = 'TNCARB10 + hv = CH3CO3 + CH3CO3 + CO';
k(:,i) = J35.*0.5;
Gstr{i,1} = 'TNCARB10'; 
fTNCARB10(i)=fTNCARB10(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CARB11 + OH = RN11O2';
k(:,i) = 2.06e-11;
Gstr{i,1} = 'CARB11'; Gstr{i,2} = 'OH'; 
fCARB11(i)=fCARB11(i)-1; fOH(i)=fOH(i)-1; fRN11O2(i)=fRN11O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB14 + OH = RN14O2';
k(:,i) = 1.87e-11;
Gstr{i,1} = 'CARB14'; Gstr{i,2} = 'OH'; 
fCARB14(i)=fCARB14(i)-1; fOH(i)=fOH(i)-1; fRN14O2(i)=fRN14O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB17 + OH = RN17O2';
k(:,i) = 4.36e-12;
Gstr{i,1} = 'CARB17'; Gstr{i,2} = 'OH'; 
fCARB17(i)=fCARB17(i)-1; fOH(i)=fOH(i)-1; fRN17O2(i)=fRN17O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB20 + OH = RN20O2';
k(:,i) = 7.89e-12;
Gstr{i,1} = 'CARB20'; Gstr{i,2} = 'OH'; 
fCARB20(i)=fCARB20(i)-1; fOH(i)=fOH(i)-1; fRN20O2(i)=fRN20O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB23 + OH = RN23O2';
k(:,i) = 1.13e-11;
Gstr{i,1} = 'CARB23'; Gstr{i,2} = 'OH'; 
fCARB23(i)=fCARB23(i)-1; fOH(i)=fOH(i)-1; fRN23O2(i)=fRN23O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB26 + OH = RN26O2';
k(:,i) = 1.27e-11;
Gstr{i,1} = 'CARB26'; Gstr{i,2} = 'OH'; 
fCARB26(i)=fCARB26(i)-1; fOH(i)=fOH(i)-1; fRN26O2(i)=fRN26O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB29 + OH = RN29O2';
k(:,i) = 1.42e-11;
Gstr{i,1} = 'CARB29'; Gstr{i,2} = 'OH'; 
fCARB29(i)=fCARB29(i)-1; fOH(i)=fOH(i)-1; fRN29O2(i)=fRN29O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB32 + OH = RN32O2';
k(:,i) = 1.56e-11;
Gstr{i,1} = 'CARB32'; Gstr{i,2} = 'OH'; 
fCARB32(i)=fCARB32(i)-1; fOH(i)=fOH(i)-1; fRN32O2(i)=fRN32O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB35 + OH = RN35O2';
k(:,i) = 1.70e-11;
Gstr{i,1} = 'CARB35'; Gstr{i,2} = 'OH'; 
fCARB35(i)=fCARB35(i)-1; fOH(i)=fOH(i)-1; fRN35O2(i)=fRN35O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB11A + OH = RN11O2';
k(:,i) = 3.24e-18.*T.^(2).*exp(414./T);
Gstr{i,1} = 'CARB11A'; Gstr{i,2} = 'OH'; 
fCARB11A(i)=fCARB11A(i)-1; fOH(i)=fOH(i)-1; fRN11O2(i)=fRN11O2(i)+1; 

i=i+1;
Rnames{i} = 'CCARB14 + OH = RC14O2';
k(:,i) = 1.83e-11;
Gstr{i,1} = 'CCARB14'; Gstr{i,2} = 'OH'; 
fCCARB14(i)=fCCARB14(i)-1; fOH(i)=fOH(i)-1; fRC14O2(i)=fRC14O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB7 + OH = CARB6 + HO2';
k(:,i) = 1.6e-12.*exp(305./T);
Gstr{i,1} = 'CARB7'; Gstr{i,2} = 'OH'; 
fCARB7(i)=fCARB7(i)-1; fOH(i)=fOH(i)-1; fCARB6(i)=fCARB6(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CARB10 + OH = CARB9 + HO2';
k(:,i) = 5.86e-12;
Gstr{i,1} = 'CARB10'; Gstr{i,2} = 'OH'; 
fCARB10(i)=fCARB10(i)-1; fOH(i)=fOH(i)-1; fCARB9(i)=fCARB9(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CARB13 + OH = RN13O2';
k(:,i) = 1.65e-11;
Gstr{i,1} = 'CARB13'; Gstr{i,2} = 'OH'; 
fCARB13(i)=fCARB13(i)-1; fOH(i)=fOH(i)-1; fRN13O2(i)=fRN13O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB16 + OH = RN16O2';
k(:,i) = 1.25e-11;
Gstr{i,1} = 'CARB16'; Gstr{i,2} = 'OH'; 
fCARB16(i)=fCARB16(i)-1; fOH(i)=fOH(i)-1; fRN16O2(i)=fRN16O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB19 + OH = RN19AO2';
k(:,i) = 8.07e-12;
Gstr{i,1} = 'CARB19'; Gstr{i,2} = 'OH'; 
fCARB19(i)=fCARB19(i)-1; fOH(i)=fOH(i)-1; fRN19AO2(i)=fRN19AO2(i)+1; 

i=i+1;
Rnames{i} = 'CARB22 + OH = RN22AO2';
k(:,i) = 7.98e-12;
Gstr{i,1} = 'CARB22'; Gstr{i,2} = 'OH'; 
fCARB22(i)=fCARB22(i)-1; fOH(i)=fOH(i)-1; fRN22AO2(i)=fRN22AO2(i)+1; 

i=i+1;
Rnames{i} = 'CARB25 + OH = RN25AO2';
k(:,i) = 6.40e-12;
Gstr{i,1} = 'CARB25'; Gstr{i,2} = 'OH'; 
fCARB25(i)=fCARB25(i)-1; fOH(i)=fOH(i)-1; fRN25AO2(i)=fRN25AO2(i)+1; 

i=i+1;
Rnames{i} = 'CARB28 + OH = RN28AO2';
k(:,i) = 6.47e-12;
Gstr{i,1} = 'CARB28'; Gstr{i,2} = 'OH'; 
fCARB28(i)=fCARB28(i)-1; fOH(i)=fOH(i)-1; fRN28AO2(i)=fRN28AO2(i)+1; 

i=i+1;
Rnames{i} = 'CARB31 + OH = RN31AO2';
k(:,i) = 9.47e-12;
Gstr{i,1} = 'CARB31'; Gstr{i,2} = 'OH'; 
fCARB31(i)=fCARB31(i)-1; fOH(i)=fOH(i)-1; fRN31AO2(i)=fRN31AO2(i)+1; 

i=i+1;
Rnames{i} = 'CARB34 + OH = RN34AO2';
k(:,i) = 8.86e-12;
Gstr{i,1} = 'CARB34'; Gstr{i,2} = 'OH'; 
fCARB34(i)=fCARB34(i)-1; fOH(i)=fOH(i)-1; fRN34AO2(i)=fRN34AO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + UCARB10 = RU10O2';
k(:,i) = 3.84e-12.*exp(533./T).*0.693;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'UCARB10'; 
fOH(i)=fOH(i)-1; fUCARB10(i)=fUCARB10(i)-1; fRU10O2(i)=fRU10O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + UCARB10 = HNO3 + RU10O2';
k(:,i) = KNO3AL.*0.415;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'UCARB10'; 
fNO3(i)=fNO3(i)-1; fUCARB10(i)=fUCARB10(i)-1; fHNO3(i)=fHNO3(i)+1; fRU10O2(i)=fRU10O2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + UCARB10 = CH3CO3 + CO + HCHO + OH';
k(:,i) = 1.20e-15.*exp(-1710./T).*0.32;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'UCARB10'; 
fO3(i)=fO3(i)-1; fUCARB10(i)=fUCARB10(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'O3 + UCARB10 = CARB6 + HCHO';
k(:,i) = 1.20e-15.*exp(-1710./T).*0.68;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'UCARB10'; 
fO3(i)=fO3(i)-1; fUCARB10(i)=fUCARB10(i)-1; fCARB6(i)=fCARB6(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CHO + OH = HOCH2CO3';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'HOCH2CHO'; Gstr{i,2} = 'OH'; 
fHOCH2CHO(i)=fHOCH2CHO(i)-1; fOH(i)=fOH(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CHO + NO3 = HNO3 + HOCH2CO3';
k(:,i) = KNO3AL;
Gstr{i,1} = 'HOCH2CHO'; Gstr{i,2} = 'NO3'; 
fHOCH2CHO(i)=fHOCH2CHO(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'CARB3 + OH = CO + CO + HO2';
k(:,i) = 3.10e-12.*exp(340./T).*0.8;
Gstr{i,1} = 'CARB3'; Gstr{i,2} = 'OH'; 
fCARB3(i)=fCARB3(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CARB6 + OH = CH3CO3 + CO';
k(:,i) = 1.9e-12.*exp(575./T);
Gstr{i,1} = 'CARB6'; Gstr{i,2} = 'OH'; 
fCARB6(i)=fCARB6(i)-1; fOH(i)=fOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CARB9 + OH = RN9O2';
k(:,i) = 2.40e-13;
Gstr{i,1} = 'CARB9'; Gstr{i,2} = 'OH'; 
fCARB9(i)=fCARB9(i)-1; fOH(i)=fOH(i)-1; fRN9O2(i)=fRN9O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB12 + OH = RN12O2';
k(:,i) = 1.38e-12;
Gstr{i,1} = 'CARB12'; Gstr{i,2} = 'OH'; 
fCARB12(i)=fCARB12(i)-1; fOH(i)=fOH(i)-1; fRN12O2(i)=fRN12O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB15 + OH = RN15O2';
k(:,i) = 4.81e-12;
Gstr{i,1} = 'CARB15'; Gstr{i,2} = 'OH'; 
fCARB15(i)=fCARB15(i)-1; fOH(i)=fOH(i)-1; fRN15O2(i)=fRN15O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB18 + OH = RN18O2';
k(:,i) = 6.30e-12;
Gstr{i,1} = 'CARB18'; Gstr{i,2} = 'OH'; 
fCARB18(i)=fCARB18(i)-1; fOH(i)=fOH(i)-1; fRN18O2(i)=fRN18O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB21 + OH = RN21O2';
k(:,i) = 7.80e-12;
Gstr{i,1} = 'CARB21'; Gstr{i,2} = 'OH'; 
fCARB21(i)=fCARB21(i)-1; fOH(i)=fOH(i)-1; fRN21O2(i)=fRN21O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB24 + OH = RN24O2';
k(:,i) = 9.30e-12;
Gstr{i,1} = 'CARB24'; Gstr{i,2} = 'OH'; 
fCARB24(i)=fCARB24(i)-1; fOH(i)=fOH(i)-1; fRN24O2(i)=fRN24O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB27 + OH = RN27O2';
k(:,i) = 1.08e-11;
Gstr{i,1} = 'CARB27'; Gstr{i,2} = 'OH'; 
fCARB27(i)=fCARB27(i)-1; fOH(i)=fOH(i)-1; fRN27O2(i)=fRN27O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB30 + OH = RN30O2';
k(:,i) = 1.23e-11;
Gstr{i,1} = 'CARB30'; Gstr{i,2} = 'OH'; 
fCARB30(i)=fCARB30(i)-1; fOH(i)=fOH(i)-1; fRN30O2(i)=fRN30O2(i)+1; 

i=i+1;
Rnames{i} = 'CARB33 + OH = RN33O2';
k(:,i) = 1.38e-11;
Gstr{i,1} = 'CARB33'; Gstr{i,2} = 'OH'; 
fCARB33(i)=fCARB33(i)-1; fOH(i)=fOH(i)-1; fRN33O2(i)=fRN33O2(i)+1; 

i=i+1;
Rnames{i} = 'CCARB12 + OH = RN12O2';
k(:,i) = 4.79e-12;
Gstr{i,1} = 'CCARB12'; Gstr{i,2} = 'OH'; 
fCCARB12(i)=fCCARB12(i)-1; fOH(i)=fOH(i)-1; fRN12O2(i)=fRN12O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + UCARB12 = RU12O2';
k(:,i) = 6.42e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'UCARB12'; 
fOH(i)=fOH(i)-1; fUCARB12(i)=fUCARB12(i)-1; fRU12O2(i)=fRU12O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + UCARB12 = HNO3 + RU12O2';
k(:,i) = KNO3AL.*4.25;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'UCARB12'; 
fNO3(i)=fNO3(i)-1; fUCARB12(i)=fUCARB12(i)-1; fHNO3(i)=fHNO3(i)+1; fRU12O2(i)=fRU12O2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + UCARB12 = CARB6 + CO + HO2 + OH';
k(:,i) = 2.40e-17.*0.50;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'UCARB12'; 
fO3(i)=fO3(i)-1; fUCARB12(i)=fUCARB12(i)-1; fCARB6(i)=fCARB6(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'O3 + UCARB12 = CARB3 + CARB7 + CO';
k(:,i) = 2.40e-17.*0.25;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'UCARB12'; 
fO3(i)=fO3(i)-1; fUCARB12(i)=fUCARB12(i)-1; fCARB3(i)=fCARB3(i)+1; fCARB7(i)=fCARB7(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NUCARB12 + OH = NRU12O2';
k(:,i) = 4.16e-11;
Gstr{i,1} = 'NUCARB12'; Gstr{i,2} = 'OH'; 
fNUCARB12(i)=fNUCARB12(i)-1; fOH(i)=fOH(i)-1; fNRU12O2(i)=fNRU12O2(i)+1; 

i=i+1;
Rnames{i} = 'NOA + OH = CARB6 + NO2';
k(:,i) = 6.70e-13;
Gstr{i,1} = 'NOA'; Gstr{i,2} = 'OH'; 
fNOA(i)=fNOA(i)-1; fOH(i)=fOH(i)-1; fCARB6(i)=fCARB6(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + UDCARB8 = C2H5O2';
k(:,i) = 5.20e-11.*0.50;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'UDCARB8'; 
fOH(i)=fOH(i)-1; fUDCARB8(i)=fUDCARB8(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + UDCARB8 = ANHY + HO2';
k(:,i) = 5.20e-11.*0.50;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'UDCARB8'; 
fOH(i)=fOH(i)-1; fUDCARB8(i)=fUDCARB8(i)-1; fANHY(i)=fANHY(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + UDCARB11 = RN10O2';
k(:,i) = 5.58e-11.*0.55;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'UDCARB11'; 
fOH(i)=fOH(i)-1; fUDCARB11(i)=fUDCARB11(i)-1; fRN10O2(i)=fRN10O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + UDCARB11 = ANHY + CH3O2';
k(:,i) = 5.58e-11.*0.45;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'UDCARB11'; 
fOH(i)=fOH(i)-1; fUDCARB11(i)=fUDCARB11(i)-1; fANHY(i)=fANHY(i)+1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + UDCARB14 = RN13O2';
k(:,i) = 7.00e-11.*0.55;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'UDCARB14'; 
fOH(i)=fOH(i)-1; fUDCARB14(i)=fUDCARB14(i)-1; fRN13O2(i)=fRN13O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + UDCARB14 = ANHY + C2H5O2';
k(:,i) = 7.00e-11.*0.45;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'UDCARB14'; 
fOH(i)=fOH(i)-1; fUDCARB14(i)=fUDCARB14(i)-1; fANHY(i)=fANHY(i)+1; fC2H5O2(i)=fC2H5O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + UDCARB17 = RN16O2';
k(:,i) = 7.00e-11.*0.55;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'UDCARB17'; 
fOH(i)=fOH(i)-1; fUDCARB17(i)=fUDCARB17(i)-1; fRN16O2(i)=fRN16O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + UDCARB17 = ANHY + RN10O2';
k(:,i) = 7.00e-11.*0.45;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'UDCARB17'; 
fOH(i)=fOH(i)-1; fUDCARB17(i)=fUDCARB17(i)-1; fANHY(i)=fANHY(i)+1; fRN10O2(i)=fRN10O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + UDCARB20 = RN19O2';
k(:,i) = 7.00e-11.*0.55;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'UDCARB20'; 
fOH(i)=fOH(i)-1; fUDCARB20(i)=fUDCARB20(i)-1; fRN19O2(i)=fRN19O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + UDCARB20 = ANHY + RN13O2';
k(:,i) = 7.00e-11.*0.45;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'UDCARB20'; 
fOH(i)=fOH(i)-1; fUDCARB20(i)=fUDCARB20(i)-1; fANHY(i)=fANHY(i)+1; fRN13O2(i)=fRN13O2(i)+1; 

i=i+1;
Rnames{i} = 'ECARB7 + OH = C2H5O2';
k(:,i) = 9.36e-13;
Gstr{i,1} = 'ECARB7'; Gstr{i,2} = 'OH'; 
fECARB7(i)=fECARB7(i)-1; fOH(i)=fOH(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; 

i=i+1;
Rnames{i} = 'ECARB13 + OH = RI13O2';
k(:,i) = 7.42e-13;
Gstr{i,1} = 'ECARB13'; Gstr{i,2} = 'OH'; 
fECARB13(i)=fECARB13(i)-1; fOH(i)=fOH(i)-1; fRI13O2(i)=fRI13O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + TNCARB26 = RTN26O2';
k(:,i) = 4.20e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'TNCARB26'; 
fOH(i)=fOH(i)-1; fTNCARB26(i)=fTNCARB26(i)-1; fRTN26O2(i)=fRTN26O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + TNCARB15 = RN15AO2';
k(:,i) = 1.00e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'TNCARB15'; 
fOH(i)=fOH(i)-1; fTNCARB15(i)=fTNCARB15(i)-1; fRN15AO2(i)=fRN15AO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + TNCARB10 = RTN10O2';
k(:,i) = 1.00e-10;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'TNCARB10'; 
fOH(i)=fOH(i)-1; fTNCARB10(i)=fTNCARB10(i)-1; fRTN10O2(i)=fRTN10O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + TNCARB26 = HNO3 + RTN26O2';
k(:,i) = 3.80e-14;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'TNCARB26'; 
fNO3(i)=fNO3(i)-1; fTNCARB26(i)=fTNCARB26(i)-1; fHNO3(i)=fHNO3(i)+1; fRTN26O2(i)=fRTN26O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + TNCARB10 = HNO3 + RTN10O2';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'TNCARB10'; 
fNO3(i)=fNO3(i)-1; fTNCARB10(i)=fTNCARB10(i)-1; fHNO3(i)=fHNO3(i)+1; fRTN10O2(i)=fRTN10O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RCOOH25 = RTN25O2';
k(:,i) = 6.65e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RCOOH25'; 
fOH(i)=fOH(i)-1; fRCOOH25(i)=fRCOOH25(i)-1; fRTN25O2(i)=fRTN25O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + TXCARB24 = RTX24O2';
k(:,i) = 1.55e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'TXCARB24'; 
fOH(i)=fOH(i)-1; fTXCARB24(i)=fTXCARB24(i)-1; fRTX24O2(i)=fRTX24O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + TXCARB22 = RTX22O2';
k(:,i) = 4.55e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'TXCARB22'; 
fOH(i)=fOH(i)-1; fTXCARB22(i)=fTXCARB22(i)-1; fRTX22O2(i)=fRTX22O2(i)+1; 

i=i+1;
Rnames{i} = 'ANHY + OH = HOCH2CH2O2';
k(:,i) = 1.50e-12;
Gstr{i,1} = 'ANHY'; Gstr{i,2} = 'OH'; 
fANHY(i)=fANHY(i)-1; fOH(i)=fOH(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3NO3 + hv = HCHO + HO2 + NO2';
k(:,i) = J51;
Gstr{i,1} = 'CH3NO3'; 
fCH3NO3(i)=fCH3NO3(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5NO3 + hv = CH3CHO + HO2 + NO2';
k(:,i) = J52;
Gstr{i,1} = 'C2H5NO3'; 
fC2H5NO3(i)=fC2H5NO3(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'RN10NO3 + hv = C2H5CHO + HO2 + NO2';
k(:,i) = J53;
Gstr{i,1} = 'RN10NO3'; 
fRN10NO3(i)=fRN10NO3(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7NO3 + hv = CH3COCH3 + HO2 + NO2';
k(:,i) = J54;
Gstr{i,1} = 'IC3H7NO3'; 
fIC3H7NO3(i)=fIC3H7NO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'RN13NO3 + hv = C2H5O2 + CH3CHO + NO2';
k(:,i) = J53.*0.398;
Gstr{i,1} = 'RN13NO3'; 
fRN13NO3(i)=fRN13NO3(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'RN13NO3 + hv = CARB11A + HO2 + NO2';
k(:,i) = J53.*0.602;
Gstr{i,1} = 'RN13NO3'; 
fRN13NO3(i)=fRN13NO3(i)-1; fCARB11A(i)=fCARB11A(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'RN16NO3 + hv = NO2 + RN15O2';
k(:,i) = J53;
Gstr{i,1} = 'RN16NO3'; 
fRN16NO3(i)=fRN16NO3(i)-1; fNO2(i)=fNO2(i)+1; fRN15O2(i)=fRN15O2(i)+1; 

i=i+1;
Rnames{i} = 'RN19NO3 + hv = NO2 + RN18O2';
k(:,i) = J53;
Gstr{i,1} = 'RN19NO3'; 
fRN19NO3(i)=fRN19NO3(i)-1; fNO2(i)=fNO2(i)+1; fRN18O2(i)=fRN18O2(i)+1; 

i=i+1;
Rnames{i} = 'RN22NO3 + hv = NO2 + RN21O2';
k(:,i) = J53;
Gstr{i,1} = 'RN22NO3'; 
fRN22NO3(i)=fRN22NO3(i)-1; fNO2(i)=fNO2(i)+1; fRN21O2(i)=fRN21O2(i)+1; 

i=i+1;
Rnames{i} = 'RN25NO3 + hv = NO2 + RN24O2';
k(:,i) = J53;
Gstr{i,1} = 'RN25NO3'; 
fRN25NO3(i)=fRN25NO3(i)-1; fNO2(i)=fNO2(i)+1; fRN24O2(i)=fRN24O2(i)+1; 

i=i+1;
Rnames{i} = 'RN28NO3 + hv = NO2 + RN27O2';
k(:,i) = J53;
Gstr{i,1} = 'RN28NO3'; 
fRN28NO3(i)=fRN28NO3(i)-1; fNO2(i)=fNO2(i)+1; fRN27O2(i)=fRN27O2(i)+1; 

i=i+1;
Rnames{i} = 'RN31NO3 + hv = NO2 + RN30O2';
k(:,i) = J53;
Gstr{i,1} = 'RN31NO3'; 
fRN31NO3(i)=fRN31NO3(i)-1; fNO2(i)=fNO2(i)+1; fRN30O2(i)=fRN30O2(i)+1; 

i=i+1;
Rnames{i} = 'RN34NO3 + hv = NO2 + RN33O2';
k(:,i) = J53;
Gstr{i,1} = 'RN34NO3'; 
fRN34NO3(i)=fRN34NO3(i)-1; fNO2(i)=fNO2(i)+1; fRN33O2(i)=fRN33O2(i)+1; 

i=i+1;
Rnames{i} = 'RN37NO3 + hv = NO2 + RN36O2';
k(:,i) = J53;
Gstr{i,1} = 'RN37NO3'; 
fRN37NO3(i)=fRN37NO3(i)-1; fNO2(i)=fNO2(i)+1; fRN36O2(i)=fRN36O2(i)+1; 

i=i+1;
Rnames{i} = 'RI13NO3 + hv = CH3COCH3 + CH3O2 + NO2';
k(:,i) = J55;
Gstr{i,1} = 'RI13NO3'; 
fRI13NO3(i)=fRI13NO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fCH3O2(i)=fCH3O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'RI16NO3 + hv = C2H5O2 + CH3COCH3 + NO2';
k(:,i) = J55;
Gstr{i,1} = 'RI16NO3'; 
fRI16NO3(i)=fRI16NO3(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'RC18NO3 + hv = CYHEXONE + HO2 + NO2';
k(:,i) = J54;
Gstr{i,1} = 'RC18NO3'; 
fRC18NO3(i)=fRC18NO3(i)-1; fCYHEXONE(i)=fCYHEXONE(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'RA13NO3 + hv = CARB3 + HO2 + NO2 + UDCARB8';
k(:,i) = J54;
Gstr{i,1} = 'RA13NO3'; 
fRA13NO3(i)=fRA13NO3(i)-1; fCARB3(i)=fCARB3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB8(i)=fUDCARB8(i)+1; 

i=i+1;
Rnames{i} = 'RA16NO3 + hv = CARB3 + HO2 + NO2 + UDCARB11';
k(:,i) = J54;
Gstr{i,1} = 'RA16NO3'; 
fRA16NO3(i)=fRA16NO3(i)-1; fCARB3(i)=fCARB3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB11(i)=fUDCARB11(i)+1; 

i=i+1;
Rnames{i} = 'RA19NO3 + hv = CARB6 + HO2 + NO2 + UDCARB11';
k(:,i) = J54;
Gstr{i,1} = 'RA19NO3'; 
fRA19NO3(i)=fRA19NO3(i)-1; fCARB6(i)=fCARB6(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB11(i)=fUDCARB11(i)+1; 

i=i+1;
Rnames{i} = 'RA22NO3 + hv = CARB6 + HO2 + NO2 + UDCARB14';
k(:,i) = J54;
Gstr{i,1} = 'RA22NO3'; 
fRA22NO3(i)=fRA22NO3(i)-1; fCARB6(i)=fCARB6(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB14(i)=fUDCARB14(i)+1; 

i=i+1;
Rnames{i} = 'RA25NO3 + hv = CARB6 + HO2 + NO2 + UDCARB17';
k(:,i) = J54;
Gstr{i,1} = 'RA25NO3'; 
fRA25NO3(i)=fRA25NO3(i)-1; fCARB6(i)=fCARB6(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB17(i)=fUDCARB17(i)+1; 

i=i+1;
Rnames{i} = 'RA28NO3 + hv = CARB6 + HO2 + NO2 + UDCARB20';
k(:,i) = J54;
Gstr{i,1} = 'RA28NO3'; 
fRA28NO3(i)=fRA28NO3(i)-1; fCARB6(i)=fCARB6(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB20(i)=fUDCARB20(i)+1; 

i=i+1;
Rnames{i} = 'RE12NO3 + hv = CH3O2 + ECARB7 + NO2';
k(:,i) = J54;
Gstr{i,1} = 'RE12NO3'; 
fRE12NO3(i)=fRE12NO3(i)-1; fCH3O2(i)=fCH3O2(i)+1; fECARB7(i)=fECARB7(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'RE15NO3 + hv = ECARB13 + HO2 + NO2';
k(:,i) = J54;
Gstr{i,1} = 'RE15NO3'; 
fRE15NO3(i)=fRE15NO3(i)-1; fECARB13(i)=fECARB13(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'RE18NO3 + hv = CH3O2 + ECARB13 + NO2';
k(:,i) = J54;
Gstr{i,1} = 'RE18NO3'; 
fRE18NO3(i)=fRE18NO3(i)-1; fCH3O2(i)=fCH3O2(i)+1; fECARB13(i)=fECARB13(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'RTX24NO3 + hv = HO2 + NO2 + TXCARB22';
k(:,i) = J54;
Gstr{i,1} = 'RTX24NO3'; 
fRTX24NO3(i)=fRTX24NO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fTXCARB22(i)=fTXCARB22(i)+1; 

i=i+1;
Rnames{i} = 'CH3NO3 + OH = HCHO + NO2';
k(:,i) = 4.0e-13.*exp(-845./T);
Gstr{i,1} = 'CH3NO3'; Gstr{i,2} = 'OH'; 
fCH3NO3(i)=fCH3NO3(i)-1; fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5NO3 + OH = CH3CHO + NO2';
k(:,i) = 4.40e-14.*exp(720./T);
Gstr{i,1} = 'C2H5NO3'; Gstr{i,2} = 'OH'; 
fC2H5NO3(i)=fC2H5NO3(i)-1; fOH(i)=fOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN10NO3 = C2H5CHO + NO2';
k(:,i) = 7.30e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN10NO3'; 
fOH(i)=fOH(i)-1; fRN10NO3(i)=fRN10NO3(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7NO3 + OH = CH3COCH3 + NO2';
k(:,i) = 4.90e-13;
Gstr{i,1} = 'IC3H7NO3'; Gstr{i,2} = 'OH'; 
fIC3H7NO3(i)=fIC3H7NO3(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN13NO3 = CARB11A + NO2';
k(:,i) = 9.20e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN13NO3'; 
fOH(i)=fOH(i)-1; fRN13NO3(i)=fRN13NO3(i)-1; fCARB11A(i)=fCARB11A(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN16NO3 = CARB14 + NO2';
k(:,i) = 1.85e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN16NO3'; 
fOH(i)=fOH(i)-1; fRN16NO3(i)=fRN16NO3(i)-1; fCARB14(i)=fCARB14(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN19NO3 = CARB17 + NO2';
k(:,i) = 3.02e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN19NO3'; 
fOH(i)=fOH(i)-1; fRN19NO3(i)=fRN19NO3(i)-1; fCARB17(i)=fCARB17(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN22NO3 = CARB20 + NO2';
k(:,i) = 3.69e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN22NO3'; 
fOH(i)=fOH(i)-1; fRN22NO3(i)=fRN22NO3(i)-1; fCARB20(i)=fCARB20(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN25NO3 = CARB23 + NO2';
k(:,i) = 3.88e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN25NO3'; 
fOH(i)=fOH(i)-1; fRN25NO3(i)=fRN25NO3(i)-1; fCARB23(i)=fCARB23(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN28NO3 = CARB26 + NO2';
k(:,i) = 6.76e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN28NO3'; 
fOH(i)=fOH(i)-1; fRN28NO3(i)=fRN28NO3(i)-1; fCARB26(i)=fCARB26(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN31NO3 = CARB29 + NO2';
k(:,i) = 8.15e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN31NO3'; 
fOH(i)=fOH(i)-1; fRN31NO3(i)=fRN31NO3(i)-1; fCARB29(i)=fCARB29(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN34NO3 = CARB32 + NO2';
k(:,i) = 9.54e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN34NO3'; 
fOH(i)=fOH(i)-1; fRN34NO3(i)=fRN34NO3(i)-1; fCARB32(i)=fCARB32(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN37NO3 = CARB35 + NO2';
k(:,i) = 1.09e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN37NO3'; 
fOH(i)=fOH(i)-1; fRN37NO3(i)=fRN37NO3(i)-1; fCARB35(i)=fCARB35(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RI13NO3 = CH3COCH3 + HCHO + NO2';
k(:,i) = 2.23e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RI13NO3'; 
fOH(i)=fOH(i)-1; fRI13NO3(i)=fRI13NO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RI16NO3 = CH3CHO + CH3COCH3 + NO2';
k(:,i) = 9.67e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RI16NO3'; 
fOH(i)=fOH(i)-1; fRI16NO3(i)=fRI16NO3(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RC18NO3 = CYHEXONE + NO2';
k(:,i) = 3.30e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RC18NO3'; 
fOH(i)=fOH(i)-1; fRC18NO3(i)=fRC18NO3(i)-1; fCYHEXONE(i)=fCYHEXONE(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4NO3 + OH = HOCH2CHO + NO2';
k(:,i) = 1.09e-12;
Gstr{i,1} = 'HOC2H4NO3'; Gstr{i,2} = 'OH'; 
fHOC2H4NO3(i)=fHOC2H4NO3(i)-1; fOH(i)=fOH(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN9NO3 = CARB7 + NO2';
k(:,i) = 1.31e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN9NO3'; 
fOH(i)=fOH(i)-1; fRN9NO3(i)=fRN9NO3(i)-1; fCARB7(i)=fCARB7(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN12NO3 = CARB10 + NO2';
k(:,i) = 1.79e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN12NO3'; 
fOH(i)=fOH(i)-1; fRN12NO3(i)=fRN12NO3(i)-1; fCARB10(i)=fCARB10(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN15NO3 = CARB13 + NO2';
k(:,i) = 1.03e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN15NO3'; 
fOH(i)=fOH(i)-1; fRN15NO3(i)=fRN15NO3(i)-1; fCARB13(i)=fCARB13(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN18NO3 = CARB16 + NO2';
k(:,i) = 1.34e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN18NO3'; 
fOH(i)=fOH(i)-1; fRN18NO3(i)=fRN18NO3(i)-1; fCARB16(i)=fCARB16(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN21NO3 = CARB19 + NO2';
k(:,i) = 1.23e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN21NO3'; 
fOH(i)=fOH(i)-1; fRN21NO3(i)=fRN21NO3(i)-1; fCARB19(i)=fCARB19(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN24NO3 = CARB22 + NO2';
k(:,i) = 1.38e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN24NO3'; 
fOH(i)=fOH(i)-1; fRN24NO3(i)=fRN24NO3(i)-1; fCARB22(i)=fCARB22(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN27NO3 = CARB25 + NO2';
k(:,i) = 1.48e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN27NO3'; 
fOH(i)=fOH(i)-1; fRN27NO3(i)=fRN27NO3(i)-1; fCARB25(i)=fCARB25(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN30NO3 = CARB28 + NO2';
k(:,i) = 1.58e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN30NO3'; 
fOH(i)=fOH(i)-1; fRN30NO3(i)=fRN30NO3(i)-1; fCARB28(i)=fCARB28(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN33NO3 = CARB31 + NO2';
k(:,i) = 1.68e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN33NO3'; 
fOH(i)=fOH(i)-1; fRN33NO3(i)=fRN33NO3(i)-1; fCARB31(i)=fCARB31(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN36NO3 = CARB34 + NO2';
k(:,i) = 1.78e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN36NO3'; 
fOH(i)=fOH(i)-1; fRN36NO3(i)=fRN36NO3(i)-1; fCARB34(i)=fCARB34(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RI12NO3 = CH3COCH3 + HCHO + NO2';
k(:,i) = 8.48e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RI12NO3'; 
fOH(i)=fOH(i)-1; fRI12NO3(i)=fRI12NO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RI15NO3 = CH3CHO + CH3COCH3 + NO2';
k(:,i) = 1.32e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RI15NO3'; 
fOH(i)=fOH(i)-1; fRI15NO3(i)=fRI15NO3(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RU11NO3 = CH3CHO + HCHO + NO2';
k(:,i) = 4.21e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RU11NO3'; 
fOH(i)=fOH(i)-1; fRU11NO3(i)=fRU11NO3(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RU14NO3 = NO2 + UCARB12';
k(:,i) = 3.00e-11.*0.34;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RU14NO3'; 
fOH(i)=fOH(i)-1; fRU14NO3(i)=fRU14NO3(i)-1; fNO2(i)=fNO2(i)+1; fUCARB12(i)=fUCARB12(i)+1; 

i=i+1;
Rnames{i} = 'OH + RA13NO3 = CARB3 + NO2 + UDCARB8';
k(:,i) = 7.30e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RA13NO3'; 
fOH(i)=fOH(i)-1; fRA13NO3(i)=fRA13NO3(i)-1; fCARB3(i)=fCARB3(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB8(i)=fUDCARB8(i)+1; 

i=i+1;
Rnames{i} = 'OH + RA16NO3 = CARB3 + NO2 + UDCARB11';
k(:,i) = 7.16e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RA16NO3'; 
fOH(i)=fOH(i)-1; fRA16NO3(i)=fRA16NO3(i)-1; fCARB3(i)=fCARB3(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB11(i)=fUDCARB11(i)+1; 

i=i+1;
Rnames{i} = 'OH + RA19NO3 = CARB6 + NO2 + UDCARB11';
k(:,i) = 8.31e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RA19NO3'; 
fOH(i)=fOH(i)-1; fRA19NO3(i)=fRA19NO3(i)-1; fCARB6(i)=fCARB6(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB11(i)=fUDCARB11(i)+1; 

i=i+1;
Rnames{i} = 'OH + RA22NO3 = CARB6 + NO2 + UDCARB14';
k(:,i) = 9.45e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RA22NO3'; 
fOH(i)=fOH(i)-1; fRA22NO3(i)=fRA22NO3(i)-1; fCARB6(i)=fCARB6(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB14(i)=fUDCARB14(i)+1; 

i=i+1;
Rnames{i} = 'OH + RA25NO3 = CARB6 + NO2 + UDCARB17';
k(:,i) = 9.57e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RA25NO3'; 
fOH(i)=fOH(i)-1; fRA25NO3(i)=fRA25NO3(i)-1; fCARB6(i)=fCARB6(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB17(i)=fUDCARB17(i)+1; 

i=i+1;
Rnames{i} = 'OH + RA28NO3 = CARB6 + NO2 + UDCARB20';
k(:,i) = 9.67e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RA28NO3'; 
fOH(i)=fOH(i)-1; fRA28NO3(i)=fRA28NO3(i)-1; fCARB6(i)=fCARB6(i)+1; fNO2(i)=fNO2(i)+1; fUDCARB20(i)=fUDCARB20(i)+1; 

i=i+1;
Rnames{i} = 'OH + RE12NO3 = ETHACET + NO2';
k(:,i) = 7.74e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RE12NO3'; 
fOH(i)=fOH(i)-1; fRE12NO3(i)=fRE12NO3(i)-1; fETHACET(i)=fETHACET(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RE15NO3 = ECARB13 + NO2';
k(:,i) = 1.48e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RE15NO3'; 
fOH(i)=fOH(i)-1; fRE15NO3(i)=fRE15NO3(i)-1; fECARB13(i)=fECARB13(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RE18NO3 = NO2 + TBUACET';
k(:,i) = 6.00e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RE18NO3'; 
fOH(i)=fOH(i)-1; fRE18NO3(i)=fRE18NO3(i)-1; fNO2(i)=fNO2(i)+1; fTBUACET(i)=fTBUACET(i)+1; 

i=i+1;
Rnames{i} = 'OH + RTN28NO3 = NO2 + TNCARB26';
k(:,i) = 4.35e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RTN28NO3'; 
fOH(i)=fOH(i)-1; fRTN28NO3(i)=fRTN28NO3(i)-1; fNO2(i)=fNO2(i)+1; fTNCARB26(i)=fTNCARB26(i)+1; 

i=i+1;
Rnames{i} = 'OH + RTN25NO3 = CH3COCH3 + NO2 + TNCARB15';
k(:,i) = 2.88e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RTN25NO3'; 
fOH(i)=fOH(i)-1; fRTN25NO3(i)=fRTN25NO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; fTNCARB15(i)=fTNCARB15(i)+1; 

i=i+1;
Rnames{i} = 'OH + RTX28NO3 = HCHO + NO2 + TXCARB24';
k(:,i) = 3.53e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RTX28NO3'; 
fOH(i)=fOH(i)-1; fRTX28NO3(i)=fRTX28NO3(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fTXCARB24(i)=fTXCARB24(i)+1; 

i=i+1;
Rnames{i} = 'OH + RTX24NO3 = NO2 + TXCARB22';
k(:,i) = 6.48e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RTX24NO3'; 
fOH(i)=fOH(i)-1; fRTX24NO3(i)=fRTX24NO3(i)-1; fNO2(i)=fNO2(i)+1; fTXCARB22(i)=fTXCARB22(i)+1; 

i=i+1;
Rnames{i} = 'OH + RTX22NO3 = CCARB12 + CH3COCH3 + NO2';
k(:,i) = 4.74e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RTX22NO3'; 
fOH(i)=fOH(i)-1; fRTX22NO3(i)=fRTX22NO3(i)-1; fCCARB12(i)=fCCARB12(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'AROH14 + OH = RAROH14';
k(:,i) = 2.63e-11;
Gstr{i,1} = 'AROH14'; Gstr{i,2} = 'OH'; 
fAROH14(i)=fAROH14(i)-1; fOH(i)=fOH(i)-1; fRAROH14(i)=fRAROH14(i)+1; 

i=i+1;
Rnames{i} = 'AROH14 + NO3 = HNO3 + RAROH14';
k(:,i) = 3.78e-12;
Gstr{i,1} = 'AROH14'; Gstr{i,2} = 'NO3'; 
fAROH14(i)=fAROH14(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fRAROH14(i)=fRAROH14(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + RAROH14 = ARNOH14';
k(:,i) = 2.08e-12;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'RAROH14'; 
fNO2(i)=fNO2(i)-1; fRAROH14(i)=fRAROH14(i)-1; fARNOH14(i)=fARNOH14(i)+1; 

i=i+1;
Rnames{i} = 'ARNOH14 + OH = CARB13 + NO2';
k(:,i) = 9.00e-13;
Gstr{i,1} = 'ARNOH14'; Gstr{i,2} = 'OH'; 
fARNOH14(i)=fARNOH14(i)-1; fOH(i)=fOH(i)-1; fCARB13(i)=fCARB13(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ARNOH14 + NO3 = CARB13 + HNO3 + NO2';
k(:,i) = 9.00e-14;
Gstr{i,1} = 'ARNOH14'; Gstr{i,2} = 'NO3'; 
fARNOH14(i)=fARNOH14(i)-1; fNO3(i)=fNO3(i)-1; fCARB13(i)=fCARB13(i)+1; fHNO3(i)=fHNO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'AROH17 + OH = RAROH17';
k(:,i) = 4.65e-11;
Gstr{i,1} = 'AROH17'; Gstr{i,2} = 'OH'; 
fAROH17(i)=fAROH17(i)-1; fOH(i)=fOH(i)-1; fRAROH17(i)=fRAROH17(i)+1; 

i=i+1;
Rnames{i} = 'AROH17 + NO3 = HNO3 + RAROH17';
k(:,i) = 1.25e-11;
Gstr{i,1} = 'AROH17'; Gstr{i,2} = 'NO3'; 
fAROH17(i)=fAROH17(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fRAROH17(i)=fRAROH17(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + RAROH17 = ARNOH17';
k(:,i) = 2.08e-12;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'RAROH17'; 
fNO2(i)=fNO2(i)-1; fRAROH17(i)=fRAROH17(i)-1; fARNOH17(i)=fARNOH17(i)+1; 

i=i+1;
Rnames{i} = 'ARNOH17 + OH = CARB16 + NO2';
k(:,i) = 1.53e-12;
Gstr{i,1} = 'ARNOH17'; Gstr{i,2} = 'OH'; 
fARNOH17(i)=fARNOH17(i)-1; fOH(i)=fOH(i)-1; fCARB16(i)=fCARB16(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ARNOH17 + NO3 = CARB16 + HNO3 + NO2';
k(:,i) = 3.13e-13;
Gstr{i,1} = 'ARNOH17'; Gstr{i,2} = 'NO3'; 
fARNOH17(i)=fARNOH17(i)-1; fNO3(i)=fNO3(i)-1; fCARB16(i)=fCARB16(i)+1; fHNO3(i)=fHNO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3OOH + hv = HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CH3OOH'; 
fCH3OOH(i)=fCH3OOH(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C2H5OOH + hv = CH3CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C2H5OOH'; 
fC2H5OOH(i)=fC2H5OOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'RN10OOH + hv = C2H5CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'RN10OOH'; 
fRN10OOH(i)=fRN10OOH(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7OOH + hv = CH3COCH3 + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'IC3H7OOH'; 
fIC3H7OOH(i)=fIC3H7OOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'RN13OOH + hv = C2H5O2 + CH3CHO + OH';
k(:,i) = J41.*0.398;
Gstr{i,1} = 'RN13OOH'; 
fRN13OOH(i)=fRN13OOH(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'RN13OOH + hv = CARB11A + HO2 + OH';
k(:,i) = J41.*0.602;
Gstr{i,1} = 'RN13OOH'; 
fRN13OOH(i)=fRN13OOH(i)-1; fCARB11A(i)=fCARB11A(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'RN16OOH + hv = OH + RN15AO2';
k(:,i) = J41;
Gstr{i,1} = 'RN16OOH'; 
fRN16OOH(i)=fRN16OOH(i)-1; fOH(i)=fOH(i)+1; fRN15AO2(i)=fRN15AO2(i)+1; 

i=i+1;
Rnames{i} = 'RN19OOH + hv = OH + RN18AO2';
k(:,i) = J41;
Gstr{i,1} = 'RN19OOH'; 
fRN19OOH(i)=fRN19OOH(i)-1; fOH(i)=fOH(i)+1; fRN18AO2(i)=fRN18AO2(i)+1; 

i=i+1;
Rnames{i} = 'RN22OOH + hv = OH + RN21AO2';
k(:,i) = J41;
Gstr{i,1} = 'RN22OOH'; 
fRN22OOH(i)=fRN22OOH(i)-1; fOH(i)=fOH(i)+1; fRN21AO2(i)=fRN21AO2(i)+1; 

i=i+1;
Rnames{i} = 'RN25OOH + hv = OH + RN24AO2';
k(:,i) = J41;
Gstr{i,1} = 'RN25OOH'; 
fRN25OOH(i)=fRN25OOH(i)-1; fOH(i)=fOH(i)+1; fRN24AO2(i)=fRN24AO2(i)+1; 

i=i+1;
Rnames{i} = 'RN28OOH + hv = OH + RN27AO2';
k(:,i) = J41;
Gstr{i,1} = 'RN28OOH'; 
fRN28OOH(i)=fRN28OOH(i)-1; fOH(i)=fOH(i)+1; fRN27AO2(i)=fRN27AO2(i)+1; 

i=i+1;
Rnames{i} = 'RN31OOH + hv = OH + RN30AO2';
k(:,i) = J41;
Gstr{i,1} = 'RN31OOH'; 
fRN31OOH(i)=fRN31OOH(i)-1; fOH(i)=fOH(i)+1; fRN30AO2(i)=fRN30AO2(i)+1; 

i=i+1;
Rnames{i} = 'RN34OOH + hv = OH + RN33AO2';
k(:,i) = J41;
Gstr{i,1} = 'RN34OOH'; 
fRN34OOH(i)=fRN34OOH(i)-1; fOH(i)=fOH(i)+1; fRN33AO2(i)=fRN33AO2(i)+1; 

i=i+1;
Rnames{i} = 'RN37OOH + hv = OH + RN36AO2';
k(:,i) = J41;
Gstr{i,1} = 'RN37OOH'; 
fRN37OOH(i)=fRN37OOH(i)-1; fOH(i)=fOH(i)+1; fRN36AO2(i)=fRN36AO2(i)+1; 

i=i+1;
Rnames{i} = 'RI13OOH + hv = CH3COCH3 + CH3O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'RI13OOH'; 
fRI13OOH(i)=fRI13OOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fCH3O2(i)=fCH3O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'RI16OOH + hv = C2H5O2 + CH3COCH3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'RI16OOH'; 
fRI16OOH(i)=fRI16OOH(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3H + hv = CH3O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CH3CO3H'; 
fCH3CO3H(i)=fCH3CO3H(i)-1; fCH3O2(i)=fCH3O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3H + hv = C2H5O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C2H5CO3H'; 
fC2H5CO3H(i)=fC2H5CO3H(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3H + hv = HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HOCH2CO3H'; 
fHOCH2CO3H(i)=fHOCH2CO3H(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'RN8OOH + hv = CH3CO3 + HCHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'RN8OOH'; 
fRN8OOH(i)=fRN8OOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'RN11OOH + hv = OH + RN10O2';
k(:,i) = J41;
Gstr{i,1} = 'RN11OOH'; 
fRN11OOH(i)=fRN11OOH(i)-1; fOH(i)=fOH(i)+1; fRN10O2(i)=fRN10O2(i)+1; 

i=i+1;
Rnames{i} = 'RN14OOH + hv = OH + RN13O2';
k(:,i) = J41;
Gstr{i,1} = 'RN14OOH'; 
fRN14OOH(i)=fRN14OOH(i)-1; fOH(i)=fOH(i)+1; fRN13O2(i)=fRN13O2(i)+1; 

i=i+1;
Rnames{i} = 'RN17OOH + hv = OH + RN16O2';
k(:,i) = J41;
Gstr{i,1} = 'RN17OOH'; 
fRN17OOH(i)=fRN17OOH(i)-1; fOH(i)=fOH(i)+1; fRN16O2(i)=fRN16O2(i)+1; 

i=i+1;
Rnames{i} = 'RN20OOH + hv = OH + RN19O2';
k(:,i) = J41;
Gstr{i,1} = 'RN20OOH'; 
fRN20OOH(i)=fRN20OOH(i)-1; fOH(i)=fOH(i)+1; fRN19O2(i)=fRN19O2(i)+1; 

i=i+1;
Rnames{i} = 'RN23OOH + hv = OH + RN22O2';
k(:,i) = J41;
Gstr{i,1} = 'RN23OOH'; 
fRN23OOH(i)=fRN23OOH(i)-1; fOH(i)=fOH(i)+1; fRN22O2(i)=fRN22O2(i)+1; 

i=i+1;
Rnames{i} = 'RN26OOH + hv = OH + RN25O2';
k(:,i) = J41;
Gstr{i,1} = 'RN26OOH'; 
fRN26OOH(i)=fRN26OOH(i)-1; fOH(i)=fOH(i)+1; fRN25O2(i)=fRN25O2(i)+1; 

i=i+1;
Rnames{i} = 'RN29OOH + hv = OH + RN28O2';
k(:,i) = J41;
Gstr{i,1} = 'RN29OOH'; 
fRN29OOH(i)=fRN29OOH(i)-1; fOH(i)=fOH(i)+1; fRN28O2(i)=fRN28O2(i)+1; 

i=i+1;
Rnames{i} = 'RN32OOH + hv = OH + RN31O2';
k(:,i) = J41;
Gstr{i,1} = 'RN32OOH'; 
fRN32OOH(i)=fRN32OOH(i)-1; fOH(i)=fOH(i)+1; fRN31O2(i)=fRN31O2(i)+1; 

i=i+1;
Rnames{i} = 'RN35OOH + hv = OH + RN34O2';
k(:,i) = J41;
Gstr{i,1} = 'RN35OOH'; 
fRN35OOH(i)=fRN35OOH(i)-1; fOH(i)=fOH(i)+1; fRN34O2(i)=fRN34O2(i)+1; 

i=i+1;
Rnames{i} = 'RI11OOH + hv = IC3H7O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'RI11OOH'; 
fRI11OOH(i)=fRI11OOH(i)-1; fIC3H7O2(i)=fIC3H7O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'RI14OOH + hv = CH3CO3 + CH3COCH3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'RI14OOH'; 
fRI14OOH(i)=fRI14OOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'RI17OOH + hv = CH3COCH3 + OH + RN8O2';
k(:,i) = J41;
Gstr{i,1} = 'RI17OOH'; 
fRI17OOH(i)=fRI17OOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fOH(i)=fOH(i)+1; fRN8O2(i)=fRN8O2(i)+1; 

i=i+1;
Rnames{i} = 'RU11OOH + hv = CH3CHO + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'RU11OOH'; 
fRU11OOH(i)=fRU11OOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'RU12OOH + hv = CARB6 + HO2 + HOCH2CHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'RU12OOH'; 
fRU12OOH(i)=fRU12OOH(i)-1; fCARB6(i)=fCARB6(i)+1; fHO2(i)=fHO2(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'RU10OOH + hv = CH3CO3 + HOCH2CHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'RU10OOH'; 
fRU10OOH(i)=fRU10OOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NRU14OOH + hv = HO2 + NUCARB12 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NRU14OOH'; 
fNRU14OOH(i)=fNRU14OOH(i)-1; fHO2(i)=fHO2(i)+1; fNUCARB12(i)=fNUCARB12(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NRU12OOH + hv = CARB3 + HO2 + NOA + OH';
k(:,i) = J41;
Gstr{i,1} = 'NRU12OOH'; 
fNRU12OOH(i)=fNRU12OOH(i)-1; fCARB3(i)=fCARB3(i)+1; fHO2(i)=fHO2(i)+1; fNOA(i)=fNOA(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4OOH + hv = HCHO + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HOC2H4OOH'; 
fHOC2H4OOH(i)=fHOC2H4OOH(i)-1; fHCHO(i)=fHCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'RN9OOH + hv = CH3CHO + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'RN9OOH'; 
fRN9OOH(i)=fRN9OOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'RN12OOH + hv = CH3CHO + CH3CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'RN12OOH'; 
fRN12OOH(i)=fRN12OOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'RN15OOH + hv = C2H5CHO + CH3CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'RN15OOH'; 
fRN15OOH(i)=fRN15OOH(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'RN18OOH + hv = C2H5CHO + C2H5CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'RN18OOH'; 
fRN18OOH(i)=fRN18OOH(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'RN21OOH + hv = C2H5CHO + CARB11 + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'RN21OOH'; 
fRN21OOH(i)=fRN21OOH(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fCARB11(i)=fCARB11(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'RN24OOH + hv = CARB11 + CARB11 + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'RN24OOH'; 
fRN24OOH(i)=fRN24OOH(i)-1; fCARB11(i)=fCARB11(i)+1; fCARB11(i)=fCARB11(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'RN27OOH + hv = CARB11 + CARB14 + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'RN27OOH'; 
fRN27OOH(i)=fRN27OOH(i)-1; fCARB11(i)=fCARB11(i)+1; fCARB14(i)=fCARB14(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'RN30OOH + hv = CARB14 + CARB14 + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'RN30OOH'; 
fRN30OOH(i)=fRN30OOH(i)-1; fCARB14(i)=fCARB14(i)+1; fCARB14(i)=fCARB14(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'RN33OOH + hv = CARB14 + CARB17 + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'RN33OOH'; 
fRN33OOH(i)=fRN33OOH(i)-1; fCARB14(i)=fCARB14(i)+1; fCARB17(i)=fCARB17(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'RN36OOH + hv = CARB17 + CARB17 + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'RN36OOH'; 
fRN36OOH(i)=fRN36OOH(i)-1; fCARB17(i)=fCARB17(i)+1; fCARB17(i)=fCARB17(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'RI12OOH + hv = CH3COCH3 + HCHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'RI12OOH'; 
fRI12OOH(i)=fRI12OOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'RI15OOH + hv = CH3CHO + CH3COCH3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'RI15OOH'; 
fRI15OOH(i)=fRI15OOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'RC18OOH + hv = CYHEXONE + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'RC18OOH'; 
fRC18OOH(i)=fRC18OOH(i)-1; fCYHEXONE(i)=fCYHEXONE(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NRN6OOH + hv = HCHO + HCHO + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NRN6OOH'; 
fNRN6OOH(i)=fNRN6OOH(i)-1; fHCHO(i)=fHCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NRN9OOH + hv = CH3CHO + HCHO + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NRN9OOH'; 
fNRN9OOH(i)=fNRN9OOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NRN12OOH + hv = CH3CHO + CH3CHO + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NRN12OOH'; 
fNRN12OOH(i)=fNRN12OOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NRN15OOH + hv = C2H5CHO + CH3CHO + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NRN15OOH'; 
fNRN15OOH(i)=fNRN15OOH(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NRN18OOH + hv = C2H5CHO + C2H5CHO + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NRN18OOH'; 
fNRN18OOH(i)=fNRN18OOH(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fC2H5CHO(i)=fC2H5CHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NRI12OOH + hv = CH3COCH3 + HCHO + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NRI12OOH'; 
fNRI12OOH(i)=fNRI12OOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NRI15OOH + hv = CH3CHO + CH3COCH3 + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NRI15OOH'; 
fNRI15OOH(i)=fNRI15OOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'RA13OOH + hv = CARB3 + HO2 + OH + UDCARB8';
k(:,i) = J41;
Gstr{i,1} = 'RA13OOH'; 
fRA13OOH(i)=fRA13OOH(i)-1; fCARB3(i)=fCARB3(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; fUDCARB8(i)=fUDCARB8(i)+1; 

i=i+1;
Rnames{i} = 'RA16OOH + hv = CARB3 + HO2 + OH + UDCARB11';
k(:,i) = J41;
Gstr{i,1} = 'RA16OOH'; 
fRA16OOH(i)=fRA16OOH(i)-1; fCARB3(i)=fCARB3(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; fUDCARB11(i)=fUDCARB11(i)+1; 

i=i+1;
Rnames{i} = 'RA19OOH + hv = CARB6 + HO2 + OH + UDCARB11';
k(:,i) = J41;
Gstr{i,1} = 'RA19OOH'; 
fRA19OOH(i)=fRA19OOH(i)-1; fCARB6(i)=fCARB6(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; fUDCARB11(i)=fUDCARB11(i)+1; 

i=i+1;
Rnames{i} = 'RA22OOH + hv = CARB6 + HO2 + OH + UDCARB14';
k(:,i) = J41;
Gstr{i,1} = 'RA22OOH'; 
fRA22OOH(i)=fRA22OOH(i)-1; fCARB6(i)=fCARB6(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; fUDCARB14(i)=fUDCARB14(i)+1; 

i=i+1;
Rnames{i} = 'RA25OOH + hv = CARB6 + HO2 + OH + UDCARB17';
k(:,i) = J41;
Gstr{i,1} = 'RA25OOH'; 
fRA25OOH(i)=fRA25OOH(i)-1; fCARB6(i)=fCARB6(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; fUDCARB17(i)=fUDCARB17(i)+1; 

i=i+1;
Rnames{i} = 'RA28OOH + hv = CARB6 + HO2 + OH + UDCARB20';
k(:,i) = J41;
Gstr{i,1} = 'RA28OOH'; 
fRA28OOH(i)=fRA28OOH(i)-1; fCARB6(i)=fCARB6(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; fUDCARB20(i)=fUDCARB20(i)+1; 

i=i+1;
Rnames{i} = 'RUA20OOH + hv = BENZAL + HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'RUA20OOH'; 
fRUA20OOH(i)=fRUA20OOH(i)-1; fBENZAL(i)=fBENZAL(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'RA16BOOH + hv = OH + RAROH14';
k(:,i) = J41;
Gstr{i,1} = 'RA16BOOH'; 
fRA16BOOH(i)=fRA16BOOH(i)-1; fOH(i)=fOH(i)+1; fRAROH14(i)=fRAROH14(i)+1; 

i=i+1;
Rnames{i} = 'RTN28OOH + hv = HO2 + OH + TNCARB26';
k(:,i) = J41;
Gstr{i,1} = 'RTN28OOH'; 
fRTN28OOH(i)=fRTN28OOH(i)-1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; fTNCARB26(i)=fTNCARB26(i)+1; 

i=i+1;
Rnames{i} = 'NRTN28OOH + hv = NO2 + OH + TNCARB26';
k(:,i) = J41;
Gstr{i,1} = 'NRTN28OOH'; 
fNRTN28OOH(i)=fNRTN28OOH(i)-1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; fTNCARB26(i)=fTNCARB26(i)+1; 

i=i+1;
Rnames{i} = 'RTN26OOH + hv = OH + RTN25O2';
k(:,i) = J41;
Gstr{i,1} = 'RTN26OOH'; 
fRTN26OOH(i)=fRTN26OOH(i)-1; fOH(i)=fOH(i)+1; fRTN25O2(i)=fRTN25O2(i)+1; 

i=i+1;
Rnames{i} = 'RTN25OOH + hv = OH + RTN24O2';
k(:,i) = J41;
Gstr{i,1} = 'RTN25OOH'; 
fRTN25OOH(i)=fRTN25OOH(i)-1; fOH(i)=fOH(i)+1; fRTN24O2(i)=fRTN24O2(i)+1; 

i=i+1;
Rnames{i} = 'RTN24OOH + hv = OH + RTN23O2';
k(:,i) = J41;
Gstr{i,1} = 'RTN24OOH'; 
fRTN24OOH(i)=fRTN24OOH(i)-1; fOH(i)=fOH(i)+1; fRTN23O2(i)=fRTN23O2(i)+1; 

i=i+1;
Rnames{i} = 'RTN23OOH + hv = CH3COCH3 + OH + RTN14O2';
k(:,i) = J41;
Gstr{i,1} = 'RTN23OOH'; 
fRTN23OOH(i)=fRTN23OOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fOH(i)=fOH(i)+1; fRTN14O2(i)=fRTN14O2(i)+1; 

i=i+1;
Rnames{i} = 'RTN14OOH + hv = HCHO + HO2 + OH + TNCARB10';
k(:,i) = J41;
Gstr{i,1} = 'RTN14OOH'; 
fRTN14OOH(i)=fRTN14OOH(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; fTNCARB10(i)=fTNCARB10(i)+1; 

i=i+1;
Rnames{i} = 'RTN10OOH + hv = CO + OH + RN8O2';
k(:,i) = J41;
Gstr{i,1} = 'RTN10OOH'; 
fRTN10OOH(i)=fRTN10OOH(i)-1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; fRN8O2(i)=fRN8O2(i)+1; 

i=i+1;
Rnames{i} = 'RTX28OOH + hv = HCHO + HO2 + OH + TXCARB24';
k(:,i) = J41;
Gstr{i,1} = 'RTX28OOH'; 
fRTX28OOH(i)=fRTX28OOH(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; fTXCARB24(i)=fTXCARB24(i)+1; 

i=i+1;
Rnames{i} = 'RTX24OOH + hv = HO2 + OH + TXCARB22';
k(:,i) = J41;
Gstr{i,1} = 'RTX24OOH'; 
fRTX24OOH(i)=fRTX24OOH(i)-1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; fTXCARB22(i)=fTXCARB22(i)+1; 

i=i+1;
Rnames{i} = 'RTX22OOH + hv = CH3COCH3 + OH + RN13O2';
k(:,i) = J41;
Gstr{i,1} = 'RTX22OOH'; 
fRTX22OOH(i)=fRTX22OOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fOH(i)=fOH(i)+1; fRN13O2(i)=fRN13O2(i)+1; 

i=i+1;
Rnames{i} = 'NRTX28OOH + hv = HCHO + NO2 + OH + TXCARB24';
k(:,i) = J41;
Gstr{i,1} = 'NRTX28OOH'; 
fNRTX28OOH(i)=fNRTX28OOH(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; fTXCARB24(i)=fTXCARB24(i)+1; 

i=i+1;
Rnames{i} = 'CH3OOH + OH = CH3O2';
k(:,i) = 5.3e-12.*exp(190./T).*0.6;
Gstr{i,1} = 'CH3OOH'; Gstr{i,2} = 'OH'; 
fCH3OOH(i)=fCH3OOH(i)-1; fOH(i)=fOH(i)-1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3OOH + OH = HCHO + OH';
k(:,i) = 5.3e-12.*exp(190./T).*0.4;
Gstr{i,1} = 'CH3OOH'; Gstr{i,2} = 'OH'; 
fCH3OOH(i)=fCH3OOH(i)-1; fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C2H5OOH + OH = CH3CHO + OH';
k(:,i) = 1.36e-11;
Gstr{i,1} = 'C2H5OOH'; Gstr{i,2} = 'OH'; 
fC2H5OOH(i)=fC2H5OOH(i)-1; fOH(i)=fOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN10OOH = C2H5CHO + OH';
k(:,i) = 1.89e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN10OOH'; 
fOH(i)=fOH(i)-1; fRN10OOH(i)=fRN10OOH(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7OOH + OH = CH3COCH3 + OH';
k(:,i) = 2.78e-11;
Gstr{i,1} = 'IC3H7OOH'; Gstr{i,2} = 'OH'; 
fIC3H7OOH(i)=fIC3H7OOH(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN13OOH = CARB11A + OH';
k(:,i) = 3.57e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN13OOH'; 
fOH(i)=fOH(i)-1; fRN13OOH(i)=fRN13OOH(i)-1; fCARB11A(i)=fCARB11A(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN16OOH = CARB14 + OH';
k(:,i) = 4.21e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN16OOH'; 
fOH(i)=fOH(i)-1; fRN16OOH(i)=fRN16OOH(i)-1; fCARB14(i)=fCARB14(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN19OOH = CARB17 + OH';
k(:,i) = 4.71e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN19OOH'; 
fOH(i)=fOH(i)-1; fRN19OOH(i)=fRN19OOH(i)-1; fCARB17(i)=fCARB17(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN22OOH = CARB20 + OH';
k(:,i) = 4.85e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN22OOH'; 
fOH(i)=fOH(i)-1; fRN22OOH(i)=fRN22OOH(i)-1; fCARB20(i)=fCARB20(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN25OOH = CARB23 + OH';
k(:,i) = 4.99e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN25OOH'; 
fOH(i)=fOH(i)-1; fRN25OOH(i)=fRN25OOH(i)-1; fCARB23(i)=fCARB23(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN28OOH = CARB26 + OH';
k(:,i) = 5.13e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN28OOH'; 
fOH(i)=fOH(i)-1; fRN28OOH(i)=fRN28OOH(i)-1; fCARB26(i)=fCARB26(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN31OOH = CARB29 + OH';
k(:,i) = 5.27e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN31OOH'; 
fOH(i)=fOH(i)-1; fRN31OOH(i)=fRN31OOH(i)-1; fCARB29(i)=fCARB29(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN34OOH = CARB32 + OH';
k(:,i) = 5.41e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN34OOH'; 
fOH(i)=fOH(i)-1; fRN34OOH(i)=fRN34OOH(i)-1; fCARB32(i)=fCARB32(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN37OOH = CARB35 + OH';
k(:,i) = 5.55e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN37OOH'; 
fOH(i)=fOH(i)-1; fRN37OOH(i)=fRN37OOH(i)-1; fCARB35(i)=fCARB35(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RI13OOH = CH3COCH3 + HCHO + OH';
k(:,i) = 5.82e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RI13OOH'; 
fOH(i)=fOH(i)-1; fRI13OOH(i)=fRI13OOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RI16OOH = CH3CHO + CH3COCH3 + OH';
k(:,i) = 1.23e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RI16OOH'; 
fOH(i)=fOH(i)-1; fRI16OOH(i)=fRI16OOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3H + OH = CH3CO3';
k(:,i) = 3.70e-12;
Gstr{i,1} = 'CH3CO3H'; Gstr{i,2} = 'OH'; 
fCH3CO3H(i)=fCH3CO3H(i)-1; fOH(i)=fOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3H + OH = C2H5CO3';
k(:,i) = 4.42e-12;
Gstr{i,1} = 'C2H5CO3H'; Gstr{i,2} = 'OH'; 
fC2H5CO3H(i)=fC2H5CO3H(i)-1; fOH(i)=fOH(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3H + OH = HOCH2CO3';
k(:,i) = 6.19e-12;
Gstr{i,1} = 'HOCH2CO3H'; Gstr{i,2} = 'OH'; 
fHOCH2CO3H(i)=fHOCH2CO3H(i)-1; fOH(i)=fOH(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN8OOH = CARB6 + OH';
k(:,i) = 1.20e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN8OOH'; 
fOH(i)=fOH(i)-1; fRN8OOH(i)=fRN8OOH(i)-1; fCARB6(i)=fCARB6(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN11OOH = CARB9 + OH';
k(:,i) = 2.50e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN11OOH'; 
fOH(i)=fOH(i)-1; fRN11OOH(i)=fRN11OOH(i)-1; fCARB9(i)=fCARB9(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN14OOH = CARB12 + OH';
k(:,i) = 3.20e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN14OOH'; 
fOH(i)=fOH(i)-1; fRN14OOH(i)=fRN14OOH(i)-1; fCARB12(i)=fCARB12(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN17OOH = CARB15 + OH';
k(:,i) = 3.35e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN17OOH'; 
fOH(i)=fOH(i)-1; fRN17OOH(i)=fRN17OOH(i)-1; fCARB15(i)=fCARB15(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN20OOH = CARB18 + OH';
k(:,i) = 3.50e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN20OOH'; 
fOH(i)=fOH(i)-1; fRN20OOH(i)=fRN20OOH(i)-1; fCARB18(i)=fCARB18(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN23OOH = CARB21 + OH';
k(:,i) = 3.65e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN23OOH'; 
fOH(i)=fOH(i)-1; fRN23OOH(i)=fRN23OOH(i)-1; fCARB21(i)=fCARB21(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN26OOH = CARB24 + OH';
k(:,i) = 3.80e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN26OOH'; 
fOH(i)=fOH(i)-1; fRN26OOH(i)=fRN26OOH(i)-1; fCARB24(i)=fCARB24(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN29OOH = CARB27 + OH';
k(:,i) = 3.95e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN29OOH'; 
fOH(i)=fOH(i)-1; fRN29OOH(i)=fRN29OOH(i)-1; fCARB27(i)=fCARB27(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN32OOH = CARB30 + OH';
k(:,i) = 4.10e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN32OOH'; 
fOH(i)=fOH(i)-1; fRN32OOH(i)=fRN32OOH(i)-1; fCARB30(i)=fCARB30(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN35OOH = CARB33 + OH';
k(:,i) = 4.25e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN35OOH'; 
fOH(i)=fOH(i)-1; fRN35OOH(i)=fRN35OOH(i)-1; fCARB33(i)=fCARB33(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RI11OOH = RI11O2';
k(:,i) = 6.26e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RI11OOH'; 
fOH(i)=fOH(i)-1; fRI11OOH(i)=fRI11OOH(i)-1; fRI11O2(i)=fRI11O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RI14OOH = RI14O2';
k(:,i) = 1.58e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RI14OOH'; 
fOH(i)=fOH(i)-1; fRI14OOH(i)=fRI14OOH(i)-1; fRI14O2(i)=fRI14O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RI17OOH = RI17O2';
k(:,i) = 4.89e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RI17OOH'; 
fOH(i)=fOH(i)-1; fRI17OOH(i)=fRI17OOH(i)-1; fRI17O2(i)=fRI17O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RU11OOH = CH3CHO + HCHO + OH';
k(:,i) = 7.89e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RU11OOH'; 
fOH(i)=fOH(i)-1; fRU11OOH(i)=fRU11OOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RU14OOH = OH + UCARB12';
k(:,i) = 7.14e-11.*0.09;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RU14OOH'; 
fOH(i)=fOH(i)-1; fRU14OOH(i)=fRU14OOH(i)-1; fOH(i)=fOH(i)+1; fUCARB12(i)=fUCARB12(i)+1; 

i=i+1;
Rnames{i} = 'OH + RU12OOH = CO + HO2 + RU10OOH';
k(:,i) = 3.50e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RU12OOH'; 
fOH(i)=fOH(i)-1; fRU12OOH(i)=fRU12OOH(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fRU10OOH(i)=fRU10OOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RU10OOH = CARB7 + CO + OH';
k(:,i) = 3.84e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RU10OOH'; 
fOH(i)=fOH(i)-1; fRU10OOH(i)=fRU10OOH(i)-1; fCARB7(i)=fCARB7(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NRU14OOH + OH = NUCARB12 + OH';
k(:,i) = 1.03e-10;
Gstr{i,1} = 'NRU14OOH'; Gstr{i,2} = 'OH'; 
fNRU14OOH(i)=fNRU14OOH(i)-1; fOH(i)=fOH(i)-1; fNUCARB12(i)=fNUCARB12(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NRU12OOH + OH = CARB3 + NOA + OH';
k(:,i) = 2.65e-11;
Gstr{i,1} = 'NRU12OOH'; Gstr{i,2} = 'OH'; 
fNRU12OOH(i)=fNRU12OOH(i)-1; fOH(i)=fOH(i)-1; fCARB3(i)=fCARB3(i)+1; fNOA(i)=fNOA(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4OOH + OH = HOCH2CHO + OH';
k(:,i) = 2.13e-11;
Gstr{i,1} = 'HOC2H4OOH'; Gstr{i,2} = 'OH'; 
fHOC2H4OOH(i)=fHOC2H4OOH(i)-1; fOH(i)=fOH(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN9OOH = CARB7 + OH';
k(:,i) = 2.50e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN9OOH'; 
fOH(i)=fOH(i)-1; fRN9OOH(i)=fRN9OOH(i)-1; fCARB7(i)=fCARB7(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN12OOH = CARB10 + OH';
k(:,i) = 3.25e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN12OOH'; 
fOH(i)=fOH(i)-1; fRN12OOH(i)=fRN12OOH(i)-1; fCARB10(i)=fCARB10(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN15OOH = CARB13 + OH';
k(:,i) = 3.74e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN15OOH'; 
fOH(i)=fOH(i)-1; fRN15OOH(i)=fRN15OOH(i)-1; fCARB13(i)=fCARB13(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN18OOH = CARB16 + OH';
k(:,i) = 3.83e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN18OOH'; 
fOH(i)=fOH(i)-1; fRN18OOH(i)=fRN18OOH(i)-1; fCARB16(i)=fCARB16(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN21OOH = CARB19 + OH';
k(:,i) = 5.25e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN21OOH'; 
fOH(i)=fOH(i)-1; fRN21OOH(i)=fRN21OOH(i)-1; fCARB19(i)=fCARB19(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN24OOH = CARB22 + OH';
k(:,i) = 5.40e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN24OOH'; 
fOH(i)=fOH(i)-1; fRN24OOH(i)=fRN24OOH(i)-1; fCARB22(i)=fCARB22(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN27OOH = CARB25 + OH';
k(:,i) = 5.55e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN27OOH'; 
fOH(i)=fOH(i)-1; fRN27OOH(i)=fRN27OOH(i)-1; fCARB25(i)=fCARB25(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN30OOH = CARB28 + OH';
k(:,i) = 5.70e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN30OOH'; 
fOH(i)=fOH(i)-1; fRN30OOH(i)=fRN30OOH(i)-1; fCARB28(i)=fCARB28(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN33OOH = CARB31 + OH';
k(:,i) = 5.85e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN33OOH'; 
fOH(i)=fOH(i)-1; fRN33OOH(i)=fRN33OOH(i)-1; fCARB31(i)=fCARB31(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RN36OOH = CARB34 + OH';
k(:,i) = 6.00e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RN36OOH'; 
fOH(i)=fOH(i)-1; fRN36OOH(i)=fRN36OOH(i)-1; fCARB34(i)=fCARB34(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RI12OOH = RI12O2';
k(:,i) = 8.10e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RI12OOH'; 
fOH(i)=fOH(i)-1; fRI12OOH(i)=fRI12OOH(i)-1; fRI12O2(i)=fRI12O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RI15OOH = RI15O2';
k(:,i) = 1.66e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RI15OOH'; 
fOH(i)=fOH(i)-1; fRI15OOH(i)=fRI15OOH(i)-1; fRI15O2(i)=fRI15O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RC18OOH = CYHEXONE + OH';
k(:,i) = 3.53e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RC18OOH'; 
fOH(i)=fOH(i)-1; fRC18OOH(i)=fRC18OOH(i)-1; fCYHEXONE(i)=fCYHEXONE(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NRN6OOH + OH = HCHO + HCHO + NO2 + OH';
k(:,i) = 5.22e-12;
Gstr{i,1} = 'NRN6OOH'; Gstr{i,2} = 'OH'; 
fNRN6OOH(i)=fNRN6OOH(i)-1; fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NRN9OOH + OH = CH3CHO + HCHO + NO2 + OH';
k(:,i) = 6.50e-12;
Gstr{i,1} = 'NRN9OOH'; Gstr{i,2} = 'OH'; 
fNRN9OOH(i)=fNRN9OOH(i)-1; fOH(i)=fOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NRN12OOH + OH = CH3CHO + CH3CHO + NO2 + OH';
k(:,i) = 7.15e-12;
Gstr{i,1} = 'NRN12OOH'; Gstr{i,2} = 'OH'; 
fNRN12OOH(i)=fNRN12OOH(i)-1; fOH(i)=fOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NRN15OOH + OH = C2H5CHO + CH3CHO + NO2 + OH';
k(:,i) = 9.05e-12;
Gstr{i,1} = 'NRN15OOH'; Gstr{i,2} = 'OH'; 
fNRN15OOH(i)=fNRN15OOH(i)-1; fOH(i)=fOH(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NRN18OOH + OH = C2H5CHO + C2H5CHO + NO2 + OH';
k(:,i) = 1.08e-11;
Gstr{i,1} = 'NRN18OOH'; Gstr{i,2} = 'OH'; 
fNRN18OOH(i)=fNRN18OOH(i)-1; fOH(i)=fOH(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fC2H5CHO(i)=fC2H5CHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NRI12OOH + OH = CH3COCH3 + HCHO + NO2 + OH';
k(:,i) = 4.18e-12;
Gstr{i,1} = 'NRI12OOH'; Gstr{i,2} = 'OH'; 
fNRI12OOH(i)=fNRI12OOH(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NRI15OOH + OH = CH3CHO + CH3COCH3 + NO2 + OH';
k(:,i) = 7.00e-12;
Gstr{i,1} = 'NRI15OOH'; Gstr{i,2} = 'OH'; 
fNRI15OOH(i)=fNRI15OOH(i)-1; fOH(i)=fOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RA13OOH = CARB3 + OH + UDCARB8';
k(:,i) = 9.77e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RA13OOH'; 
fOH(i)=fOH(i)-1; fRA13OOH(i)=fRA13OOH(i)-1; fCARB3(i)=fCARB3(i)+1; fOH(i)=fOH(i)+1; fUDCARB8(i)=fUDCARB8(i)+1; 

i=i+1;
Rnames{i} = 'OH + RA16OOH = CARB3 + OH + UDCARB11';
k(:,i) = 9.64e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RA16OOH'; 
fOH(i)=fOH(i)-1; fRA16OOH(i)=fRA16OOH(i)-1; fCARB3(i)=fCARB3(i)+1; fOH(i)=fOH(i)+1; fUDCARB11(i)=fUDCARB11(i)+1; 

i=i+1;
Rnames{i} = 'OH + RA19OOH = CARB6 + OH + UDCARB11';
k(:,i) = 1.12e-10;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RA19OOH'; 
fOH(i)=fOH(i)-1; fRA19OOH(i)=fRA19OOH(i)-1; fCARB6(i)=fCARB6(i)+1; fOH(i)=fOH(i)+1; fUDCARB11(i)=fUDCARB11(i)+1; 

i=i+1;
Rnames{i} = 'OH + RA22OOH = CARB6 + OH + UDCARB14';
k(:,i) = 1.28e-10;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RA22OOH'; 
fOH(i)=fOH(i)-1; fRA22OOH(i)=fRA22OOH(i)-1; fCARB6(i)=fCARB6(i)+1; fOH(i)=fOH(i)+1; fUDCARB14(i)=fUDCARB14(i)+1; 

i=i+1;
Rnames{i} = 'OH + RA25OOH = CARB6 + OH + UDCARB17';
k(:,i) = 1.28e-10;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RA25OOH'; 
fOH(i)=fOH(i)-1; fRA25OOH(i)=fRA25OOH(i)-1; fCARB6(i)=fCARB6(i)+1; fOH(i)=fOH(i)+1; fUDCARB17(i)=fUDCARB17(i)+1; 

i=i+1;
Rnames{i} = 'OH + RA28OOH = CARB6 + OH + UDCARB20';
k(:,i) = 1.28e-10;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RA28OOH'; 
fOH(i)=fOH(i)-1; fRA28OOH(i)=fRA28OOH(i)-1; fCARB6(i)=fCARB6(i)+1; fOH(i)=fOH(i)+1; fUDCARB20(i)=fUDCARB20(i)+1; 

i=i+1;
Rnames{i} = 'OH + RUA20OOH = BENZAL + HCHO + OH';
k(:,i) = 6.16e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RUA20OOH'; 
fOH(i)=fOH(i)-1; fRUA20OOH(i)=fRUA20OOH(i)-1; fBENZAL(i)=fBENZAL(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RA16BOOH = RA16BO2';
k(:,i) = 4.66e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RA16BOOH'; 
fOH(i)=fOH(i)-1; fRA16BOOH(i)=fRA16BOOH(i)-1; fRA16BO2(i)=fRA16BO2(i)+1; 

i=i+1;
Rnames{i} = 'NRUA20OOH + OH = BENZAL + HCHO + NO2 + OH';
k(:,i) = 6.16e-11;
Gstr{i,1} = 'NRUA20OOH'; Gstr{i,2} = 'OH'; 
fNRUA20OOH(i)=fNRUA20OOH(i)-1; fOH(i)=fOH(i)-1; fBENZAL(i)=fBENZAL(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RTN28OOH = OH + TNCARB26';
k(:,i) = 2.38e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RTN28OOH'; 
fOH(i)=fOH(i)-1; fRTN28OOH(i)=fRTN28OOH(i)-1; fOH(i)=fOH(i)+1; fTNCARB26(i)=fTNCARB26(i)+1; 

i=i+1;
Rnames{i} = 'OH + RTN26OOH = RTN26O2';
k(:,i) = 1.20e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RTN26OOH'; 
fOH(i)=fOH(i)-1; fRTN26OOH(i)=fRTN26OOH(i)-1; fRTN26O2(i)=fRTN26O2(i)+1; 

i=i+1;
Rnames{i} = 'NRTN28OOH + OH = NO2 + OH + TNCARB26';
k(:,i) = 9.50e-12;
Gstr{i,1} = 'NRTN28OOH'; Gstr{i,2} = 'OH'; 
fNRTN28OOH(i)=fNRTN28OOH(i)-1; fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; fTNCARB26(i)=fTNCARB26(i)+1; 

i=i+1;
Rnames{i} = 'OH + RTN25OOH = RTN25O2';
k(:,i) = 1.66e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RTN25OOH'; 
fOH(i)=fOH(i)-1; fRTN25OOH(i)=fRTN25OOH(i)-1; fRTN25O2(i)=fRTN25O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RTN24OOH = RTN24O2';
k(:,i) = 1.05e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RTN24OOH'; 
fOH(i)=fOH(i)-1; fRTN24OOH(i)=fRTN24OOH(i)-1; fRTN24O2(i)=fRTN24O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RTN23OOH = RTN23O2';
k(:,i) = 2.05e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RTN23OOH'; 
fOH(i)=fOH(i)-1; fRTN23OOH(i)=fRTN23OOH(i)-1; fRTN23O2(i)=fRTN23O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RTN14OOH = RTN14O2';
k(:,i) = 8.69e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RTN14OOH'; 
fOH(i)=fOH(i)-1; fRTN14OOH(i)=fRTN14OOH(i)-1; fRTN14O2(i)=fRTN14O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RTN10OOH = RTN10O2';
k(:,i) = 4.23e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RTN10OOH'; 
fOH(i)=fOH(i)-1; fRTN10OOH(i)=fRTN10OOH(i)-1; fRTN10O2(i)=fRTN10O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RTX28OOH = RTX28O2';
k(:,i) = 2.00e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RTX28OOH'; 
fOH(i)=fOH(i)-1; fRTX28OOH(i)=fRTX28OOH(i)-1; fRTX28O2(i)=fRTX28O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RTX24OOH = OH + TXCARB22';
k(:,i) = 8.59e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RTX24OOH'; 
fOH(i)=fOH(i)-1; fRTX24OOH(i)=fRTX24OOH(i)-1; fOH(i)=fOH(i)+1; fTXCARB22(i)=fTXCARB22(i)+1; 

i=i+1;
Rnames{i} = 'OH + RTX22OOH = CCARB12 + CH3COCH3 + OH';
k(:,i) = 7.50e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RTX22OOH'; 
fOH(i)=fOH(i)-1; fRTX22OOH(i)=fRTX22OOH(i)-1; fCCARB12(i)=fCCARB12(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NRTX28OOH + OH = NRTX28O2';
k(:,i) = 9.58e-12;
Gstr{i,1} = 'NRTX28OOH'; Gstr{i,2} = 'OH'; 
fNRTX28OOH(i)=fNRTX28OOH(i)-1; fOH(i)=fOH(i)-1; fNRTX28O2(i)=fNRTX28O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + NO2 = PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'NO2'; 
fCH3CO3(i)=fCH3CO3(i)-1; fNO2(i)=fNO2(i)-1; fPAN(i)=fPAN(i)+1; 

i=i+1;
Rnames{i} = 'PAN = CH3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'PAN'; 
fPAN(i)=fPAN(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3 + NO2 = PPN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'NO2'; 
fC2H5CO3(i)=fC2H5CO3(i)-1; fNO2(i)=fNO2(i)-1; fPPN(i)=fPPN(i)+1; 

i=i+1;
Rnames{i} = 'PPN = C2H5CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'PPN'; 
fPPN(i)=fPPN(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + NO2 = PHAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'NO2'; 
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fNO2(i)=fNO2(i)-1; fPHAN(i)=fPHAN(i)+1; 

i=i+1;
Rnames{i} = 'PHAN = HOCH2CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'PHAN'; 
fPHAN(i)=fPHAN(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + PAN = CO + HCHO + NO2';
k(:,i) = 3.00e-14;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PAN'; 
fOH(i)=fOH(i)-1; fPAN(i)=fPAN(i)-1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + PPN = CH3CHO + CO + NO2';
k(:,i) = 1.27e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PPN'; 
fOH(i)=fOH(i)-1; fPPN(i)=fPPN(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + PHAN = CO + HCHO + NO2';
k(:,i) = 1.12e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PHAN'; 
fOH(i)=fOH(i)-1; fPHAN(i)=fPHAN(i)-1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MPAN = MACO3 + NO2';
k(:,i) = 1.60e16.*exp(-13500./T);
Gstr{i,1} = 'MPAN'; 
fMPAN(i)=fMPAN(i)-1; fMACO3(i)=fMACO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MPAN + OH = CARB7 + CO + NO2';
k(:,i) = 2.90e-11.*0.22;
Gstr{i,1} = 'MPAN'; Gstr{i,2} = 'OH'; 
fMPAN(i)=fMPAN(i)-1; fOH(i)=fOH(i)-1; fCARB7(i)=fCARB7(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + RTN26O2 = RTN26PAN';
k(:,i) = KFPAN.*0.722;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'RTN26O2'; 
fNO2(i)=fNO2(i)-1; fRTN26O2(i)=fRTN26O2(i)-1; fRTN26PAN(i)=fRTN26PAN(i)+1; 

i=i+1;
Rnames{i} = 'RTN26PAN = NO2 + RTN26O2';
k(:,i) = KBPAN;
Gstr{i,1} = 'RTN26PAN'; 
fRTN26PAN(i)=fRTN26PAN(i)-1; fNO2(i)=fNO2(i)+1; fRTN26O2(i)=fRTN26O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RTN26PAN = CARB16 + CH3COCH3 + NO2';
k(:,i) = 3.66e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RTN26PAN'; 
fOH(i)=fOH(i)-1; fRTN26PAN(i)=fRTN26PAN(i)-1; fCARB16(i)=fCARB16(i)+1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5H8 + O3 = H2O2 + HCHO + UCARB10';
k(:,i) = 1.03e-14.*exp(-1995./T).*0.385;
Gstr{i,1} = 'C5H8'; Gstr{i,2} = 'O3'; 
fC5H8(i)=fC5H8(i)-1; fO3(i)=fO3(i)-1; fH2O2(i)=fH2O2(i)+1; fHCHO(i)=fHCHO(i)+1; fUCARB10(i)=fUCARB10(i)+1; 

i=i+1;
Rnames{i} = 'C5H8 + O3 = CH3CO3 + CO + HCHO + HCHO + OH';
k(:,i) = 1.03e-14.*exp(-1995./T).*0.125;
Gstr{i,1} = 'C5H8'; Gstr{i,2} = 'O3'; 
fC5H8(i)=fC5H8(i)-1; fO3(i)=fO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5H8 + O3 = CO + UCARB10';
k(:,i) = 1.03e-14.*exp(-1995./T).*0.095;
Gstr{i,1} = 'C5H8'; Gstr{i,2} = 'O3'; 
fC5H8(i)=fC5H8(i)-1; fO3(i)=fO3(i)-1; fCO(i)=fCO(i)+1; fUCARB10(i)=fUCARB10(i)+1; 

i=i+1;
Rnames{i} = 'C5H8 + O3 = CH3O2 + CO + HCHO + HCHO + HO2';
k(:,i) = 1.03e-14.*exp(-1995./T).*0.095;
Gstr{i,1} = 'C5H8'; Gstr{i,2} = 'O3'; 
fC5H8(i)=fC5H8(i)-1; fO3(i)=fO3(i)-1; fCH3O2(i)=fCH3O2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RU14O2 = HCHO + OH + UCARB10';
k(:,i) = 1.24D11.*exp(-9750./T);
Gstr{i,1} = 'RU14O2'; 
fRU14O2(i)=fRU14O2(i)-1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; fUCARB10(i)=fUCARB10(i)+1; 

i=i+1;
Rnames{i} = 'DHPR12O2 + NO = CARB3 + NO2 + OH + RN8OOH';
k(:,i) = KRO2NO;
Gstr{i,1} = 'DHPR12O2'; Gstr{i,2} = 'NO'; 
fDHPR12O2(i)=fDHPR12O2(i)-1; fNO(i)=fNO(i)-1; fCARB3(i)=fCARB3(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; fRN8OOH(i)=fRN8OOH(i)+1; 

i=i+1;
Rnames{i} = 'DHPR12O2 + NO3 = CARB3 + NO2 + OH + RN8OOH';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'DHPR12O2'; Gstr{i,2} = 'NO3'; 
fDHPR12O2(i)=fDHPR12O2(i)-1; fNO3(i)=fNO3(i)-1; fCARB3(i)=fCARB3(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; fRN8OOH(i)=fRN8OOH(i)+1; 

i=i+1;
Rnames{i} = 'DHPR12O2 + HO2 = DHPR12OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'DHPR12O2'; Gstr{i,2} = 'HO2'; 
fDHPR12O2(i)=fDHPR12O2(i)-1; fHO2(i)=fHO2(i)-1; fDHPR12OOH(i)=fDHPR12OOH(i)+1; 

i=i+1;
Rnames{i} = 'DHPR12O2 + RO2 = CARB3 + OH + RN8OOH';
k(:,i) = 7.60e-13;
Gstr{i,1} = 'DHPR12O2'; Gstr{i,2} = 'RO2';
fDHPR12O2(i)=fDHPR12O2(i)-1; fCARB3(i)=fCARB3(i)+1; fOH(i)=fOH(i)+1; fRN8OOH(i)=fRN8OOH(i)+1; 

i=i+1;
Rnames{i} = 'DHPR12O2 = CO + DHPCARB9 + OH';
k(:,i) = K14ISOM1;
Gstr{i,1} = 'DHPR12O2'; 
fDHPR12O2(i)=fDHPR12O2(i)-1; fCO(i)=fCO(i)+1; fDHPCARB9(i)=fDHPCARB9(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RU14NO3 = HCHO + HO2 + RU10NO3';
k(:,i) = 3.00e-11.*0.48;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RU14NO3'; 
fOH(i)=fOH(i)-1; fRU14NO3(i)=fRU14NO3(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fRU10NO3(i)=fRU10NO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + RU14NO3 = HO2 + RU12NO3';
k(:,i) = 3.00e-11.*0.18;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RU14NO3'; 
fOH(i)=fOH(i)-1; fRU14NO3(i)=fRU14NO3(i)-1; fHO2(i)=fHO2(i)+1; fRU12NO3(i)=fRU12NO3(i)+1; 

i=i+1;
Rnames{i} = 'RU14NO3 + hv = HCHO + HO2 + NO2 + UCARB10';
k(:,i) = J55.*0.78;
Gstr{i,1} = 'RU14NO3'; 
fRU14NO3(i)=fRU14NO3(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fUCARB10(i)=fUCARB10(i)+1; 

i=i+1;
Rnames{i} = 'OH + RU12NO3 = CARB3 + CARB7 + NO2';
k(:,i) = 2.50e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RU12NO3'; 
fOH(i)=fOH(i)-1; fRU12NO3(i)=fRU12NO3(i)-1; fCARB3(i)=fCARB3(i)+1; fCARB7(i)=fCARB7(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'RU12NO3 + hv = CARB6 + HO2 + HOCH2CHO + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'RU12NO3'; 
fRU12NO3(i)=fRU12NO3(i)-1; fCARB6(i)=fCARB6(i)+1; fHO2(i)=fHO2(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RU10NO3 = CARB7 + CO + NO2';
k(:,i) = 5.26e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RU10NO3'; 
fOH(i)=fOH(i)-1; fRU10NO3(i)=fRU10NO3(i)-1; fCARB7(i)=fCARB7(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'RU10NO3 + hv = CH3CO3 + HOCH2CHO + NO2';
k(:,i) = J56.*1.6;
Gstr{i,1} = 'RU10NO3'; 
fRU10NO3(i)=fRU10NO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + RU14OOH = IEPOX + OH';
k(:,i) = 7.14e-11.*0.85;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RU14OOH'; 
fOH(i)=fOH(i)-1; fRU14OOH(i)=fRU14OOH(i)-1; fIEPOX(i)=fIEPOX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + RU14OOH = RU14O2';
k(:,i) = 7.14e-11.*0.06;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RU14OOH'; 
fOH(i)=fOH(i)-1; fRU14OOH(i)=fRU14OOH(i)-1; fRU14O2(i)=fRU14O2(i)+1; 

i=i+1;
Rnames{i} = 'IEPOX + OH = RU12O2';
k(:,i) = 1.16e-11;
Gstr{i,1} = 'IEPOX'; Gstr{i,2} = 'OH'; 
fIEPOX(i)=fIEPOX(i)-1; fOH(i)=fOH(i)-1; fRU12O2(i)=fRU12O2(i)+1; 

i=i+1;
Rnames{i} = 'UCARB12 + hv = HO2 + RU12O2';
k(:,i) = J18;
Gstr{i,1} = 'UCARB12'; 
fUCARB12(i)=fUCARB12(i)-1; fHO2(i)=fHO2(i)+1; fRU12O2(i)=fRU12O2(i)+1; 

i=i+1;
Rnames{i} = 'UCARB12 + hv = CARB7 + CO + CO + HO2 + HO2';
k(:,i) = J18.*0.5;
Gstr{i,1} = 'UCARB12'; 
fUCARB12(i)=fUCARB12(i)-1; fCARB7(i)=fCARB7(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RU12O2 = CARB7 + HOCH2CO3 + NO2';
k(:,i) = KRO2NO.*0.170;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RU12O2'; 
fNO(i)=fNO(i)-1; fRU12O2(i)=fRU12O2(i)-1; fCARB7(i)=fCARB7(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RU12O2 = RU12NO3';
k(:,i) = KRO2NO.*0.035;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RU12O2'; 
fNO(i)=fNO(i)-1; fRU12O2(i)=fRU12O2(i)-1; fRU12NO3(i)=fRU12NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RU12O2 = CARB7 + HOCH2CO3 + NO2';
k(:,i) = KRO2NO3.*0.176;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RU12O2'; 
fNO3(i)=fNO3(i)-1; fRU12O2(i)=fRU12O2(i)-1; fCARB7(i)=fCARB7(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'RU12O2 + RO2 = CARB7 + HOCH2CO3';
k(:,i) = 4.20e-13.*0.176;
Gstr{i,1} = 'RU12O2'; Gstr{i,2} = 'RO2';
fRU12O2(i)=fRU12O2(i)-1; fCARB7(i)=fCARB7(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'RU12O2 = CO + DHCARB9 + OH';
k(:,i) = K14ISOM1.*0.008;
Gstr{i,1} = 'RU12O2'; 
fRU12O2(i)=fRU12O2(i)-1; fCO(i)=fCO(i)+1; fDHCARB9(i)=fDHCARB9(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + UCARB10 = RU10AO2';
k(:,i) = 3.84e-12.*exp(533./T).*0.157;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'UCARB10'; 
fOH(i)=fOH(i)-1; fUCARB10(i)=fUCARB10(i)-1; fRU10AO2(i)=fRU10AO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + UCARB10 = MACO3';
k(:,i) = 3.84e-12.*exp(533./T).*0.150;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'UCARB10'; 
fOH(i)=fOH(i)-1; fUCARB10(i)=fUCARB10(i)-1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + RU10AO2 = CARB7 + CO + HO2 + NO2';
k(:,i) = KRO2NO.*0.987;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RU10AO2'; 
fNO(i)=fNO(i)-1; fRU10AO2(i)=fRU10AO2(i)-1; fCARB7(i)=fCARB7(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + RU10AO2 = RU10NO3';
k(:,i) = KRO2NO.*0.013;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'RU10AO2'; 
fNO(i)=fNO(i)-1; fRU10AO2(i)=fRU10AO2(i)-1; fRU10NO3(i)=fRU10NO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + RU10AO2 = CARB7 + CO + HO2 + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'RU10AO2'; 
fNO3(i)=fNO3(i)-1; fRU10AO2(i)=fRU10AO2(i)-1; fCARB7(i)=fCARB7(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RU10AO2 = RU10OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RU10AO2'; 
fHO2(i)=fHO2(i)-1; fRU10AO2(i)=fRU10AO2(i)-1; fRU10OOH(i)=fRU10OOH(i)+1; 

i=i+1;
Rnames{i} = 'RU10AO2 + RO2 = CARB7 + CO + HO2';
k(:,i) = 3.60e-13;
Gstr{i,1} = 'RU10AO2'; Gstr{i,2} = 'RO2';
fRU10AO2(i)=fRU10AO2(i)-1; fCARB7(i)=fCARB7(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'RU10AO2 = CARB7 + CO + OH';
k(:,i) = K14ISOM1;
Gstr{i,1} = 'RU10AO2'; 
fRU10AO2(i)=fRU10AO2(i)-1; fCARB7(i)=fCARB7(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 + NO = CH3O2 + CO + HCHO + HO2 + NO2';
k(:,i) = KAPNO.*0.65;
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'NO'; 
fMACO3(i)=fMACO3(i)-1; fNO(i)=fNO(i)-1; fCH3O2(i)=fCH3O2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 + NO = CH3CO3 + HCHO + HO2 + NO2';
k(:,i) = KAPNO.*0.35;
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'NO'; 
fMACO3(i)=fMACO3(i)-1; fNO(i)=fNO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 + NO2 = MPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'NO2'; 
fMACO3(i)=fMACO3(i)-1; fNO2(i)=fNO2(i)-1; fMPAN(i)=fMPAN(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 + NO3 = CH3O2 + CO + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74.*0.65;
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'NO3'; 
fMACO3(i)=fMACO3(i)-1; fNO3(i)=fNO3(i)-1; fCH3O2(i)=fCH3O2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 + NO3 = CH3CO3 + HCHO + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74.*0.35;
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'NO3'; 
fMACO3(i)=fMACO3(i)-1; fNO3(i)=fNO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + MACO3 = RU10OOH';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'MACO3'; 
fHO2(i)=fHO2(i)-1; fMACO3(i)=fMACO3(i)-1; fRU10OOH(i)=fRU10OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + MACO3 = CH3O2 + CO + HCHO + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'MACO3'; 
fHO2(i)=fHO2(i)-1; fMACO3(i)=fMACO3(i)-1; fCH3O2(i)=fCH3O2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 + RO2 = CH3O2 + CO + HCHO + HO2';
k(:,i) = 1.00e-11.*0.65;
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'RO2';
fMACO3(i)=fMACO3(i)-1; fCH3O2(i)=fCH3O2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 + RO2 = CH3CO3 + HCHO + HO2';
k(:,i) = 1.00e-11.*0.35;
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'RO2';
fMACO3(i)=fMACO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HPUCARB12 + hv = CO + HUCARB9 + OH + OH';
k(:,i) = J20.*0.5;
Gstr{i,1} = 'HPUCARB12'; 
fHPUCARB12(i)=fHPUCARB12(i)-1; fCO(i)=fCO(i)+1; fHUCARB9(i)=fHUCARB9(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HPUCARB12 + hv = CARB7 + CO + CO + HO2 + OH';
k(:,i) = J20.*0.5;
Gstr{i,1} = 'HPUCARB12'; 
fHPUCARB12(i)=fHPUCARB12(i)-1; fCARB7(i)=fCARB7(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HPUCARB12 + OH = CO + HUCARB9 + OH';
k(:,i) = 5.20e-11;
Gstr{i,1} = 'HPUCARB12'; Gstr{i,2} = 'OH'; 
fHPUCARB12(i)=fHPUCARB12(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fHUCARB9(i)=fHUCARB9(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HPUCARB12 + O3 = CARB3 + CARB6 + OH + OH';
k(:,i) = 2.40e-17;
Gstr{i,1} = 'HPUCARB12'; Gstr{i,2} = 'O3'; 
fHPUCARB12(i)=fHPUCARB12(i)-1; fO3(i)=fO3(i)-1; fCARB3(i)=fCARB3(i)+1; fCARB6(i)=fCARB6(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HPUCARB12 + NO3 = CO + HNO3 + HUCARB9 + OH';
k(:,i) = KNO3AL.*4.25;
Gstr{i,1} = 'HPUCARB12'; Gstr{i,2} = 'NO3'; 
fHPUCARB12(i)=fHPUCARB12(i)-1; fNO3(i)=fNO3(i)-1; fCO(i)=fCO(i)+1; fHNO3(i)=fHNO3(i)+1; fHUCARB9(i)=fHUCARB9(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HUCARB9 + hv = CARB6 + CO + HO2 + OH';
k(:,i) = J20.*0.5;
Gstr{i,1} = 'HUCARB9'; 
fHUCARB9(i)=fHUCARB9(i)-1; fCARB6(i)=fCARB6(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HUCARB9 + OH = CARB6 + CO + HO2';
k(:,i) = 5.78e-11;
Gstr{i,1} = 'HUCARB9'; Gstr{i,2} = 'OH'; 
fHUCARB9(i)=fHUCARB9(i)-1; fOH(i)=fOH(i)-1; fCARB6(i)=fCARB6(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'DHPCARB9 + OH = CO + OH + RN8OOH';
k(:,i) = 3.64e-11;
Gstr{i,1} = 'DHPCARB9'; Gstr{i,2} = 'OH'; 
fDHPCARB9(i)=fDHPCARB9(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; fRN8OOH(i)=fRN8OOH(i)+1; 

i=i+1;
Rnames{i} = 'DHPCARB9 + hv = CO + HO2 + OH + RN8OOH';
k(:,i) = J15;
Gstr{i,1} = 'DHPCARB9'; 
fDHPCARB9(i)=fDHPCARB9(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; fRN8OOH(i)=fRN8OOH(i)+1; 

i=i+1;
Rnames{i} = 'DHPCARB9 + hv = CARB6 + HCHO + OH + OH';
k(:,i) = J41.*2;
Gstr{i,1} = 'DHPCARB9'; 
fDHPCARB9(i)=fDHPCARB9(i)-1; fCARB6(i)=fCARB6(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DHCARB9 + OH = CARB6 + HO2';
k(:,i) = 3.42e-11;
Gstr{i,1} = 'DHCARB9'; Gstr{i,2} = 'OH'; 
fDHCARB9(i)=fDHCARB9(i)-1; fOH(i)=fOH(i)-1; fCARB6(i)=fCARB6(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'DHCARB9 + hv = CARB7 + CO + HO2 + HO2';
k(:,i) = J17;
Gstr{i,1} = 'DHCARB9'; 
fDHCARB9(i)=fDHCARB9(i)-1; fCARB7(i)=fCARB7(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MPAN + OH = HMML + NO3';
k(:,i) = 2.90e-11.*0.78;
Gstr{i,1} = 'MPAN'; Gstr{i,2} = 'OH'; 
fMPAN(i)=fMPAN(i)-1; fOH(i)=fOH(i)-1; fHMML(i)=fHMML(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'NUCARB12 + hv = CARB7 + CO + CO + HO2 + NO2';
k(:,i) = J56.*8;
Gstr{i,1} = 'NUCARB12'; 
fNUCARB12(i)=fNUCARB12(i)-1; fCARB7(i)=fCARB7(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + NRU12O2 = CARB3 + HO2 + NO2 + NOA';
k(:,i) = KRO2NO.*0.5;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NRU12O2'; 
fNO(i)=fNO(i)-1; fNRU12O2(i)=fNRU12O2(i)-1; fCARB3(i)=fCARB3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fNOA(i)=fNOA(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + NRU12O2 = CARB3 + HO2 + NO2 + NOA';
k(:,i) = KRO2NO3.*0.5;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NRU12O2'; 
fNO3(i)=fNO3(i)-1; fNRU12O2(i)=fNRU12O2(i)-1; fCARB3(i)=fCARB3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fNOA(i)=fNOA(i)+1; 

i=i+1;
Rnames{i} = 'NRU12O2 + RO2 = CARB3 + HO2 + NOA';
k(:,i) = 9.60e-13.*0.5;
Gstr{i,1} = 'NRU12O2'; Gstr{i,2} = 'RO2';
fNRU12O2(i)=fNRU12O2(i)-1; fCARB3(i)=fCARB3(i)+1; fHO2(i)=fHO2(i)+1; fNOA(i)=fNOA(i)+1; 

i=i+1;
Rnames{i} = 'DHPR12OOH + OH = CO + DHPCARB9 + OH';
k(:,i) = 5.64e-11;
Gstr{i,1} = 'DHPR12OOH'; Gstr{i,2} = 'OH'; 
fDHPR12OOH(i)=fDHPR12OOH(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fDHPCARB9(i)=fDHPCARB9(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DHPR12OOH + hv = CO + DHPCARB9 + HO2 + OH';
k(:,i) = J17;
Gstr{i,1} = 'DHPR12OOH'; 
fDHPR12OOH(i)=fDHPR12OOH(i)-1; fCO(i)=fCO(i)+1; fDHPCARB9(i)=fDHPCARB9(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DHPR12OOH + hv = CARB3 + OH + OH + RN8OOH';
k(:,i) = J41.*3;
Gstr{i,1} = 'DHPR12OOH'; 
fDHPR12OOH(i)=fDHPR12OOH(i)-1; fCARB3(i)=fCARB3(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; fRN8OOH(i)=fRN8OOH(i)+1; 

i=i+1;
Rnames{i} = 'HMML + OH = CARB6 + OH';
k(:,i) = 4.33e-12.*0.7;
Gstr{i,1} = 'HMML'; Gstr{i,2} = 'OH'; 
fHMML(i)=fHMML(i)-1; fOH(i)=fOH(i)-1; fCARB6(i)=fCARB6(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HMML + OH = CH3CO3 + HCOOH';
k(:,i) = 4.33e-12.*0.3;
Gstr{i,1} = 'HMML'; Gstr{i,2} = 'OH'; 
fHMML(i)=fHMML(i)-1; fOH(i)=fOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCOOH(i)=fHCOOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + HO2 = CH3O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'HO2'; 
fCH3CO3(i)=fCH3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3O2(i)=fCH3O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HOCH2CO3 = HCHO + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HOCH2CO3'; 
fHO2(i)=fHO2(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'O3 + UCARB12 = CARB3 + CH3CO3 + HOCH2CHO + OH';
k(:,i) = 2.40e-17.*0.25;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'UCARB12'; 
fO3(i)=fO3(i)-1; fUCARB12(i)=fUCARB12(i)-1; fCARB3(i)=fCARB3(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CARB3 + OH = CO + OH';
k(:,i) = 3.10e-12.*exp(340./T).*0.2;
Gstr{i,1} = 'CARB3'; Gstr{i,2} = 'OH'; 
fCARB3(i)=fCARB3(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CARB3 + hv = CO + CO + H2';
k(:,i) = J31;
Gstr{i,1} = 'CARB3'; 
fCARB3(i)=fCARB3(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fH2(i)=fH2(i)+1; 

i=i+1;
Rnames{i} = 'CARB3 + hv = CO + HCHO';
k(:,i) = J32;
Gstr{i,1} = 'CARB3'; 
fCARB3(i)=fCARB3(i)-1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3 + HO2 = C2H5O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'HO2'; 
fC2H5CO3(i)=fC2H5CO3(i)-1; fHO2(i)=fHO2(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + RTN26O2 = OH + RTN25O2';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'RTN26O2'; 
fHO2(i)=fHO2(i)-1; fRTN26O2(i)=fRTN26O2(i)-1; fOH(i)=fOH(i)+1; fRTN25O2(i)=fRTN25O2(i)+1; 

i=i+1;
Rnames{i} = 'O = O3';
k(:,i) = 5.6e-34.*.78.*M.*(T./300).^(-2.6).*.21.*M;
Gstr{i,1} = 'O'; 
fO(i)=fO(i)-1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'O = O3';
k(:,i) = 6.0e-34.*.21.*M.*(T./300).^(-2.6).*.21.*M;
Gstr{i,1} = 'O'; 
fO(i)=fO(i)-1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'O + O3 = ';
k(:,i) = 8.0e-12.*exp(-2060./T);
Gstr{i,1} = 'O'; Gstr{i,2} = 'O3'; 
fO(i)=fO(i)-1; fO3(i)=fO3(i)-1; 

i=i+1;
Rnames{i} = 'NO + O = NO2';
k(:,i) = KMT01;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'O'; 
fNO(i)=fNO(i)-1; fO(i)=fO(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + O = NO';
k(:,i) = 5.5e-12.*exp(188./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'O'; 
fNO2(i)=fNO2(i)-1; fO(i)=fO(i)-1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + O = NO3';
k(:,i) = KMT02;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'O'; 
fNO2(i)=fNO2(i)-1; fO(i)=fO(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'O1D = O';
k(:,i) = 3.2e-11.*exp(67./T).*.21.*M;
Gstr{i,1} = 'O1D'; 
fO1D(i)=fO1D(i)-1; fO(i)=fO(i)+1; 

i=i+1;
Rnames{i} = 'O1D = O';
k(:,i) = 2.0e-11.*exp(130./T).*.78.*M;
Gstr{i,1} = 'O1D'; 
fO1D(i)=fO1D(i)-1; fO(i)=fO(i)+1; 

i=i+1;
Rnames{i} = 'NO + O3 = NO2';
k(:,i) = 1.4e-12.*exp(-1310./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'O3'; 
fNO(i)=fNO(i)-1; fO3(i)=fO3(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + O3 = NO3';
k(:,i) = 1.4e-13.*exp(-2470./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'O3'; 
fNO2(i)=fNO2(i)-1; fO3(i)=fO3(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + NO = NO2 + NO2';
k(:,i) = 3.3e-39.*exp(530./T).*.21.*M;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO'; 
fNO(i)=fNO(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + NO3 = NO2 + NO2';
k(:,i) = 1.8e-11.*exp(110./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO3'; 
fNO(i)=fNO(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + NO3 = NO + NO2';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO3'; 
fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)-1; fNO(i)=fNO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + NO3 = N2O5';
k(:,i) = KMT03;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO3'; 
fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)-1; fN2O5(i)=fN2O5(i)+1; 

i=i+1;
Rnames{i} = 'O1D = OH + OH';
k(:,i) = 2.14e-10.*H2O;
Gstr{i,1} = 'O1D'; 
fO1D(i)=fO1D(i)-1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'O3 + OH = HO2';
k(:,i) = 1.70e-12.*exp(-940./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'OH'; 
fO3(i)=fO3(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H2 + OH = HO2';
k(:,i) = 7.7e-12.*exp(-2100./T);
Gstr{i,1} = 'H2'; Gstr{i,2} = 'OH'; 
fH2(i)=fH2(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO + OH = HO2';
k(:,i) = KMT05;
Gstr{i,1} = 'CO'; Gstr{i,2} = 'OH'; 
fCO(i)=fCO(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H2O2 + OH = HO2';
k(:,i) = 2.9e-12.*exp(-160./T);
Gstr{i,1} = 'H2O2'; Gstr{i,2} = 'OH'; 
fH2O2(i)=fH2O2(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + O3 = OH';
k(:,i) = 2.03e-16.*(T./300).^(4.57).*exp(693./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'O3'; 
fHO2(i)=fHO2(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + OH = ';
k(:,i) = 4.8e-11.*exp(250./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'OH'; 
fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)-1; 

i=i+1;
Rnames{i} = 'HO2 + HO2 = H2O2';
k(:,i) = 2.20e-13.*KMT06.*exp(600./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2'; 
fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)-1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HO2 = H2O2';
k(:,i) = 1.90e-33.*M.*KMT06.*exp(980./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2'; 
fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)-1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'NO + OH = HONO';
k(:,i) = KMT07;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'OH'; 
fNO(i)=fNO(i)-1; fOH(i)=fOH(i)-1; fHONO(i)=fHONO(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + OH = HNO3';
k(:,i) = KMT08;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'OH'; 
fNO2(i)=fNO2(i)-1; fOH(i)=fOH(i)-1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + OH = HO2 + NO2';
k(:,i) = 2.0e-11;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'OH'; 
fNO3(i)=fNO3(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NO = NO2 + OH';
k(:,i) = 3.45e-12.*exp(270./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO'; 
fHO2(i)=fHO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NO2 = HO2NO2';
k(:,i) = KMT09;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO2'; 
fHO2(i)=fHO2(i)-1; fNO2(i)=fNO2(i)-1; fHO2NO2(i)=fHO2NO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2NO2 + OH = NO2';
k(:,i) = 3.2e-13.*exp(690./T).*1.0;
Gstr{i,1} = 'HO2NO2'; Gstr{i,2} = 'OH'; 
fHO2NO2(i)=fHO2NO2(i)-1; fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NO3 = NO2 + OH';
k(:,i) = 4.0e-12;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO3'; 
fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HONO + OH = NO2';
k(:,i) = 2.5e-12.*exp(260./T);
Gstr{i,1} = 'HONO'; Gstr{i,2} = 'OH'; 
fHONO(i)=fHONO(i)-1; fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HNO3 + OH = NO3';
k(:,i) = KMT11;
Gstr{i,1} = 'HNO3'; Gstr{i,2} = 'OH'; 
fHNO3(i)=fHNO3(i)-1; fOH(i)=fOH(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'O + SO2 = SO3';
k(:,i) = 4.0e-32.*exp(-1000./T).*M;
Gstr{i,1} = 'O'; Gstr{i,2} = 'SO2'; 
fO(i)=fO(i)-1; fSO2(i)=fSO2(i)-1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + SO2 = HSO3';
k(:,i) = KMT12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'SO2'; 
fOH(i)=fOH(i)-1; fSO2(i)=fSO2(i)-1; fHSO3(i)=fHSO3(i)+1; 

i=i+1;
Rnames{i} = 'HSO3 = HO2 + SO3';
k(:,i) = 1.3e-12.*exp(-330./T).*.21.*M;
Gstr{i,1} = 'HSO3'; 
fHSO3(i)=fHSO3(i)-1; fHO2(i)=fHO2(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'HNO3 = NA';
k(:,i) = 6.00e-06;
Gstr{i,1} = 'HNO3'; 
fHNO3(i)=fHNO3(i)-1; fNA(i)=fNA(i)+1; 

i=i+1;
Rnames{i} = 'N2O5 = NA + NA';
k(:,i) = 4.00e-04;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fNA(i)=fNA(i)+1; fNA(i)=fNA(i)+1; 

i=i+1;
Rnames{i} = 'SO3 = SA';
k(:,i) = 1.20e-15.*H2O;
Gstr{i,1} = 'SO3'; 
fSO3(i)=fSO3(i)-1; fSA(i)=fSA(i)+1; 

i=i+1;
Rnames{i} = 'O3 + hv = O1D';
k(:,i) = J1;
Gstr{i,1} = 'O3'; 
fO3(i)=fO3(i)-1; fO1D(i)=fO1D(i)+1; 

i=i+1;
Rnames{i} = 'O3 + hv = O';
k(:,i) = J2;
Gstr{i,1} = 'O3'; 
fO3(i)=fO3(i)-1; fO(i)=fO(i)+1; 

i=i+1;
Rnames{i} = 'H2O2 + hv = OH + OH';
k(:,i) = J3;
Gstr{i,1} = 'H2O2'; 
fH2O2(i)=fH2O2(i)-1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + hv = NO + O';
k(:,i) = J4;
Gstr{i,1} = 'NO2'; 
fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1; fO(i)=fO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + hv = NO';
k(:,i) = J5;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + hv = NO2 + O';
k(:,i) = J6;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fO(i)=fO(i)+1; 

i=i+1;
Rnames{i} = 'HONO + hv = NO + OH';
k(:,i) = J7;
Gstr{i,1} = 'HONO'; 
fHONO(i)=fHONO(i)-1; fNO(i)=fNO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HNO3 + hv = NO2 + OH';
k(:,i) = J8;
Gstr{i,1} = 'HNO3'; 
fHNO3(i)=fHNO3(i)-1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'N2O5 = NO2 + NO3';
k(:,i) = KMT04;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fNO2(i)=fNO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'HO2NO2 = HO2 + NO2';
k(:,i) = KMT10;
Gstr{i,1} = 'HO2NO2'; 
fHO2NO2(i)=fHO2NO2(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

%END OF REACTION LIST


