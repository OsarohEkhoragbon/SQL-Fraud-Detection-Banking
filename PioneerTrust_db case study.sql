--understanding the questions
--understanding the tables that you need 
--understanding the columns that you Need
--understanding the syntax like aggregation, order by, filter(where, having clause),limit
--to be used

--What are the top 5 highest transaction amounts this month?
--transaction TABLE
--transaction date and amount
--limit and order BY

select amount, transaction_date from transaction
order by amount DESC
limit 5;


--What is the average transaction amount for all transactions this month?
--transaction TABLE
--amount
--average

select round(avg(amount),2) as avgtransaction from transaction;


--Are there transactions above the average limit?
--transaction TABLE
--amount, transactiondate, customerid
--subquery using greather than 6650.00

select amount, transaction_date from transaction
where amount > 
             (select round(avg(amount),2) as avgtransaction from transaction);


--Are there customers that made more than 1 flagged transaction?...
--which customer has the highest flagged transactions?
--customers and transaction TABLE
--name, customerid, fraudentflag
--join
--on customerid

select t.customer_id, name, fraudulent_flag, count(fraudulent_flag) from transaction t
join customers c on t.customer_id = c.customer_id
where fraudulent_flag = 'true'
group by t.customer_id, name, fraudulent_flag
having count(fraudulent_flag) > 1
order by count(fraudulent_flag) desc;


--How many total flagged transactions occurred this month?...
--what dates has the most flagged activity?
--transaction TABLE
--transaction_date, fraudulent_flag
--count
--order BY

select transaction_date, Fraudulent_flag, count(fraudulent_flag) from transaction
where fraudulent_flag = 'true'
group by transaction_date, Fraudulent_flag
order by count(fraudulent_flag) desc;


--Are flagged transactions more likely to be deposits or withdrawal
--transaction TABLE
--fraudulent_flag and transaction_type
--where, IN, count

select fraudulent_flag, transaction_type, count(fraudulent_flag) from transaction
where fraudulent_flag = 'true'
group by fraudulent_flag, transaction_type
order by count(fraudulent_flag) desc;

--Which customers have made transactions from more than 2 different locations in a single day?
---customer and transaction
--name, location, amount
--join
--customerid

select name, amount, count(distinct merchant_location) as transactionlocation from transaction t
join customers c on t.customer_id=c.customer_id
group by name, amount
having count(distinct merchant_location) > 2
order by count(merchant_location) desc;

--Which Location has the most flagged transactions?
TRANSACTION TABLE
merchant_loaction and fraudulent_flag

select merchant_location, fraudulent_flag, count(fraudulent_flag) from transaction
where fraudulent_flag = 'true'
group by merchant_location, fraudulent_flag
order by count(fraudulent_flag) desc;

--Which account is most associated with flagged transactions
--customer and transaction table
--account_type, fraudulent_type
--join
--customer_id
--count

select account_type, Fraudulent_flag, count(t.fraudulent_flag) from transaction t
join customers c on t.customer_id = c.customer_id
where fraudulent_flag = 'true'
group by account_type, Fraudulent_flag;

select * from customers;
