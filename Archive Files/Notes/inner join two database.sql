SELECT * FROM scc_doctrack.tbl_users  INNER JOIN sccdrrmo.`tbl_individual`
 ON scc_doctrack.tbl_users.`entityno` = sccdrrmo.`tbl_individual`.`entity_no` ORDER BY scc_doctrack.tbl_users.`entityno`; 