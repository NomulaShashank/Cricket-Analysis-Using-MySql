CREATE DATABASE CRICKET;
USE CRICKET;
CREATE TABLE Teams (
    team_id INT PRIMARY KEY,
    team_name VARCHAR(50),
    coach VARCHAR(100),
    ranking INT
);

INSERT INTO Teams (team_id, team_name, coach, ranking) VALUES
(1, 'India', 'Rahul Dravid', 1),
(2, 'Australia', 'Andrew McDonald', 2),
(3, 'England', 'Brendon McCullum', 3),
(4, 'Pakistan', 'Garry Kirsten', 4),
(5, 'South Africa', 'Rob Walter', 5),
(6, 'New Zealand', 'Gary Stead', 6),
(7, 'Sri Lanka', 'Chris Silverwood', 7),
(8, 'Bangladesh', 'Chandika Hathurusingha', 8),
(9, 'West Indies', 'Phil Simmons', 9),
(10, 'Afghanistan', 'Jonathan Trott', 10);

CREATE TABLE Players (
    player_id INT PRIMARY KEY,
    name VARCHAR(100),
    country VARCHAR(50),
    role VARCHAR(30),
    batting_style VARCHAR(30),
    bowling_style VARCHAR(50)
);
INSERT INTO Players VALUES
(1, 'Virat Kohli', 'India', 'Batsman', 'Right-hand bat', NULL),
(2, 'Rohit Sharma', 'India', 'Batsman', 'Right-hand bat', NULL),
(3, 'Jasprit Bumrah', 'India', 'Bowler', 'Right-hand bat', 'Right-arm fast'),
(4, 'Hardik Pandya', 'India', 'All-rounder', 'Right-hand bat', 'Right-arm medium'),
(5, 'KL Rahul', 'India', 'Wicketkeeper', 'Right-hand bat', NULL),
(6, 'Steve Smith', 'Australia', 'Batsman', 'Right-hand bat', NULL),
(7, 'David Warner', 'Australia', 'Batsman', 'Left-hand bat', NULL),
(8, 'Pat Cummins', 'Australia', 'Bowler', 'Right-hand bat', 'Right-arm fast'),
(9, 'Glenn Maxwell', 'Australia', 'All-rounder', 'Right-hand bat', 'Right-arm offbreak'),
(10, 'Josh Hazlewood', 'Australia', 'Bowler', 'Right-hand bat', 'Right-arm fast'),
(11, 'Joe Root', 'England', 'Batsman', 'Right-hand bat', NULL),
(12, 'Ben Stokes', 'England', 'All-rounder', 'Left-hand bat', 'Right-arm medium-fast'),
(13, 'Jos Buttler', 'England', 'Wicketkeeper', 'Right-hand bat', NULL),
(14, 'Babar Azam', 'Pakistan', 'Batsman', 'Right-hand bat', NULL),
(15, 'Shaheen Afridi', 'Pakistan', 'Bowler', 'Left-hand bat', 'Left-arm fast'),
(16, 'Mohammad Rizwan', 'Pakistan', 'Wicketkeeper', 'Right-hand bat', NULL),
(17, 'Quinton de Kock', 'South Africa', 'Wicketkeeper', 'Left-hand bat', NULL),
(18, 'Kagiso Rabada', 'South Africa', 'Bowler', 'Left-hand bat', 'Right-arm fast'),
(19, 'Aiden Markram', 'South Africa', 'Batsman', 'Right-hand bat', NULL),
(20, 'Kane Williamson', 'New Zealand', 'Batsman', 'Right-hand bat', 'Right-arm offbreak'),
(21, 'Trent Boult', 'New Zealand', 'Bowler', 'Right-hand bat', 'Left-arm fast-medium'),
(22, 'Tom Latham', 'New Zealand', 'Wicketkeeper', 'Right-hand bat', NULL),
(23, 'Kusal Perera', 'Sri Lanka', 'Wicketkeeper', 'Left-hand bat', NULL),
(24, 'Angelo Mathews', 'Sri Lanka', 'All-rounder', 'Right-hand bat', 'Right-arm medium'),
(25, 'Dasun Shanaka', 'Sri Lanka', 'All-rounder', 'Right-hand bat', 'Right-arm medium-fast'),
(26, 'Shakib Al Hasan', 'Bangladesh', 'All-rounder', 'Left-hand bat', 'Left-arm orthodox'),
(27, 'Mushfiqur Rahim', 'Bangladesh', 'Wicketkeeper', 'Right-hand bat', NULL),
(28, 'Chris Gayle', 'West Indies', 'Batsman', 'Left-hand bat', NULL),
(29, 'Jason Holder', 'West Indies', 'All-rounder', 'Right-hand bat', 'Right-arm fast-medium'),
(30, 'Rashid Khan', 'Afghanistan', 'Bowler', 'Right-hand bat', 'Right-arm legbreak');

