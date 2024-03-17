CREATE DATABASE IF NOT EXISTS Infinity_School;
USE Infinity_School;

CREATE TABLE IF NOT EXISTS school (
    id_structure INT AUTO_INCREMENT PRIMARY KEY,
    id_classes INT,
    days_of_week DATE
);

CREATE TABLE IF NOT EXISTS academic_setor (
    number_of_sector_types INT AUTO_INCREMENT PRIMARY KEY,
    pedagogical_director TEXT,
    academic_director TEXT,
    pedagogical_coordinator TEXT,
    academic_coordinator TEXT,
    coordination_assistant TEXT,
    school_secretary TEXT,
    school_supervisor TEXT,
    pedagogical_technician TEXT
);

CREATE TABLE IF NOT EXISTS dev_setor_infinity (
    id_dev_sector INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(5000),
    quantity INT,
    type_languages VARCHAR(5000),
    quantity_languages INT
);

CREATE TABLE IF NOT EXISTS teachers (
    quantity_teachers INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(5000),
    ages INT,
    quantity_disciplines INT,
    name_disciplines VARCHAR(5000)
);

CREATE TABLE IF NOT EXISTS students (
    quantity_students INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(5000),
    ages INT,
    enrollment INT
);

CREATE TABLE IF NOT EXISTS classes (
    id_class INT AUTO_INCREMENT PRIMARY KEY,
    id_series INT,
    classes INT,
    discipline VARCHAR(5000),
    hours_classes TIME
);

CREATE TABLE IF NOT EXISTS marketing_sector (
    id_marketing_sector INT AUTO_INCREMENT PRIMARY KEY,
    educational_marketing_manager TEXT,
    Marketing_team INT,
    Planning_of_marketing TEXT,
    Branding TEXT,
    Advertising_and_marketing TEXT,
    Marketing_Digital TEXT,
    Educational_Events_and_Holidays TEXT,
    Community_Relationship TEXT,
    Market_research TEXT,
    Monitoring_and_Analysis_of_Result TEXT
);

CREATE TABLE IF NOT EXISTS coordination (
    id_coordination INT AUTO_INCREMENT PRIMARY KEY,
    Pedagogical_Coordinator TEXT,
    Disciplinary_Guidance_Coordinator TEXT,
    Secondary_Education_Coordinator TEXT,
    Special_Projects_Coordinator INT,
    Educational_Technology_Coordinator TEXT,
    Activities_Coordinator_Extracurriculars INT,
    Educational_Assessment_Coordinator TEXT,
    Special_Education_Coordinator TEXT,
    id_school INT,
    id_setor INT,
    id_dev INT,
    id_teacher INT,
    id_students INT,
    id_classes INT,
    id_marketing_sector INT,
    
    FOREIGN KEY (id_school) REFERENCES school(id_structure),
    FOREIGN KEY (id_setor) REFERENCES academic_setor(number_of_sector_types),
    FOREIGN KEY (id_dev)  REFERENCES dev_setor_infinity(id_dev_sector),
    FOREIGN KEY (id_teacher) REFERENCES teachers(quantity_teachers),
    FOREIGN KEY (id_students) REFERENCES students(quantity_students),
    FOREIGN KEY (id_classes) REFERENCES classes(id_class),
    FOREIGN KEY (id_marketing_sector)  REFERENCES marketing_sector(id_marketing_sector)
);