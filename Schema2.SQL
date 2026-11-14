CREATE TABLE  Kind of sport ( 
	category_id int NOT NULL,
	kind_id int NOT NULL,
	brand_id int
)
;

CREATE TABLE Category ( 
	category_id int NOT NULL,
	name varchar(100),
	kind_id int
)
;

CREATE TABLE Coach ( 
	coach_id int NOT NULL,
	full_name varchar(100),
	exp_year int
)
;

CREATE TABLE Country ( 
	country_id int NOT NULL,
	name varchar(50),
	continent varchar(50)
)
;

CREATE TABLE Game ( 
	game_id int NOT NULL,
	game_date datetime,
	stadium_id int
)
;

CREATE TABLE Place ( 
	place_id int NOT NULL,
	name varchar(50),
	country_id int
)
;

CREATE TABLE Result ( 
	result_id int NOT NULL,
	game_id int,
	score int
)
;

CREATE TABLE Sponsor ( 
	sponsor_id int NOT NULL,
	name varchar(50),
	team_id int
)
;

CREATE TABLE Sport brand ( 
	brand_id int NOT NULL,
	name varchar(100),
	kind_id int
)
;

CREATE TABLE Sportsman ( 
	sportsman_id int NOT NULL,
	full_name varchar(100),
	coach_id int
)
;

CREATE TABLE Stadium ( 
	name varchar(100) NOT NULL,
	stadium_id int NOT NULL,
	place_id int
)
;


;
COMMENT ON TABLE Table1
    IS ''
;


;
COMMENT ON TABLE Table2
    IS ''
;


;
COMMENT ON TABLE Table3
    IS ''
;

CREATE TABLE Team ( 
	team_id int NOT NULL,
	name varchar(100),
	coach_id int
)
;


ALTER TABLE  Kind of sport ADD CONSTRAINT PK_ Kind of sport 
	PRIMARY KEY (kind_id)
;

ALTER TABLE Category ADD CONSTRAINT PK_Category 
	PRIMARY KEY (category_id)
;

ALTER TABLE Coach ADD CONSTRAINT PK_Coach 
	PRIMARY KEY (coach_id)
;

ALTER TABLE Country ADD CONSTRAINT PK_Country 
	PRIMARY KEY (country_id)
;

ALTER TABLE Game ADD CONSTRAINT PK_Game 
	PRIMARY KEY (game_id)
;

ALTER TABLE Place ADD CONSTRAINT PK_Place 
	PRIMARY KEY (place_id)
;

ALTER TABLE Result ADD CONSTRAINT PK_Result 
	PRIMARY KEY (result_id)
;

ALTER TABLE Sponsor ADD CONSTRAINT PK_Sponsor 
	PRIMARY KEY (sponsor_id)
;

ALTER TABLE Sport brand ADD CONSTRAINT PK_Sport brand 
	PRIMARY KEY (brand_id)
;

ALTER TABLE Sportsman ADD CONSTRAINT PK_Sportsman 
	PRIMARY KEY (sportsman_id)
;

ALTER TABLE Stadium ADD CONSTRAINT PK_Stadium 
	PRIMARY KEY (stadium_id)
;

ALTER TABLE Team ADD CONSTRAINT PK_Team 
	PRIMARY KEY (team_id)
;




ALTER TABLE  Kind of sport ADD CONSTRAINT FK_ Kind of sport_Category 
	FOREIGN KEY (category_id) REFERENCES Category (category_id)
;

ALTER TABLE Game ADD CONSTRAINT FK_Game_Sportsman 
	FOREIGN KEY (stadium_id) REFERENCES Sportsman (sportsman_id)
;

ALTER TABLE Game ADD CONSTRAINT FK_Game_Stadium 
	FOREIGN KEY (stadium_id) REFERENCES Stadium (stadium_id)
;

ALTER TABLE Place ADD CONSTRAINT FK_Place_Country 
	FOREIGN KEY (country_id) REFERENCES Country (country_id)
;

ALTER TABLE Result ADD CONSTRAINT FK_Result_Game 
	FOREIGN KEY (game_id) REFERENCES Game (game_id)
;

ALTER TABLE Sponsor ADD CONSTRAINT FK_Sponsor_Team 
	FOREIGN KEY (team_id) REFERENCES Team (team_id)
;

ALTER TABLE Sport brand ADD CONSTRAINT FK_Sport brand_ Kind of sport 
	FOREIGN KEY (kind_id) REFERENCES  Kind of sport (kind_id)
;

ALTER TABLE Sportsman ADD CONSTRAINT FK_Sportsman_Coach 
	FOREIGN KEY (coach_id) REFERENCES Coach (coach_id)
;

ALTER TABLE Stadium ADD CONSTRAINT FK_Stadium_Place 
	FOREIGN KEY (place_id) REFERENCES Place (place_id)
;

ALTER TABLE Team ADD CONSTRAINT FK_Team_Coach 
	FOREIGN KEY (coach_id) REFERENCES Coach (coach_id)
;
