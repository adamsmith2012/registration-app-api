# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Students

Student.create(username: "adamsmith", password: "adamsmith", first_name: "Adam", last_name: "Smith");

# Departments

Department.create(name: "Mathematics", symbol: "MATH");

# Instructors

Instructor.create(first_name: "Mark", last_name: "Jones");

# Terms

Term.create(symbol: "S17", season: "Spring", year: 2017);

# Buildings

Building.create(name: "Paccar", symbol: "PA", img: "http://www.alscarchitects.com/assets/Projects/paccar-center-for-applied-science-ID69/gonzaga-paccar.jpg");

# Rooms

Room.create(name: "201", building_id: 1);

# Courses

Course.create(name: "Differential Equations", description: "Fun with PDEs", department_id: 1, term_id: 1, instructor_id: 1);

# Schedules

Schedule.create(student_id: 1, course_id: 1);

# Meetings

Meeting.create(time: "10:00:00", day: 'T', room_id: 1, course_id: 1);
Meeting.create(time: "10:00:00", day: 'R', room_id: 1, course_id: 1);
