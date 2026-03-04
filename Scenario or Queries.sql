
use sec;


--01.	Retrieve all customers who have a Savings account.
SELECT * FROM Accounts_1 WHERE account_type = 'Savings';

--02.	Display all loans that are currently Active.
SELECT * FROM Loans_1 WHERE loan_status = 'Active';

--03.	List customers whose credit score is above 750.
SELECT * FROM Credit_Scores_1 WHERE score > 750;

--04.	Show all employees working in branch 2005.
SELECT * FROM Employees_1 WHERE branch_id = 2005;

--05.	Retrieve all EMIs that are still Pending.
SELECT * FROM EMI WHERE emi_status = 'Pending';

--06.	Display all penalties issued in the year 2023.
SELECT * FROM Penalties_1 WHERE YEAR(penalty_date) = 2023;

--07.	Find all guarantors living in Chennai.
SELECT * FROM Guarantors_1 WHERE address LIKE '%Chennai%';

--08.	Show customers who have taken a Home Loan.
SELECT * FROM Loans_1 WHERE loan_type = 'Home Loan';

--09.	List all accounts with balance greater than 5,00,000.
SELECT * FROM Accounts_1 WHERE balance > 500000;

--10.	Display loan details for customer_id = 1010.
SELECT * FROM Loans_1 WHERE customer_id = 1010;

--11.	Display customer name with their loan amount.
SELECT c.first_name, l.loan_amount
FROM Customer_1 as c
JOIN Loans_1 as l ON c.customer_id = l.customer_id;

--12.	Show customer name, branch name, and employee handling their loan.
SELECT c.first_name, b.branch_name, e.first_name AS employee
FROM Loans_1 as l
JOIN Customer_1 as c ON l.customer_id = c.customer_id
JOIN Branches as b ON l.branch_id = b.branch_id
JOIN Employees_1 as e ON l.employee_id = e.employee_id

--13.	List loan_id, EMI amount, and EMI status.
SELECT l.loan_id, e.emi_amount, e.emi_status
FROM Loans_1 as l
JOIN EMI as e ON l.loan_id = e.loan_id;

--14.	Display customer name and credit score.
SELECT c.first_name, s.score
FROM Customer_1 as c
JOIN Credit_Scores_1 s ON c.customer_id = s.customer_id;

--15.	Show loan_id with guarantor name.
SELECT l.loan_id, g.name
FROM Loan_Guarantors_2 as a
JOIN Loans_1 as l ON a.loan_id = l.loan_id
JOIN Guarantors_1 as g ON a.guarantor_id = g.guarantor_id;

--16.	Display all customers and their account balance (include customers without loans).
SELECT c.first_name, a.balance
FROM Customer_1 as c
LEFT JOIN Accounts_1 as a ON c.customer_id = a.customer_id;

--17.	Show loans and penalties applied to them.
SELECT l.loan_id, p.penalty_amount
FROM Loans_1 as l
JOIN Penalties_1 as p ON l.loan_id = p.loan_id;

--18.	Display branch-wise total number of loans.
SELECT branch_id, COUNT(*) total_loans
FROM Loans_1
GROUP BY branch_id;

--19.	List employees and number of loans handled by each.
SELECT employee_id, COUNT(*) loans_handled
FROM Loans_1
GROUP BY employee_id;

--20.	Show customer name with total penalties incurred.
SELECT c.first_name, SUM(p.penalty_amount) total_penalty
FROM Customer_1 as c
JOIN Loans_1 as l ON c.customer_id = l.customer_id
JOIN Penalties_1 as p ON l.loan_id = p.loan_id
GROUP BY c.customer_id;

--21.	Find total loan amount issued by each branch.
SELECT branch_id, SUM(loan_amount)
FROM Loans_1
GROUP BY branch_id;

--22.	Calculate average credit score of customers.
SELECT AVG(score) FROM Credit_Scores_1;

--23.	Find highest loan amount issued.
SELECT MAX(loan_amount) FROM Loans_1;

--24.	Count number of Active loans.
SELECT COUNT(*) FROM Loans_1 WHERE loan_status = 'Active';

