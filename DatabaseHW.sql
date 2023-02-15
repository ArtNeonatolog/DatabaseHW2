"Задание 1"

CREATE TABLE employee (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(6) NOT NULL,
    age INT NOT NULL);
CREATE TABLE
    INSERT INTO employee (
    first_name, last_name, gender, age)
    VALUES ('Artem', 'Safuanov', 'male', 30), ('Denis', 'Safuanov', 'male', 27), ('Petr', 'Ivanov', 'male', 35),
('Ivan', 'Krasin', 'male', 40), ('Rina', 'Galieva', 'female', 30);

    SELECT first_name AS Имя, last_name AS Фамилия
    FROM employee;

    SELECT * FROM employee
    WHERE age <30 OR age>50;

    SELECT * FROM employee
    WHERE age
    BETWEEN 30 AND 50;

    SELECT * FROM employee
    ORDER BY last_name DESC;

    SELECT * FROM employee
    WHERE first_name
    LIKE '_____';

"Задание 2"
    SELECT * FROM employee;
    UPDATE employee SET first_name = 'Artem', last_name = 'Tretyakov', gender = 'male', age = 27 WHERE id = 2;

    SELECT * FROM employee;
    UPDATE employee SET first_name = 'Ivan', last_name = 'Goncharov', gender = 'male', age = 35 WHERE id = 3;

    SELECT first_name AS Имя,
    SUM(age) AS суммарный_возраст
    FROM employee
    GROUP BY Имя;

    SELECT first_name, age
    FROM employee
    WHERE first_name = 'Artem' OR first_name = 'Ivan' AND age = (SELECT MAX(age) FROM employee)
    ORDER BY age;






