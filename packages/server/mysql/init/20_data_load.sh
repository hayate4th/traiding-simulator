mysql -uroot -ppassword --local-infile=1 traiding_simulator_db -e "LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/init_daily.csv' INTO TABLE daily_transaction FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"' LINES TERMINATED BY '\n' IGNORE 1 LINES; LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/init_company.csv' INTO TABLE company_info FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"' LINES TERMINATED BY '\n' IGNORE 1 LINES;"