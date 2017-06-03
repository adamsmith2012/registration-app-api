# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Students

Student.create(username: "adamsmith", password: "adamsmith", first_name: "Adam", last_name: "Smith", num: "23142522", email: "adam@mail.com", dob: "1994-03-18");
Student.create(username: "billy", password: "billy", first_name: "Billy", last_name: "Johnson", num: "42759833", email: "billy@mail.com", dob: "1993-05-09");
Student.create(username: "guest", password: "guest", first_name: "John", last_name: "Doe", num: "39857433", email: "johndoe@mail.com", dob: "1993-05-09");

# Instructors

Instructor.create(first_name: "Mark", last_name: "Jones", email: "jones_mark@university.edu", bio: "Received doctorate at age 23", img: "http://cdn.bulbagarden.net/upload/8/84/Professor_Oak_XY.png");

# Terms

Term.create(symbol: "F16", season: "Fall", year: 2016); # id: 1
Term.create(symbol: "S17", season: "Spring", year: 2017); # id: 2
# Term.create(symbol: "F13", season: "Fall", year: 2013); # id: 3
# Term.create(symbol: "S14", season: "Spring", year: 2014); # id: 4
# Term.create(symbol: "F14", season: "Fall", year: 2014); # id: 5
# Term.create(symbol: "S15", season: "Spring", year: 2015); # id: 6
# Term.create(symbol: "F15", season: "Fall", year: 2015); # id: 7
# Term.create(symbol: "S16", season: "Spring", year: 2016); # id: 8

# Departments

Department.create(name: "Mathematics", symbol: "MATH"); # id: 1
Department.create(name: "Philosophy", symbol: "PHIL"); # id: 2
Department.create(name: "Computer Science", symbol: "CPSC"); # id: 3
Department.create(name: "English", symbol: "ENGL"); # id: 4
Department.create(name: "Religion", symbol: "RELI"); # id: 5
Department.create(name: "Chemistry", symbol: "CHEM"); # id: 6
Department.create(name: "Speech Communication", symbol: "SPCO"); # id: 7
Department.create(name: "Biology", symbol: "BIOL"); # id: 8
Department.create(name: "Computer Engineering", symbol: "CPEN"); # id: 9

# Courses

