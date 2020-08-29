**FREE

Ctl-Opt DFTACTGRP(*No) BNDDIR('WORKSHOP');

/copy qrpgleref,wrkshpdta

dcl-s index int(3);
dcl-ds  department LikeDs(Department_t);
Dcl-Ds departments LikeDS(Department_t) Dim(50);

If (Department_Open());
  index = 1;
  department = Department_FetchNext();

  Dow (Department_IsOk());
    If (department.manager_number <> '-1');
      departments(index) = department;
      index += 1;
    endif;

    department = Department_FetchNext();
  Enddo;

  Department_Close();
Endif;

EXEC SQL
  SET RESULT SETS ARRAY :departments FOR :index ROWS;

Return;