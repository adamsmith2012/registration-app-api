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

# Departments

Department.create(name: "Mathematics", symbol: "MATH");
Department.create(name: "Philosophy", symbol: "PHIL");

# Instructors

Instructor.create(first_name: "Mark", last_name: "Jones");

# Terms

Term.create(symbol: "S17", season: "Spring", year: 2017);
Term.create(symbol: "F16", season: "Fall", year: 2016);

# Buildings

Building.create(name: "Paccar", symbol: "PA", img: "http://www.alscarchitects.com/assets/Projects/paccar-center-for-applied-science-ID69/gonzaga-paccar.jpg", description: "Dedicated in 2008, the PACCAR Center for Applied Science is Gonzaga University's first \"green\" building, and received the prestigious \"Gold\" certification from the Leadership in Energy and Environmental Design (LEED) rating system in 2010. The building incorporates engineering principles that promote energy conservation and sustainability in design and construction practices. The PACCAR Center houses sophisticated laboratories dedicated to robotics, artificial vision, and transmission and distribution line engineering, as well as classrooms and faculty offices.");

# Rooms

Room.create(name: "201", building_id: 1);
Room.create(name: "206", building_id: 1);

# Courses

Course.create(name: "Partial Differential Equations", number: 422, description: "Fun with PDEs", department_id: 1, term_id: 1, instructor_id: 1, crn: 47263, credits: 3, enrolled: 0, cap: 15);
Course.create(name: "Introduction to Ethics", number: 109, description: "Introduction to Ethics", department_id: 2, term_id: 1, instructor_id: 1, crn: 56398, credits: 3, enrolled: 0, cap: 20);
Course.create(name: "Introduction to Calculus", number: 221, description: "Introduction to Calculus", department_id: 1, term_id: 2, instructor_id: 1, crn: 29675, credits: 3, enrolled: 0, cap: 20);

# Schedules

Schedule.create(student_id: 1, course_id: 1);
Schedule.create(student_id: 1, course_id: 2);
Schedule.create(student_id: 1, course_id: 3);
Schedule.create(student_id: 2, course_id: 1);

# Meetings
Meeting.create(time: "10:00 AM", day: 'T', room_id: 1, course_id: 1);
Meeting.create(time: "11:00 AM", day: 'R', room_id: 1, course_id: 1);
