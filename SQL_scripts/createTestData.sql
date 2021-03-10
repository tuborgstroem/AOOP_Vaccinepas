INSERT INTO borger
VALUES ('0000000001', 'Alice', 'a@mail.dk', 1234, 0),
	   ('0000000002', 'Bob', 'b@mail.dk', 1234, 0),
       ('0000000003', 'Charlie', 'c@mail.dk', 1234, 1),
       ('0000000004', 'David', 'd@mail.dk', 4321, 2),
       ('0000000005', 'Eric', 'e@mail.dk', 2143, 1);
INSERT INTO sundhedspersonale
VALUES ('Hans Hansen', '1', 'Overlæge', 'læge@mail.dk', '12345');

INSERT INTO test (testID, testType, borgerID, testResult)
VALUES ('000000000008', 'PCA', '0000000001', '0'),
	   ('000000000009', 'PCA', '0000000002', '1');

INSERT INTO vaccine (vaccineID, borgerID, vaccineType, EL, ansatID)
VALUES ('000000000001', '0000000003', 'Pfizer', 'Egen Læge', '1');
INSERT INTO vaccine (vaccineID, borgerID, vaccineType, EL, ansatID)
VALUES ('000000000002', '0000000004', 'Pfizer', 'Egen Læge', '1');
INSERT INTO vaccine (vaccineID, borgerID, vaccineType, EL, ansatID)
VALUES ('000000000003', '0000000004', 'Pfizer', 'Egen Læge', '1');
INSERT INTO vaccine (vaccineID, borgerID, vaccineType, EL, ansatID)
VALUES ('000000000004', '0000000005', 'Pfizer', 'Egen Læge', '1');