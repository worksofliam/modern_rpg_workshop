**FREE

Ctl-Opt DFTACTGRP(*No) BNDDIR('WORKSHOP');

/copy qrpgleref,wrkshpdta

Dcl-Ds currentDept LikeDS(Department_t);

If (Department_Open());

  currentDept = Department_FetchNext();
  Dow (Department_IsOk());
    Dsply ('Current dept: ' + %Trimr(currentDept.name));

    currentDept = Department_FetchNext();
  Enddo;

  Department_Close();
Endif;

Return;