-- Fiddy Cent digital currency exchange
-- Analyze January ledger data
-- Table named 'transactions' contains money-in and money-out transactions.

-- check out table
select * from transactions;
-- columns: id, user_id, date, currency, money_in, money_out

-- money_in (USD) total
select sum(money_in) from transactions;
-- $17,173.00

-- money_out (USD) total
select sum(money_out) from transactions;
-- $33,417.00

-- Bitcoin dominates Fiddy Cent's exchange... True?
select count(money_in) from transactions;
-- 43
select count(money_in) from transactions
where currency = "BIT";
-- 21
-- what are the different currencies?
select distinct currency from transactions;
-- BIT, ETH, LTC, BCC
-- Out of the 43 money-in transactions, 21 of them are BIT. I would say Bitcoin dominates Fiddy Cent's exchange.

-- largest transaction. money-in or money-out?
select max(money_in), max(money_out) from transactions;
-- $15,047.00 money-out

-- average money-in for currency Ethereum
select round(avg(money_in), 2) as "avg ETH money-in" from transactions
where currency = "ETH";
-- $131.89

-- ledger for different dates
select date, round(avg(money_in), 2) as "avg money-in", round(avg(money_out), 2) as "avg money-out" from transactions
group by date;
