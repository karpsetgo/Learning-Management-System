-- ============================
-- LMS DATABASE TABLES
-- ============================

CREATE TABLE roles (
    role_id NUMBER PRIMARY KEY,
    role_name VARCHAR2(30) UNIQUE NOT NULL
);

CREATE TABLE users (
    user_id NUMBER PRIMARY KEY,
    username VARCHAR2(50) UNIQUE NOT NULL,
    email VARCHAR2(100) UNIQUE NOT NULL,
    role_id NUMBER,
    status VARCHAR2(20) DEFAULT 'ACTIVE'
        CHECK (status IN ('ACTIVE','INACTIVE')),
    created_at DATE DEFAULT SYSDATE,
    CONSTRAINT fk_users_roles FOREIGN KEY (role_id)
        REFERENCES roles(role_id)
);

CREATE TABLE students (
    student_id NUMBER PRIMARY KEY,
    user_id NUMBER UNIQUE,
    enrollment_date DATE DEFAULT SYSDATE,
    CONSTRAINT fk_students_users FOREIGN KEY (user_id)
        REFERENCES users(user_id)
);

CREATE TABLE instructors (
    instructor_id NUMBER PRIMARY KEY,
    user_id NUMBER UNIQUE,
    expertise VARCHAR2(100),
    CONSTRAINT fk_instructors_users FOREIGN KEY (user_id)
        REFERENCES users(user_id)
);

CREATE TABLE categories (
    category_id NUMBER PRIMARY KEY,
    category_name VARCHAR2(50) UNIQUE NOT NULL
);

CREATE TABLE courses (
    course_id NUMBER PRIMARY KEY,
    course_name VARCHAR2(100) NOT NULL,
    category_id NUMBER,
    instructor_id NUMBER,
    created_date DATE DEFAULT SYSDATE,
    CONSTRAINT fk_courses_category FOREIGN KEY (category_id)
        REFERENCES categories(category_id),
    CONSTRAINT fk_courses_instructor FOREIGN KEY (instructor_id)
        REFERENCES instructors(instructor_id)
);

CREATE TABLE enrollments (
    enrollment_id NUMBER PRIMARY KEY,
    student_id NUMBER,
    course_id NUMBER,
    enrollment_date DATE,
    progress NUMBER DEFAULT 0 CHECK (progress BETWEEN 0 AND 100),
    CONSTRAINT fk_enroll_student FOREIGN KEY (student_id)
        REFERENCES students(student_id),
    CONSTRAINT fk_enroll_course FOREIGN KEY (course_id)
        REFERENCES courses(course_id)
);