CREATE TABLE Matches (
    match_id INT PRIMARY KEY,
    date DATE,
    venue VARCHAR(100),
    team1_id INT,
    team2_id INT,
    winner_id INT,
    format VARCHAR(20),
    FOREIGN KEY (team1_id) REFERENCES Teams(team_id),
    FOREIGN KEY (team2_id) REFERENCES Teams(team_id),
    FOREIGN KEY (winner_id) REFERENCES Teams(team_id)
);
INSERT INTO Matches VALUES
(301, '2023-09-05', 'Mumbai, India', 1, 2, 1, 'ODI'),
(302, '2023-09-08', 'Sydney, Australia', 2, 3, 2, 'ODI'),
(303, '2023-09-11', 'London, England', 3, 4, 3, 'ODI'),
(304, '2023-09-14', 'Karachi, Pakistan', 4, 5, 4, 'ODI'),
(305, '2023-09-17', 'Cape Town, SA', 5, 6, 5, 'ODI'),
(306, '2023-09-20', 'Wellington, NZ', 6, 7, 6, 'ODI'),
(307, '2023-09-23', 'Colombo, SL', 7, 8, 7, 'ODI'),
(308, '2023-09-26', 'Dhaka, Bangladesh', 8, 9, 8, 'ODI'),
(309, '2023-09-29', 'Kingston, WI', 9, 10, 9, 'ODI'),
(310, '2023-10-02', 'Kabul, Afghanistan', 10, 1, 1, 'ODI'),
(311, '2023-10-05', 'Ahmedabad, India', 1, 3, 1, 'T20'),
(312, '2023-10-08', 'Melbourne, Australia', 2, 4, 2, 'T20'),
(313, '2023-10-11', 'Birmingham, England', 3, 5, 3, 'T20'),
(314, '2023-10-14', 'Lahore, Pakistan', 4, 6, 6, 'T20'),
(315, '2023-10-17', 'Johannesburg, SA', 5, 7, 5, 'T20'),
(316, '2023-10-20', 'Auckland, NZ', 6, 8, 6, 'T20'),
(317, '2023-10-23', 'Galle, SL', 7, 9, 7, 'T20'),
(318, '2023-10-26', 'Chittagong, Bangladesh', 8, 10, 8, 'T20'),
(319, '2023-10-29', 'Port of Spain, WI', 9, 1, 9, 'T20'),
(320, '2023-11-01', 'Islamabad, Pakistan', 4, 2, 2, 'ODI'),
(321, '2023-11-04', 'Hyderabad, India', 1, 5, 1, 'ODI'),
(322, '2023-11-07', 'Nottingham, England', 3, 7, 3, 'ODI'),
(323, '2023-11-10', 'Pallekele, SL', 7, 10, 7, 'ODI'),
(324, '2023-11-13', 'Mirpur, Bangladesh', 8, 2, 2, 'ODI'),
(325, '2023-11-16', 'Wellington, NZ', 6, 9, 6, 'ODI'),
(326, '2023-11-19', 'Centurion, SA', 5, 8, 5, 'ODI'),
(327, '2023-11-22', 'Kandy, SL', 7, 1, 1, 'T20'),
(328, '2023-11-25', 'Adelaide, Australia', 2, 6, 2, 'T20'),
(329, '2023-11-28', 'Old Trafford, England', 3, 9, 3, 'T20'),
(330, '2023-12-01', 'Chennai, India', 1, 4, 1, 'T20');