--25.	Calculate total penalties collected.
SELECT SUM(penalty_amount) FROM Penalties_1;

--26.	Find minimum and maximum EMI amount.
SELECT MIN(emi_amount), MAX(emi_amount) FROM EMI;

--27.	Show branch having highest total loan disbursement.
SELECT branch_id, SUM(loan_amount) total
FROM Loans_1
GROUP BY branch_id
ORDER BY total DESC
LIMIT 1;

--28.	Count loans by loan type.
SELECT loan_type, COUNT(*) FROM Loans_1 GROUP BY loan_type;

--29.	Show average loan amount per loan type.
SELECT loan_type, AVG(loan_amount) FROM Loans_1 GROUP BY loan_type;

--30.	Find number of customers with credit score below 700.
SELECT COUNT(*) FROM Credit_Scores_1 WHERE score < 700;

--31.	Find customers whose loan amount is greater than average loan amount.
SELECT * FROM Loans_1
WHERE loan_amount > (SELECT AVG(loan_amount) FROM Loans_1);

--32.	Display loans where EMI amount is higher than average EMI.
SELECT * FROM EMI
WHERE emi_amount > (SELECT AVG(emi_amount) FROM EMI);

--33.	Find customers who have highest credit score.
SELECT * FROM Credit_Scores_1
WHERE score = (SELECT MAX(score) FROM Credit_Scores_1);


--34.	Find loans that have penalties greater than average penalty.
SELECT * FROM Penalties_1
WHERE penalty_amount > (SELECT AVG(penalty_amount) FROM Penalties_1);


--35.	Show customers whose credit score is less than the minimum credit score of branch 2005.
SELECT * FROM Credit_Scores_1
WHERE score < (
SELECT MIN(s.score)
FROM Credit_Scores_1 as s
JOIN Loans_1 as l ON s.customer_id = l.customer_id
WHERE l.branch_id = 2005
);

--36.	Find loans with tenure longer than average tenure.
SELECT * FROM Loans_1
WHERE tenure_months > (SELECT AVG(tenure_months) FROM Loans_1);

--37.	Display guarantors who are linked to loans above 10,00,000.
SELECT * FROM Guarantors_1 g
WHERE EXISTS (
SELECT 1 FROM Loan_Guarantors_2 lg
JOIN Loans_1 l ON lg.loan_id = l.loan_id
WHERE lg.guarantor_id = g.guarantor_id
AND l.loan_amount > 1000000);

--38. Customer IDs who either have a loan or an account
SELECT customer_id FROM Loans_1
UNION all
SELECT branch_id FROM Branches;

--39.	Increase interest rate by 1% for all Personal Loans.
UPDATE Loans_1
SET interest_rate = interest_rate + 1
WHERE loan_type = 'Personal Loan';

--40.	Update EMI status to 'Paid' where payment_status is 'Completed'.
UPDATE EMI as e
JOIN Loan_Payments_2 as l ON e.loan_id = l.loan_id
SET e.emi_status = 'Paid'
WHERE l.payment_status = 'Completed';

--41.	Delete penalties where penalty_amount < 2000.
DELETE FROM Penalties_1 WHERE penalty_amount < 2000;

--42.	Insert a new customer and assign account.
INSERT INTO Customer_1 VALUES (1131,'Ravi','Kumar','1995-01-01','9876543210');
INSERT INTO Accounts_1 (customer_id,account_type,balance)
VALUES (1131,'Savings',50000);

--43.	Insert a new loan for customer 1015.
INSERT INTO Loans_1 (customer_id,branch_id,employee_id,loan_type,loan_amount,
interest_rate,tenure_months,start_date,end_date,loan_status)
VALUES (1015,2005,5,'Personal Loan',300000,10,36,'2024-01-01','2027-01-01','Active');

--44.	Update credit score for customer 1005.
UPDATE Credit_Scores_1 SET score = 800 WHERE customer_id = 1005;

--45.	Delete a loan and observe foreign key constraint behavior.
DELETE FROM Loans_1 WHERE loan_id = 5;

