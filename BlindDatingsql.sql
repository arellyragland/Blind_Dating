CREATE DATABASE BlindDating;
USE BlindDating;
GO;
CREATE TABLE DatingProfile(
Id INT PRIMARY KEY IDENTITY,
FirstName VARCHAR(20) NOT NULL,
LastName VARCHAR(20) NOT NULL,
Age INT,
Gender CHAR(1),
Bio VARCHAR(MAX),
UserAccountId VARCHAR(50) NOT NULL
)
GO;
SELECT * FROM DatingProfile;
GO;
BEGIN TRAN
INSERT INTO DatingProfile
VALUES('John','White',28,'M','Good Looking Guy',1)
COMMIT TRAN


SELECT * FROM AspNetUsers;
select * from AspNetUsers where id ='ef67fd1f-2ca4-4754-9515-8f53c8e01267';
select * from AspNetUserRoles;
select * from AspNetRoles;

BEGIN TRAN
ALTER TABLE DatingProfile
ADD displayName VARCHAR(40),
photoPath       VARCHAR(255);
COMMIT TRAN

CREATE TABLE MailMessage(
id            INT PRIMARY KEY IDENTITY,
fromProfileID INT FOREIGN KEY REFERENCES DatingProfile (Id),
toProfileID   INT FOREIGN KEY REFERENCES DatingProfile (Id),
messageTitle  VARCHAR(MAX) NOT NULL,
messageText   TEXT         NOT NULL,
isRead        BIT          NOT NULL
)

SELECT * FROM MailMessage;