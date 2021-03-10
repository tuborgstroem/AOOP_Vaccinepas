DELETE FROM borger
WHERE cpr= '0000000001' AND borger_navn = 'Alice';
DELETE FROM borger
WHERE cpr= '0000000002' AND borger_navn = 'Bob';
DELETE FROM borger
WHERE cpr= '0000000003' AND borger_navn = 'Charlie';
DELETE FROM borger
WHERE cpr= '0000000004' AND borger_navn = 'David';
DELETE FROM borger
WHERE cpr= '0000000005' AND borger_navn = 'Eric';
DELETE FROM sundhedspersonale
WHERE ansatID = '1' AND ansat_navn = 'Hans Hansen';