--46.	Insert penalty for loan_id 20.
INSERT INTO Penalties_1 (loan_id,penalty_amount,reason,penalty_date)
VALUES (20,3000,'Late EMI','2024-02-01');

--47.	Add CHECK constraint to ensure loan_amount > 0.
ALTER TABLE Loans_1
ADD CONSTRAINT chk_loan_amount CHECK (loan_amount > 0);

--48.	Modify balance column to NOT NULL.
ALTER TABLE Accounts_1
MODIFY balance DECIMAL(12,2) NOT NULL;

--49.	Add UNIQUE constraint to phone in Guarantors.
ALTER TABLE Guarantors_1
ADD CONSTRAINT unique_phone UNIQUE (phone);

--50.	Add DEFAULT value 'Active' to loan_status.
ALTER TABLE Loans_1
ALTER loan_status SET DEFAULT 'Active';

--51.	Drop foreign key constraint from EMI table.
ALTER TABLE EMI
DROP FOREIGN KEY emi_ibfk_1;

--52. Find customers who have more than one loan.
SELECT customer_id
FROM Loans_1
GROUP BY customer_id
HAVING COUNT(*) > 1;

--53. Display loans where total penalties exceed 10% of loan amount.
SELECT l.loan_id, l.loan_amount,
       SUM(p.penalty_amount) AS total_penalty
FROM Loans_1 as l
JOIN Penalties_1 as p ON l.loan_id = p.loan_id
GROUP BY l.loan_id
HAVING total_penalty > (0.10 * l.loan_amount);

--54. Find employees who have never handled a loan.
SELECT e.employee_id, e.first_name
FROM Employees_1 as e
LEFT JOIN Loans_1 as l ON e.employee_id = l.employee_id
WHERE l.loan_id IS NULL;

--55. Show customers who have an account but no Active loan.
SELECT c.customer_id, c.first_name
FROM Customer_1 as c
JOIN Accounts_1 as a ON c.customer_id = a.customer_id
WHERE NOT EXISTS (
    SELECT 1 FROM Loans_1 as l
    WHERE l.customer_id = c.customer_id
    AND l.loan_status = 'Active');

--56. Display loans where EMI amount is greater than 30% of customer’s account balance.
SELECT l.loan_id, e.emi_amount, a.balance
FROM Loans_1 as l
JOIN EMI as e ON l.loan_id = e.loan_id
JOIN Accounts_1 as a ON l.customer_id = a.customer_id
WHERE e.emi_amount > (0.30 * a.balance);

--57.	Create a view showing:
•	customer name   •	loan amount    •	total penalties     •	credit score
 View
CREATE VIEW Loan_Summary_1 AS
SELECT c.first_name, l.loan_amount,
SUM(p.penalty_amount) total_penalty, s.score
FROM Customer_1 as c
JOIN Loans_1 as l ON c.customer_id = l.customer_id
LEFT JOIN Penalties_1 as p ON l.loan_id = p.loan_id
JOIN Credit_Scores_1 as s ON c.customer_id = s.customer_id
GROUP BY l.loan_id , c.first_name , l.loan_amount , s.score ;

select * from Loan_Summary_1;

--58.	Classify loan amount as Small, Medium, Large.
SELECT loan_id,
CASE
WHEN loan_amount < 300000 THEN 'Small'
WHEN loan_amount BETWEEN 300000 AND 1000000 THEN 'Medium'
ELSE 'Large'
END AS loan_category
FROM Loans_1;

--59.	Categorize credit scores as:
•	Excellent (>800)       •	Good (750–800)         •	Average (650–749)

SELECT customer_id,
CASE
WHEN score > 800 THEN 'Excellent'
WHEN score BETWEEN 750 AND 800 THEN 'Good'
WHEN score BETWEEN 650 AND 749 THEN 'Average'
ELSE 'Poor'
END AS credit_category
FROM Credit_Scores_1;

--60. Find the branch that has the highest average credit score of customers.
SELECT l.branch_id, AVG(cs.score) AS avg_score
FROM Loans_1 l
JOIN Credit_Scores_1 cs ON l.customer_id = cs.customer_id
GROUP BY l.branch_id
ORDER BY avg_score DESC
LIMIT 1;

