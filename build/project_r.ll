Revision 3
; Created by bitgen P.20131013 at Fri Mar 30 16:19:58 2018
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
Bit   560665 0x0101001c    105 Block=OLOGIC_X0Y18 Type=DRP
Bit   560673 0x0101001c    113 Block=OLOGIC_X0Y18 Type=DRP
Bit   560830 0x0101001c    270 Block=OLOGIC_X0Y21 Type=DRP
Bit   560838 0x0101001c    278 Block=OLOGIC_X0Y21 Type=DRP
Bit   560857 0x0101001c    297 Block=OLOGIC_X0Y20 Type=DRP
Bit   560865 0x0101001c    305 Block=OLOGIC_X0Y20 Type=DRP
Bit   561486 0x0101001c    926 Block=OLOGIC_X0Y29 Type=DRP
Bit   561494 0x0101001c    934 Block=OLOGIC_X0Y29 Type=DRP
Bit   561513 0x0101001c    953 Block=OLOGIC_X0Y28 Type=DRP
Bit   561521 0x0101001c    961 Block=OLOGIC_X0Y28 Type=DRP
Bit   561550 0x0101001c    990 Block=OLOGIC_X0Y31 Type=DRP
Bit   561558 0x0101001c    998 Block=OLOGIC_X0Y31 Type=DRP
Bit  1050697 0x0111001c    297 Block=OLOGIC_X12Y20 Type=DRP
Bit  1050705 0x0111001c    305 Block=OLOGIC_X12Y20 Type=DRP
Bit  1050889 0x0111001c    489 Block=OLOGIC_X12Y22 Type=DRP
Bit  1050897 0x0111001c    497 Block=OLOGIC_X12Y22 Type=DRP
Bit  1051097 0x0111001c    697 Block=OLOGIC_X12Y24 Type=DRP
Bit  1051105 0x0111001c    705 Block=OLOGIC_X12Y24 Type=DRP
Bit  1051320 0x0111001c    920 Block=ILOGIC_X12Y29 Type=DRP
Bit  1088046 0x0201001c    206 Block=OLOGIC_X0Y35 Type=DRP
Bit  1088054 0x0201001c    214 Block=OLOGIC_X0Y35 Type=DRP
Bit  1088073 0x0201001c    233 Block=OLOGIC_X0Y34 Type=DRP
Bit  1088081 0x0201001c    241 Block=OLOGIC_X0Y34 Type=DRP
