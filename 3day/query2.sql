SELECT P.PATID, P.PATNAME, I.INSRNO, I.CARNO              --�������� ���
FROM PATMST P, INSRINFOS I
WHERE P.PATID IN (SELECT PATID FROM OPDACPT WHERE OPDDATE = '20240729')
AND P.PATID = I.PATID
