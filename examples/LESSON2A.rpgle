**FREE

Ctl-Opt DFTACTGRP(*NO) BNDDIR('WORKSHOP');

Dcl-Pr SUM Int(10) ExtProc;
  numa Int(10) const;
  numb Int(10) const;
End-Pr;

Dcl-s numa int(10);
dcl-s numb int(10);
dcl-s result int(10);

numa = 5;
numb = 10;

result = SUM(numa:numb);

dsply ('Result: ' + %char(result));

Return;