# F16
Course.create(name: "General Chemistry", number: 101, description: "General Chemistry", department_id: 6, term_id: 1, instructor_id: 1, crn: 47263, credits: 3, enrolled: 0, cap: 15);
Course.create(name: "Computer Science I", number: 121, description: "Computer Science I", department_id: 3, term_id: 1, instructor_id: 1, crn: 56398, credits: 3, enrolled: 0, cap: 20);
Course.create(name: "Depicting the Divine in Literature", number: 105, description: "Depicting the Divine in Literature", department_id: 4, term_id: 1, instructor_id: 1, crn: 29675, credits: 3, enrolled: 0, cap: 20);
Course.create(name: "Calculus-Analytic Geometry I", number: 157, description: "Calculus-Analytic Geometry I", department_id: 1, term_id: 1, instructor_id: 1, crn: 38504, credits: 4, enrolled: 0, cap: 18);
Course.create(name: "Old and New Testament", number: 105, description: "Old and New Testament", department_id: 5, term_id: 1, instructor_id: 1, crn: 75940, credits: 3, enrolled: 0, cap: 25);
Course.create(name: "Computer Science II", number: 122, description: "Computer Science II", department_id: 3, term_id: 1, instructor_id: 1, crn: 38461, credits: 3, enrolled: 0, cap: 20);
Course.create(name: "English Composition", number: 101, description: "English Composition", department_id: 4, term_id: 1, instructor_id: 1, crn: 66512, credits: 3, enrolled: 0, cap: 18);
Course.create(name: "Calculus-Analytic Geometry II", number: 258, description: "Calculus-Analytic Geometry II", department_id: 1, term_id: 1, instructor_id: 1, crn: 90023, credits: 4, enrolled: 0, cap: 22);
Course.create(name: "Critical Thinking", number: 101, description: "Critical Thinking", department_id: 2, term_id: 1, instructor_id: 1, crn: 11547, credits: 2, enrolled: 0, cap: 26);
Course.create(name: "Intro to Speech Communication", number: 101, description: "Intro to Speech Communication", department_id: 7, term_id: 1, instructor_id: 1, crn: 75839, credits: 2, enrolled: 0, cap: 16);
Course.create(name: "Information Flow in Biological Systems", number: 105, description: "Information Flow in Biological Systems", department_id: 8, term_id: 1, instructor_id: 1, crn: 47028, credits: 3, enrolled: 0, cap: 30);
Course.create(name: "Intro to Digital Logic", number: 230, description: "Intro to Digital Logic", department_id: 9, term_id: 1, instructor_id: 1, crn: 44134, credits: 3, enrolled: 0, cap: 20);
Course.create(name: "Algorithms and Abstract Data Structures", number: 223, description: "Algorithms and Abstract Data Structures", department_id: 3, term_id: 1, instructor_id: 1, crn: 76877, credits: 3, enrolled: 0, cap: 20);
Course.create(name: "Discrete Structures", number: 231, description: "Discrete Structures", department_id: 1, term_id: 1, instructor_id: 1, crn: 90370, credits: 3, enrolled: 0, cap: 25);
Course.create(name: "Philosophy of Human Nature", number: 201, description: "Philosophy of Human Nature", department_id: 2, term_id: 1, instructor_id: 1, crn: 33321, credits: 3, enrolled: 0, cap: 24);
Course.create(name: "Energy Flow in Biological Systems", number: 106, description: "Energy Flow in Biological Systems", department_id: 8, term_id: 1, instructor_id: 1, crn: 33151, credits: 3, enrolled: 0, cap: 30);
Course.create(name: "Microcomputer Architecture and Assembly Programming", number: 231, description: "Microcomputer Architecture and Assembly Programming", department_id: 9, term_id: 1, instructor_id: 1, crn: 55235, credits: 3, enrolled: 0, cap: 18);
Course.create(name: "Computational Modeling", number: 212, description: "Computationl Modeling", department_id: 3, term_id: 1, instructor_id: 1, crn: 74738, credits: 3, enrolled: 0, cap: 20);
Course.create(name: "Object-Oriented & Event Driven Programming", number: 224, description: "Object-Oriented & Event Driven Programming", department_id: 3, term_id: 1, instructor_id: 1, crn: 22156, credits: 3, enrolled: 0, cap: 24);
Course.create(name: "History of Christianity", number: 205, description: "History of Christianity", department_id: 5, term_id: 1, instructor_id: 1, crn: 11132, credits: 3, enrolled: 0, cap: 25);
# S17
Course.create(name: "Computer Graphics", number: 325, description: "Computer Graphics", department_id: 3, term_id: 2, instructor_id: 1, crn: 20080, credits: 3, enrolled: 0, cap: 14);
Course.create(name: "Operating Systems", number: 346, description: "Operating Systems", department_id: 3, term_id: 2, instructor_id: 1, crn: 84725, credits: 3, enrolled: 0, cap: 24);
Course.create(name: "Calculus-Analytic Geometry III", number: 259, description: "Calculus-Analytic Geometry III", department_id: 1, term_id: 2, instructor_id: 1, crn: 74748, credits: 4, enrolled: 0, cap: 22);
Course.create(name: "Statistics for Experimentalist", number: 321, description: "Statistics for Experimentalist", department_id: 1, term_id: 2, instructor_id: 1, crn: 66639, credits: 3, enrolled: 0, cap: 26);
Course.create(name: "Ethics", number: 301, description: "Ethics", department_id: 2, term_id: 2, instructor_id: 1, crn: 51231, credits: 3, enrolled: 0, cap: 26);
Course.create(name: "Organization of Programming Languages", number: 326, description: "Organization of Programming Languages", department_id: 3, term_id: 2, instructor_id: 1, crn: 11003, credits: 3, enrolled: 0, cap: 24);
Course.create(name: "Computer Architecture", number: 431, description: "Computer Architecture", department_id: 3, term_id: 2, instructor_id: 1, crn: 88672, credits: 3, enrolled: 0, cap: 26);
Course.create(name: "Ordinary Differential Equations", number: 260, description: "Ordinary Differential Equations", department_id: 1, term_id: 2, instructor_id: 1, crn: 44482, credits: 3, enrolled: 0, cap: 22);
Course.create(name: "Linear Algebra", number: 339, description: "Linear Algebra", department_id: 1, term_id: 2, instructor_id: 1, crn: 99284, credits: 3, enrolled: 0, cap: 18);
Course.create(name: "Judaism", number: 352, description: "Judaism", department_id: 5, term_id: 2, instructor_id: 1, crn: 73837, credits: 3, enrolled: 0, cap: 21);
Course.create(name: "Theory of Computation", number: 351, description: "Theory of Computation", department_id: 3, term_id: 2, instructor_id: 1, crn: 30992, credits: 3, enrolled: 0, cap: 25);
Course.create(name: "Database Management Systems", number: 421, description: "Database Management Systems", department_id: 3, term_id: 2, instructor_id: 1, crn: 12231, credits: 3, enrolled: 0, cap: 30);
Course.create(name: "Software Engineering & Group Design I", number: 491, description: "Software Engineering & Group Design I", department_id: 3, term_id: 2, instructor_id: 1, crn: 18888, credits: 3, enrolled: 0, cap: 28);
Course.create(name: "Fundamentals of Mathematics", number: 301, description: "Fundamentals of Mathematics", department_id: 1, term_id: 2, instructor_id: 1, crn: 99284, credits: 3, enrolled: 0, cap: 18);
Course.create(name: "Applied Cryptography", number: 453, description: "Applied Cryptography", department_id: 3, term_id: 2, instructor_id: 1, crn: 39263, credits: 3, enrolled: 0, cap: 24);
Course.create(name: "Game Programming", number: 466, description: "Game Programming", department_id: 3, term_id: 2, instructor_id: 1, crn: 30334, credits: 3, enrolled: 0, cap: 20);
Course.create(name: "Software Engineering & Group Design II", number: 492, description: "Software Engineering & Group Design II", department_id: 3, term_id: 2, instructor_id: 1, crn: 72122, credits: 3, enrolled: 0, cap: 28);
Course.create(name: "Partial Differential Equations", number: 454, description: "Partial Differential Equations", department_id: 1, term_id: 2, instructor_id: 1, crn: 80201, credits: 3, enrolled: 0, cap: 18);
Course.create(name: "C.S. Lewis", number: 417, description: "C.S. Lewis", department_id: 2, term_id: 2, instructor_id: 1, crn: 55121, credits: 3, enrolled: 0, cap: 18);

