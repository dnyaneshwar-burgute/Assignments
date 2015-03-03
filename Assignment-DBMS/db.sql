
drop table if exists candidates;
create table candidates (candidate_id int AUTO_INCREMENT PRIMARY KEY,candidate_fname varchar(30),candidate_mname varchar(30),candidate_lname varchar(30),candidate_dob date,candidate_contact varchar(20),candidate_address varchar(100),candidate_class varchar(30),username varchar(30), password varchar(30));


drop table if exists assessments;
create table assessments (assessment_id int AUTO_INCREMENT PRIMARY KEY,assessment_name varchar(30),assessment_subject varchar(30),assessment_year date,candidate_id int);

drop table if exists assessment_text_questions;
create table assessment_text_questions (question_id int AUTO_INCREMENT PRIMARY KEY,assessment_id int,question_text varchar(400),question_option1 varchar(400),question_option2 varchar(400),question_option3 varchar(400),question_option4 varchar(400),question_option5 varchar(400));
ALTER TABLE assessment_text_questions AUTO_INCREMENT=1;//start key



drop table if exists assessment_logical_questions;
create table assessment_logical_questions(question_id int AUTO_INCREMENT PRIMARY KEY,assessment_id int,question_img1 blob,question_img2 blob,question_img3 blob,question_img4 blob,question_optionimg1 blob,question_optionimg2 blob,question_optionimg3 blob,question_optionimg4 blob,question_optionimg5 blob);
ALTER TABLE assessment_logical_questions AUTO_INCREMENT=10000000;//start key 


drop table if exists ResultFromAdmin;
create table ResultFromAdmin(question_id int AUTO_INCREMENT PRIMARY KEY ,assessment_id int ,question_choice1 tinyint,question_choice2 tinyint,question_choice3 tinyint,question_choice4 tinyint,question_choice5 tinyint);


drop table if exists ResultFromCandidate;
create table ResultFromCandidate(session_id int,assessment_id int,question_choice1 tinyint,question_choice2 tinyint,question_choice3 tinyint,question_choice4 tinyint,question_choice5 tinyint);


drop table if exists candidate_scores;
create table candidate_scores(candidate_id int,candidate_score int);

drop table if exists candidate_states;
create table candidate_states(candidate_id int,session_id int);

//FUNCTION TO CALCULATE SCORE

create function calculate_score (session_id IN number) 
returns number is 
score number(3):=0;
BEGIN
CREATE or REPLACE VIEW Candidate_Result AS SELECT assessment_id,question_choice1,question_choice2,question_choice3,question_choice4,question_choice5
FROM ResultFromCandidates WHERE session_id:=session_id;
select count(*) into score from Candidate_Result natural join ResultFromAdmin;
return score;
END

//PROCEDURE TO SHOW REPORT
CREATE OR REPLACE PROCEDURE candidate_report 
(candidate_id IN OUT number)
IS
BEGIN
select candidates.candidate_id, candidates.candidate_fname,candidates.candidate_mname,candidates.candidate_lname,calculate_score() as "Marks" from candidates where candidate_id:=candidate_id; 
END candidate_report;



 






