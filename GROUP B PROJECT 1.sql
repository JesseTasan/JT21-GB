CREATE SCHEMA BORROWER
CREATE SCHEMA LOAN
GO

CREATE TABLE BORROWER (
BORROWER_ID INT NOT NULL PRIMARY KEY,
BORROWER_FIRSTNAME VARCHAR(255) NOT NULL, 
BORROWER_MIDDLENAME CHAR (1) NOT NULL,
BORROWER_LASTNAME VARCHAR (255) NOT NULL,
DOB DATETIME NOT NULL,
GENDER CHAR(1) NULL,
SSN CHAR (9) NOT NULL,
PHONE_NUMBER VARCHAR(10) NOT NULL,
EMAIL VARCHAR(255) NOT NULL,
CITIZENSHIP VARCHAR (255) NULL,
ISUSCITIZEN BIT NULL,
CREATEDATE DATETIME NOT NULL);

--SELECT * FROM BORROWER;

CREATE TABLE BORROWER_ADDRESS (
ADDRESSID INT NOT NULL,
BORROWERID INT NOT NULL,
STREETADDRESS VARCHAR (255) NOT NULL,
ZIP VARCHAR (5) NOT NULL,
CREATEDATE DATETIME NOT NULL);

--SELECT * FROM BORROWER_ADDRESS;


CREATE TABLE LOAN.LOAN_SETUP_INFORMATION (
ISSURROGATE_KEY INT NOT NULL,
LOAN_NUMBER VARCHAR (10) NOT NULL PRIMARY KEY,
PURCHASE_AMOUNT NUMERIC  NOT NULL,
PURCHASE_DATE DATETIME NOT NULL,
LOAN_TERM INT NOT NULL,
BORROWER_ID INT NOT NULL,
UNDERWRITER_ID INT NOT NULL,
PRODUCT_ID CHAR (2) NOT NULL,
INTEREST_RATE DECIMAL NOT NULL,
PAYMENT_FREQUENCY INT NOT NULL,
APPRAISAL_VALUE NUMERIC NOT NULL,
CREATE_DATE DATETIME NOT NULL,
LTV DECIMAL NOT NULL,
FIRST_INTEREST_PAYMENT_DATE DATETIME NULL,
MATURITY_DATE DATETIME NOT NULL);

---SELECT * FROM LOAN_SETUP_INFORMATION;
DROP TABLE LOAN_SETUP_INFORMATION;

CREATE TABLE LOAN.LOAN_PERIODIC (
ISSURROGATE_KEY INT NOT NULL,
LOAN_NUMBER VARCHAR(10) NOT NULL PRIMARY KEY,
CYCLE_DATE DATETIME NOT NULL,
EXTRA_MONTHLY_PAYMENT NUMERIC NOT NULL,
UNPAID_PRINCIPAL_BALANCE NUMERIC NOT NULL,
BEGINNING_SCHEDULE_BALANCE  NUMERIC NOT NULL,
PAID_INSTALLMENT  NUMERIC NOT NULL,
INTEREST_PORTION  NUMERIC NOT NULL,
PRINCIPAL_PORTION NUMERIC NOT NULL,
END_SCHEDULE_BALANCE NUMERIC NOT NULL,
ACTUAL_END_SCHEDULE_BALANCE NUMERIC NOT NULL,
TOTAL_INTEREST_ACCRUED  NUMERIC NOT NULL,
TOTAL_PRINCIPAL_ACCRUED NUMERIC NOT NULL,
DEFAULT_PENALTY  NUMERIC NOT NULL,
DELINQUENCY_CODE INT NOT NULL,
CREATE_DATE DATETIME NOT NULL);

DROP TABLE LOAN.LOAN_PERIODIC
--SELECT * FROM LOAN.LOAN_PERIODIC

CREATE TABLE LOAN.LU_DELINQUENCY (
DELINQUENCY_CODE INT NOT NULL,
DELINQUENCY VARCHAR (255) NOT NULL);

CREATE TABLE LOAN.LU_PAYMENY_FREQUENCY (
PAYMENT_FREQUENCY INT NOT NULL,
PAYMENT_IS_MADE_EVERY INT NULL,
PAYMENT_FREQUENCY_DESCRIPTION VARCHAR(255) NOT NULL);

CREATE TABLE LOAN.UNDERWRITER (
UNDERWRITER_ID INT NOT NULL,
UNDERWRITER_FIRSTNAME VARCHAR (255) NULL,
UNDERWRITER_MIDDLE_INITIAL CHAR (1) NULL,
UNDERWRITER_LASTNAME VARCHAR (255) NOT NULL,
PHONE_NUMBER VARCHAR (14) NULL,
EMAIL VARCHAR (255) NOT NULL,
CREATE_DATE DATETIME NOT NULL);