# Buildings

Building.create(name: "Paccar", symbol: "PA", img: "http://www.alscarchitects.com/assets/Projects/paccar-center-for-applied-science-ID69/gonzaga-paccar.jpg", description: "Dedicated in 2008, the PACCAR Center for Applied Science is Gonzaga University's first \"green\" building, and received the prestigious \"Gold\" certification from the Leadership in Energy and Environmental Design (LEED) rating system in 2010. The building incorporates engineering principles that promote energy conservation and sustainability in design and construction practices. The PACCAR Center houses sophisticated laboratories dedicated to robotics, artificial vision, and transmission and distribution line engineering, as well as classrooms and faculty offices.");

# Rooms

Room.create(name: "201", building_id: 1);
Room.create(name: "206", building_id: 1);


# Schedules
# Course 1
Schedule.create(student_id: 1, course_id: 1);
Schedule.create(student_id: 2, course_id: 1);
Course.find(1).update(enrolled: 2)
# Course 2
Schedule.create(student_id: 1, course_id: 2);
Course.find(2).update(enrolled: 1)
# Course 3
Schedule.create(student_id: 1, course_id: 3);
Course.find(3).update(enrolled: 1)

# Meetings
Meeting.create(time: "10:00 AM", day: 'T', room_id: 1, course_id: 1);
Meeting.create(time: "11:00 AM", day: 'R', room_id: 1, course_id: 1);
