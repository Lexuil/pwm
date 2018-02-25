Revision 3
; Created by bitgen P.20131013 at Sun Feb 25 16:23:16 2018
; Bit lines have the following form:
; <offset> <frame address> <frame offset> <information>
; <information> may be zero or more <kw>=<value> pairs
; Block=<blockname     specifies the block associated with this
;                      memory cell.
;
; Latch=<name>         specifies the latch associated with this memory cell.
;
; Net=<netname>        specifies the user net associated with this
;                      memory cell.
;
; COMPARE=[YES | NO]   specifies whether or not it is appropriate
;                      to compare this bit position between a
;                      "program" and a "readback" bitstream.
;                      If not present the default is NO.
;
; Ram=<ram id>:<bit>   This is used in cases where a CLB function
; Rom=<ram id>:<bit>   generator is used as RAM (or ROM).  <Ram id>
;                      will be either 'F', 'G', or 'M', indicating
;                      that it is part of a single F or G function
;                      generator used as RAM, or as a single RAM
;                      (or ROM) built from both F and G.  <Bit> is
;                      a decimal number.
;
; Info lines have the following form:
; Info <name>=<value>  specifies a bit associated with the LCA
;                      configuration options, and the value of
;                      that bit.  The names of these bits may have
;                      special meaning to software reading the .ll file.
;
Info STARTSEL0=1
Bit    33513 0x0001001c    233 Block=OLOGIC_X0Y6 Type=DRP
Bit    33521 0x0001001c    241 Block=OLOGIC_X0Y6 Type=DRP
Bit   561486 0x0101001c    926 Block=OLOGIC_X0Y29 Type=DRP
Bit   561494 0x0101001c    934 Block=OLOGIC_X0Y29 Type=DRP
Bit   561513 0x0101001c    953 Block=OLOGIC_X0Y28 Type=DRP
Bit   561521 0x0101001c    961 Block=OLOGIC_X0Y28 Type=DRP
Bit   561550 0x0101001c    990 Block=OLOGIC_X0Y31 Type=DRP
Bit   561558 0x0101001c    998 Block=OLOGIC_X0Y31 Type=DRP
Bit   561577 0x0101001c   1017 Block=OLOGIC_X0Y30 Type=DRP
Bit   561585 0x0101001c   1025 Block=OLOGIC_X0Y30 Type=DRP
Bit  1050664 0x0111001c    264 Block=ILOGIC_X12Y21 Type=DRP
Bit  1050711 0x0111001c    311 Block=ILOGIC_X12Y20 Type=DRP
Bit  1050856 0x0111001c    456 Block=ILOGIC_X12Y23 Type=DRP
Bit  1050903 0x0111001c    503 Block=ILOGIC_X12Y22 Type=DRP
Bit  1051064 0x0111001c    664 Block=ILOGIC_X12Y25 Type=DRP
Bit  1051111 0x0111001c    711 Block=ILOGIC_X12Y24 Type=DRP
Bit  1051320 0x0111001c    920 Block=ILOGIC_X12Y29 Type=DRP
Bit  1051384 0x0111001c    984 Block=ILOGIC_X12Y31 Type=DRP
Bit  1088009 0x0201001c    169 Block=OLOGIC_X0Y32 Type=DRP
Bit  1088017 0x0201001c    177 Block=OLOGIC_X0Y32 Type=DRP
Bit  1088073 0x0201001c    233 Block=OLOGIC_X0Y34 Type=DRP
Bit  1088081 0x0201001c    241 Block=OLOGIC_X0Y34 Type=DRP
Bit  1577816 0x0211001c    136 Block=ILOGIC_X12Y33 Type=DRP
Bit  1577927 0x0211001c    247 Block=ILOGIC_X12Y34 Type=DRP
Bit  2105294 0x0311001c    334 Block=OLOGIC_X12Y47 Type=DRP
Bit  2105302 0x0311001c    342 Block=OLOGIC_X12Y47 Type=DRP
