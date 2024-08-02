--1. 원무접수일 / 처방일 / 환자명 / 처방명 / 구분 (clas) / 진행상태 (orderstepstate) / 진료과명 / 의사명 /
SELECT P.PATID "환자명", O.OPDDATE "원무접수일", E.ORDERDATE "처방일", E.ORDERNAME "처방명", E.CLAS "구분",
DECODE(E.ORDERSTEPSTATE,0,'처방',3,'접수',4,'진행') "진행상태", D.DEPTKORNAME "진료과명", U.USRKORNAME "의사명"
FROM PATMST P, OPDACPT O, ORDERINFOS E, DEPTCODES D, USRMST U
WHERE P.PATID ='24000034'
AND P.PATID = O.PATID
AND O.PATID = E.PATID
AND O.DEPTCODE = E.DEPTCODE
AND E.ORDERDATE = O.OPDDATE
AND E.ORDERDRDEPTCODE = D.DEPTCODE
AND E.ORDERDRID = U.USRID
ORDER BY E.CLAS,O.OPDDATE,E.ORDERDATE




