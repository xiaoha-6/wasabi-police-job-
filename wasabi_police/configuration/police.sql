INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_police', 'police', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_police', 'police', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_police', 'police', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('police', '赛博城市警察局')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('police',0,'recruit','一级警员',0,'{}','{}')
	('police',1,'recruit','二级警员',0,'{}','{}')
	('police',2,'recruit','三级警员',0,'{}','{}')
	('police',3,'recruit','一级警司',0,'{}','{}')
	('police',4,'recruit','二级警司',12,'{}','{}'),
	('police',5,'recruit','三级警司',12,'{}','{}'),
	('police',6,'officer','一级警督',12,'{}','{}'),
	('police',7,'sergeant','二级警督',24,'{}','{}'),
	('police',8,'sergeant','三级警督',24,'{}','{}'),
	('police',9,'lieutenant','一级警监',24,'{}','{}'),
	('police',10,'lieutenant','二级警监',36,'{}','{}'),
	('police',11,'lieutenant','三级警监',36,'{}','{}'),
	('police',12,'lieutenant',"副总警监",48,'{}','{}'),
	('police',13,'boss','总警监',0,'{}','{}')
;

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_offpolice', 'offpolice', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_offpolice', 'offpolice', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_offpolice', 'offpolice', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('offpolice', '赛博城市警察局')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('offpolice',0,'recruit','下班一级警员',0,'{}','{}')
	('offpolice',1,'recruit','下班二级警员',0,'{}','{}')
	('offpolice',2,'recruit','下班三级警员',0,'{}','{}')
	('offpolice',3,'recruit','下班一级警司',0,'{}','{}')
	('offpolice',4,'recruit','下班二级警司',12,'{}','{}'),
	('offpolice',5,'recruit','下班三级警司',12,'{}','{}'),
	('offpolice',6,'officer','下班一级警督',12,'{}','{}'),
	('offpolice',7,'sergeant','下班二级警督',24,'{}','{}'),
	('offpolice',8,'sergeant','下班三级警督',24,'{}','{}'),
	('offpolice',9,'lieutenant','下班一级警监',24,'{}','{}'),
	('offpolice',10,'lieutenant','下班二级警监',36,'{}','{}'),
	('offpolice',11,'lieutenant','下班三级警监',36,'{}','{}'),
	('offpolice',12,'lieutenant',"下班副总警监",48,'{}','{}'),
	('offpolice',13,'boss','下班总警监',0,'{}','{}')
;


