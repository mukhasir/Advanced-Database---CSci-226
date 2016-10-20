-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: csci226
-- ------------------------------------------------------
-- Server version	5.6.26-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `my_report`
--

DROP TABLE IF EXISTS `my_report`;
/*!50001 DROP VIEW IF EXISTS `my_report`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `my_report` AS SELECT 
 1 AS `customer_name`,
 1 AS `branch_city`,
 1 AS `branch_name`,
 1 AS `account_number`,
 1 AS `balance`,
 1 AS `loan_number`,
 1 AS `loan_amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `my_report`
--

/*!50001 DROP VIEW IF EXISTS `my_report`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `my_report` AS select `d`.`customer_name` AS `customer_name`,`b`.`branch_city` AS `branch_city`,`b`.`branch_name` AS `branch_name`,`a`.`account_number` AS `account_number`,`a`.`balance` AS `balance`,`bb`.`loan_number` AS `loan_number`,`l`.`amount` AS `loan_amount` from ((((`branch` `b` left join `account` `a` on((`b`.`branch_name` = `a`.`branch_name`))) left join `depositor` `d` on((`a`.`account_number` = `d`.`account_number`))) left join `borrower` `bb` on((`d`.`customer_name` = `bb`.`customer_name`))) left join `loan` `l` on((`bb`.`loan_number` = `l`.`loan_number`))) order by `d`.`customer_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'csci226'
--

--
-- Dumping routines for database 'csci226'
--
/*!50003 DROP PROCEDURE IF EXISTS `add_account_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_account_user`(
   IN in_acnumber  varchar(15), 
   IN in_branch_name varchar(15),
   IN in_customer_name varchar(15),
   IN in_customer_street varchar(15),
   IN in_customer_city varchar(15)
   )
BEGIN
  Insert into account
  values(in_acnumber,in_branch_name,0,10,5);
  
  Insert into customer
  values (in_customer_name,in_customer_street,in_customer_city);
  
  Insert into depositor
  values (in_customer_name,in_acnumber);
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_branch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_branch`(
   IN in_branch_name varchar(15),
   IN in_branch_city varchar(15),
   IN in_assets INT
   )
BEGIN
  Insert into branch
  values(in_branch_name,in_branch_city,in_assets); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deposit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deposit`(
   IN in_acnumber  varchar(15), 
   IN in_amount INT)
BEGIN
  declare temp_balance int; 
  declare temp_name varchar(255);
  declare temp_branch varchar(15);
  declare temp_assets INT;

  set temp_balance := 0; 
  set temp_name	   := '';
  set temp_branch  := '';
  set temp_assets  := 0;
  SELECT balance,branch_name
  INTO   temp_balance,temp_branch
  FROM   account
  WHERE  account.account_number = in_acnumber;
  
  select assets
  INTO temp_assets
  FROM branch
  WHERE branch.branch_name=temp_branch;
  
  
  UPDATE account
  SET    balance = balance + in_amount
  WHERE  account.account_number = in_acnumber;
  
  UPDATE branch
  set assets = temp_assets + in_amount
  where branch.branch_name = temp_branch;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Loan_pay` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Loan_pay`(
    IN in_loannumber varchar(15), 
    IN in_amount INT)
BEGIN
  DECLARE temp_balance INT;
  DECLARE temp_min_balance INT;
  DECLARE temp_assets INT;
  DECLARE temp_branch varchar(15);

  set temp_balance := 0;                       
  SELECT amount,branch_name
  INTO   temp_balance,temp_branch
  FROM   loan
  WHERE  loan_number = in_loannumber;
  
  select assets
  INTO temp_assets
  FROM branch
  WHERE branch.branch_name=temp_branch;
    
	UPDATE loan
    SET    amount = 
           amount - in_amount
    WHERE  loan.loan_number = in_loannumber;
  
UPDATE branch
  set assets = temp_assets + in_amount
  where branch.branch_name = temp_branch;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `withdraw_from_account` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `withdraw_from_account`(
    IN in_acnumber varchar(15), 
    IN in_amount INT)
BEGIN
  DECLARE temp_balance INT;
  DECLARE temp_min_balance INT;
  DECLARE temp_service_charge  INT;
  DECLARE temp_branch varchar(15);
  declare temp_assets INT;

  set temp_balance := 0;                       
  SELECT balance,minimum_balance,service_charge,branch_name
  INTO   temp_balance,temp_min_balance,temp_service_charge,temp_branch
  FROM   account
  WHERE  account_number = in_acnumber;
  
  select assets
  INTO temp_assets
  FROM branch
  WHERE branch.branch_name=temp_branch;
  

  IF ((temp_balance - in_amount) < temp_min_balance) THEN
       UPDATE accounts
       SET    balance = 
              balance - in_amount - temp_service_charge
       WHERE  account.account_number = in_acnumber; 
  ELSE 
    UPDATE account
    SET    balance = 
           balance - in_amount
    WHERE  account.account_number = in_acnumber;
  END IF;
  
UPDATE branch
  set assets = temp_assets - in_amount
  where branch.branch_name = temp_branch;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-11 18:07:15
