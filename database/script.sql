CREATE DATABASE MyDatabase;
USE MyDatabase;

CREATE TABLE Users
(
  UserID INT NOT NULL AUTO_INCREMENT,
  NormalizedUserName VARCHAR(45) NOT NULL,
  Email VARCHAR(45) NOT NULL,
  NormalizedEmail VARCHAR(45) NOT NULL,
  EmailConfirmed INT NOT NULL,
  PasswordHash VARCHAR(80) NOT NULL,
  SecurityStamp VARCHAR(80) NOT NULL,
  ConcurrencyStamp VARCHAR(80) NOT NULL,
  PhoneNumber VARCHAR(16) NOT NULL,
  PhoneNumberConfirmed INT NOT NULL,
  TwoFactorEnabled INT NOT NULL,
  LockoutEnd INT NOT NULL,
  LockoutEnabled INT NOT NULL,
  AccesFailedCount INT NOT NULL,
  DateOdBirth DATE NOT NULL,
  FullName VARCHAR(45) NOT NULL,
  Gender VARCHAR(75) NOT NULL,
  PRIMARY KEY (UserID)
);

CREATE TABLE UserData
(
  Score INT NOT NULL,
  CompletedLections INT NOT NULL,
  CompletedQuiz INT NOT NULL,
  CompletedProblems INT NOT NULL,
  UserID INT NOT NULL,
  FOREIGN KEY (UserID) REFERENCES Users(UserID),
  UNIQUE (UserID)
);

CREATE TABLE Role
(
  Id INT NOT NULL,
  Name VARCHAR(25) NOT NULL,
  CompletedProblems VARCHAR(25) NOT NULL,
  Row_3 VARCHAR(25) NOT NULL,
  PRIMARY KEY (Id)
);

CREATE TABLE UserRoles
(
  UserID INT NOT NULL,
  Id INT NOT NULL,
  FOREIGN KEY (UserID) REFERENCES Users(UserID),
  FOREIGN KEY (Id) REFERENCES Role(Id)
);

INSERT INTO Users (UserID, NormalizedUserName, Email, NormalizedEmail, EmailConfirmed, PasswordHash, SecurityStamp, ConcurrencyStamp, PhoneNumber, PhoneNumberConfirmed, TwoFactorEnabled, LockoutEnd, LockoutEnabled, AccesFailedCount, DateOdBirth, FullName, Gender)
VALUES
(1, 'USER1', 'user1@example.com', 'USER1@EXAMPLE.COM', 1, 'passwordhash1', 'securitystamp1', 'concurrency1', '1234567890', 1, 0, 0, 1, 0, '1990-01-01', 'John Doe', 'Male'),
(2, 'USER2', 'user2@example.com', 'USER2@EXAMPLE.COM', 1, 'passwordhash2', 'securitystamp2', 'concurrency2', '0987654321', 1, 0, 0, 1, 0, '1995-05-15', 'Jane Smith', 'Female');

INSERT INTO UserData (Score, CompletedLections, CompletedQuiz, CompletedProblems, UserID)
VALUES
(80, 10, 5, 20, 1),
(95, 15, 8, 25, 2);

INSERT INTO Role (Id, Name, CompletedProblems, Row_3)
VALUES
(1, 'Admin', 'All', 'Data1'),
(2, 'User', 'Limited', 'Data2');

INSERT INTO UserRoles (UserID, Id)
VALUES
(1, 1),
(2, 2);