CREATE TABLE Batting_Stats (
    stat_id INT PRIMARY KEY,
    match_id INT,
    player_id INT,
    runs INT,
    balls INT,
    fours INT,
    sixes INT,
    strike_rate DECIMAL(5,2),
    FOREIGN KEY (match_id) REFERENCES Matches(match_id),
    FOREIGN KEY (player_id) REFERENCES Players(player_id)
);
INSERT INTO Batting_Stats VALUES
(1, 301, 2, 120, 115, 12, 4, 104.35),
(2, 301, 1, 85, 95, 8, 2, 89.47),
(3, 302, 6, 75, 88, 9, 0, 85.23),
(4, 302, 7, 98, 91, 10, 3, 107.69),
(5, 303, 11, 102, 120, 8, 1, 85.00),
(6, 303, 13, 76, 64, 6, 2, 118.75),
(7, 304, 14, 110, 130, 9, 1, 84.61),
(8, 304, 16, 65, 70, 5, 0, 92.86),
(9, 305, 19, 90, 99, 7, 2, 90.91),
(10, 305, 17, 72, 82, 6, 1, 87.80),
(11, 306, 20, 80, 85, 7, 1, 94.12),
(12, 306, 22, 58, 65, 6, 0, 89.23),
(13, 307, 23, 105, 92, 11, 3, 114.13),
(14, 307, 24, 65, 70, 6, 1, 92.86),
(15, 308, 26, 77, 88, 8, 1, 87.50),
(16, 308, 27, 68, 72, 6, 0, 94.44),
(17, 309, 28, 112, 95, 12, 6, 117.89),
(18, 309, 29, 70, 60, 5, 4, 116.67),
(19, 310, 1, 100, 105, 9, 2, 95.24),
(20, 310, 5, 58, 62, 6, 0, 93.55),
(21, 311, 13, 72, 40, 8, 3, 180.00),
(22, 311, 2, 48, 32, 5, 2, 150.00),
(23, 312, 9, 60, 38, 5, 4, 157.89),
(24, 312, 14, 55, 50, 4, 1, 110.00),
(25, 313, 12, 41, 28, 4, 2, 146.43),
(26, 313, 11, 66, 55, 7, 1, 120.00),
(27, 314, 15, 25, 20, 2, 1, 125.00),
(28, 314, 20, 78, 68, 9, 1, 114.71),
(29, 315, 19, 85, 70, 7, 3, 121.43),
(30, 315, 25, 52, 39, 5, 2, 133.33);

CREATE TABLE Bowling_Stats (
    stat_id INT PRIMARY KEY,
    match_id INT,
    player_id INT,
    overs DECIMAL(4,1),
    runs_given INT,
    wickets INT,
    economy DECIMAL(5,2),
    FOREIGN KEY (match_id) REFERENCES Matches(match_id),
    FOREIGN KEY (player_id) REFERENCES Players(player_id)
);
INSERT INTO Bowling_Stats VALUES
(1, 301, 3, 10.0, 45, 3, 4.50),
(2, 301, 8, 10.0, 52, 2, 5.20),
(3, 302, 10, 10.0, 58, 2, 5.80),
(4, 302, 18, 10.0, 60, 3, 6.00),
(5, 303, 3, 9.0, 47, 2, 5.22),
(6, 303, 15, 10.0, 54, 3, 5.40),
(7, 304, 18, 10.0, 62, 2, 6.20),
(8, 304, 15, 10.0, 49, 3, 4.90),
(9, 305, 21, 10.0, 51, 2, 5.10),
(10, 305, 18, 10.0, 53, 3, 5.30),
(11, 306, 21, 10.0, 48, 3, 4.80),
(12, 306, 24, 8.0, 40, 1, 5.00),
(13, 307, 25, 9.0, 55, 2, 6.11),
(14, 307, 26, 10.0, 52, 3, 5.20),
(15, 308, 28, 10.0, 59, 2, 5.90),
(16, 308, 26, 10.0, 57, 2, 5.70),
(17, 309, 29, 10.0, 48, 3, 4.80),
(18, 309, 30, 9.0, 44, 2, 4.89),
(19, 310, 3, 10.0, 46, 4, 4.60),
(20, 310, 30, 10.0, 50, 2, 5.00),
(21, 311, 8, 4.0, 24, 2, 6.00),
(22, 311, 3, 4.0, 20, 1, 5.00),
(23, 312, 9, 4.0, 32, 1, 8.00),
(24, 312, 15, 4.0, 28, 2, 7.00),
(25, 313, 12, 4.0, 25, 1, 6.25),
(26, 313, 18, 4.0, 27, 2, 6.75),
(27, 314, 15, 4.0, 22, 2, 5.50),
(28, 314, 21, 4.0, 20, 1, 5.00),
(29, 315, 18, 4.0, 29, 2, 7.25),
(30, 315, 25, 4.0, 24, 1, 6.00);


select * from teams;
select * from players;
select * from matches;
select * from batting_stats;
select * from bowling_stats;


desc matches;
desc teams;
desc players;
desc batting_stats;
desc Bowling_stats;


SELECT name, country, bowling_style
FROM Players
WHERE role = 'Bowler';

SELECT match_id, date, venue
FROM Matches
WHERE venue LIKE '%India%';

SELECT name
FROM Players
WHERE country = 'Australia' AND role = 'All-rounder';

SELECT match_id, venue, format
FROM Matches
WHERE winner_id = 1;

SELECT match_id, date, venue
FROM Matches
WHERE format = 'T20' AND date BETWEEN '2023-10-01' AND '2023-10-31';

UPDATE Players
SET role = 'Captain'
WHERE name = 'Rohit Sharma';
select * from players;


DELETE FROM Matches
WHERE match_id = 330;
select * from matches;

INSERT INTO Matches VALUES
(331, '2023-12-05', 'Delhi, India', 1, 6, 1, 'ODI');

SELECT venue, COUNT(*) AS matches_count
FROM Matches
GROUP BY venue
HAVING COUNT(*) > 1;

SELECT p.name, SUM(b.runs) AS total_runs
FROM Batting_Stats b
JOIN Players p ON b.player_id = p.player_id
GROUP BY p.name
ORDER BY total_runs DESC;

SELECT p.name, b.runs
FROM Batting_Stats b
JOIN Players p ON b.player_id = p.player_id
ORDER BY b.runs DESC
LIMIT 1;

SELECT AVG(strike_rate) AS avg_sr
FROM Batting_Stats b
JOIN Players p ON b.player_id = p.player_id
WHERE p.country = 'India';

SELECT p.name, SUM(b.runs) AS total_runs
FROM Batting_Stats b
JOIN Players p ON b.player_id = p.player_id
GROUP BY p.name
ORDER BY total_runs DESC
LIMIT 5;

SELECT t.team_name, COUNT(*) AS wins
FROM Matches m
JOIN Teams t ON m.winner_id = t.team_id
GROUP BY t.team_name
ORDER BY wins DESC;

SELECT p.name, SUM(bw.wickets) AS total_wickets
FROM Bowling_Stats bw
JOIN Players p ON bw.player_id = p.player_id
GROUP BY p.name
ORDER BY total_wickets DESC;

SELECT p.name, SUM(b.runs) AS total_runs
FROM Batting_Stats b
JOIN Players p ON b.player_id = p.player_id
GROUP BY p.name
HAVING SUM(b.runs) > 150;

SELECT t.team_name, COUNT(*) AS wins
FROM Matches m
JOIN Teams t ON m.winner_id = t.team_id
GROUP BY t.team_name
HAVING COUNT(*) > 3;

SELECT p.name, AVG(bw.economy) AS avg_economy
FROM Bowling_Stats bw
JOIN Players p ON bw.player_id = p.player_id
GROUP BY p.name
ORDER BY avg_economy ASC;

SELECT p.name, SUM(b.sixes) AS total_sixes
FROM Batting_Stats b
JOIN Players p ON b.player_id = p.player_id
GROUP BY p.name
HAVING SUM(b.sixes) > 5;

SELECT p.name, b.runs
FROM Batting_Stats b
JOIN Players p ON b.player_id = p.player_id
WHERE b.runs = (
    SELECT MAX(runs)
    FROM Batting_Stats
);

SELECT p.name, bw.economy
FROM Bowling_Stats bw
JOIN Matches m ON bw.match_id = m.match_id
JOIN Players p ON bw.player_id = p.player_id
WHERE m.format = 'ODI'
ORDER BY bw.economy ASC
LIMIT 1;

SELECT p.name, b.strike_rate
FROM Batting_Stats b
JOIN Players p ON b.player_id = p.player_id
WHERE b.strike_rate > (
    SELECT AVG(strike_rate) FROM Batting_Stats
);

SELECT DISTINCT m.match_id, m.venue, t.team_name
FROM Matches m
JOIN Teams t ON m.winner_id = t.team_id
JOIN Batting_Stats b ON m.match_id = b.match_id
GROUP BY m.match_id, t.team_name, m.venue
HAVING SUM(b.runs) >= 180;

SELECT team_name
FROM Teams
WHERE team_id NOT IN (
    SELECT DISTINCT winner_id FROM Matches
);

SELECT p.name, SUM(b.runs) AS runs, SUM(bw.wickets) AS wickets
FROM Players p
LEFT JOIN Batting_Stats b ON p.player_id = b.player_id
LEFT JOIN Bowling_Stats bw ON p.player_id = bw.player_id
WHERE p.role = 'All-rounder'
GROUP BY p.name;

SELECT p.name, bw.match_id, bw.wickets
FROM Bowling_Stats bw
JOIN Players p ON bw.player_id = p.player_id
WHERE bw.wickets >= 3;

SELECT p.country, AVG(b.runs) AS avg_runs
FROM Players p
JOIN Batting_Stats b ON p.player_id = b.player_id
GROUP BY p.country;

SELECT p.name, ROUND(AVG(b.runs), 2) AS avg_runs
FROM Batting_Stats b
JOIN Players p ON b.player_id = p.player_id
GROUP BY p.name;

SELECT match_id, DATE_FORMAT(date, '%M %Y') AS match_month, venue
FROM Matches;

SELECT name, COALESCE(bowling_style, 'Not a bowler') AS bowling_info
FROM Players;

SELECT name, SUBSTRING(name, 1, 5) AS short_name
FROM Players;
