# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Students

Student.create(username: "adamsmith", password: "adamsmith", first_name: "Adam", last_name: "Smith", num: "23142522", email: "adam@mail.com", dob: "1994-03-18");
Student.create(username: "guest", password: "guest", first_name: "John", last_name: "Doe", num: "39857433", email: "johndoe@mail.com", dob: "1993-05-09");

50.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  username = (first_name + last_name).downcase + rand(100).to_s
  dob = "1990-01-01"
  num = Faker::Number.number(8)
  email = username + "@mail.com"
  Student.create(username: username, password: username, first_name: first_name, last_name: last_name, num: num, email: email, dob: dob);
end

# Instructors

Instructor.create(first_name: "Samuel", last_name: "Oak", email: "oak_samuel@university.edu", bio: "Professor Samuel Oak (Japanese: オーキド・ユキナリ博士 Dr. Yukinari Ōkido) is a Pokémon Professor who lives and works at his research lab in Pallet Town of the Kanto region. According to Professor Elm, Oak concentrates on Pokémon and human relationships as a profession.", img: "https://pbs.twimg.com/profile_images/428279017339645952/GtojrlL9.jpeg");
Instructor.create(first_name: "Lionel", last_name: "Messi", email: "messi@university.edu", bio: "Lionel Andrés \"Leo\" Messi (born 24 June 1987) is an Argentine professional footballer who plays as a forward for Spanish club FC Barcelona and the Argentina national team. Often considered the best player in the world and regarded by many as the greatest of all time, Messi is the only player in history to win five FIFA Ballon d\'Or awards, four of which he won consecutively, and the first to win three European Golden Shoes. He has won 29 trophies with Barcelona, including eight La Liga titles, four UEFA Champions League titles, and five Copas del Rey. Both a prolific goalscorer and a creative playmaker, Messi holds the records for most official goals scored in La Liga (349), a La Liga season (50) and a club football season in Europe (73), as well as those for most assists made in La Liga (137) and the Copa América (11). He has scored over 500 senior career goals for club and country.", img: "http://www.thefamouspeople.com/profiles/images/lionel-messi-2.jpg");
Instructor.create(first_name: "Michael", last_name: "Jordan", email: "jordan@university.edu", bio: "Michael Jeffrey Jordan (born February 17, 1963), also known by his initials, MJ, is an American retired professional basketball player, businessman, and principal owner and chairman of the Charlotte Hornets. Jordan played 15 seasons in the National Basketball Association (NBA) for the Chicago Bulls and Washington Wizards. His biography on the NBA website states: \"By acclamation, Michael Jordan is the greatest basketball player of all time.\"Jordan was one of the most effectively marketed athletes of his generation and was considered instrumental in popularizing the NBA around the world in the 1980s and 1990s", img: "https://pbs.twimg.com/profile_images/765144858/michael-jordan_400x400.jpg");
Instructor.create(first_name: "Ken", last_name: "Griffey Jr.", email: "griffey@university.edu", bio: "George Kenneth Griffey Jr. (born November 21, 1969) nicknamed \"Junior\" and \"The Kid\", is an American former professional baseball outfielder who played 22 years in Major League Baseball (MLB). He spent most of his career with the Seattle Mariners and Cincinnati Reds, along with a short stint with the Chicago White Sox. A 13-time All-Star, Griffey is one of the most prolific home run hitters in baseball history; his 630 home runs rank as the sixth-most in MLB history. Griffey was also an exceptional defender and won 10 Gold Glove Awards in center field. He is tied for the record of most consecutive games with a home run (eight, with Don Mattingly and Dale Long).", img: "http://assets.nydailynews.com/polopoly_fs/1.2487427.1452101767!/img/httpImage/image.jpg_gen/derivatives/article_750/chasing-maris-griffey.jpg");
Instructor.create(first_name: "Marshawn", last_name: "Lynch", email: "lynch@university.edu", bio: "Marshawn Terrell Lynch (born April 22, 1986) is an American football running back for the Oakland Raiders of the National Football League (NFL). He was drafted by the Buffalo Bills in the first round of the 2007 NFL Draft after playing college football at California, where he became the school's second all-time career rusher. As a member of the Seattle Seahawks, he won Super Bowl XLVIII against the Denver Broncos.
Lynch earned the nickname \"Beast Mode\" for his powerful running style, propensity for breaking tackles, and consistent ability to run over defenders.", img: "https://scontent.cdninstagram.com/hphotos-xpa1/t51.2885-15/e15/1515458_1538845706395130_219171769_n.jpg");

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
Course.create(name: "Computer Science I", number: 121, description: "Computer Science I", department_id: 3, term_id: 1, instructor_id: 2, crn: 56398, credits: 3, enrolled: 0, cap: 20);
Course.create(name: "Depicting the Divine in Literature", number: 105, description: "Depicting the Divine in Literature", department_id: 4, term_id: 1, instructor_id: 3, crn: 29675, credits: 3, enrolled: 0, cap: 20);
Course.create(name: "Calculus-Analytic Geometry I", number: 157, description: "Calculus-Analytic Geometry I", department_id: 1, term_id: 1, instructor_id: 4, crn: 38504, credits: 4, enrolled: 0, cap: 18);
Course.create(name: "Old and New Testament", number: 105, description: "Old and New Testament", department_id: 5, term_id: 1, instructor_id: 5, crn: 75940, credits: 3, enrolled: 0, cap: 25);
Course.create(name: "Computer Science II", number: 122, description: "Computer Science II", department_id: 3, term_id: 1, instructor_id: 1, crn: 38461, credits: 3, enrolled: 0, cap: 20);
Course.create(name: "English Composition", number: 101, description: "English Composition", department_id: 4, term_id: 1, instructor_id: 2, crn: 66512, credits: 3, enrolled: 0, cap: 18);
Course.create(name: "Calculus-Analytic Geometry II", number: 258, description: "Calculus-Analytic Geometry II", department_id: 1, term_id: 1, instructor_id: 3, crn: 90023, credits: 4, enrolled: 0, cap: 22);
Course.create(name: "Critical Thinking", number: 101, description: "Critical Thinking", department_id: 2, term_id: 1, instructor_id: 4, crn: 11547, credits: 2, enrolled: 0, cap: 26);
Course.create(name: "Intro to Speech Communication", number: 101, description: "Intro to Speech Communication", department_id: 7, term_id: 1, instructor_id: 5, crn: 75839, credits: 2, enrolled: 0, cap: 16);
Course.create(name: "Information Flow in Biological Systems", number: 105, description: "Information Flow in Biological Systems", department_id: 8, term_id: 1, instructor_id: 1, crn: 47028, credits: 3, enrolled: 0, cap: 30);
Course.create(name: "Intro to Digital Logic", number: 230, description: "Intro to Digital Logic", department_id: 9, term_id: 1, instructor_id: 2, crn: 44134, credits: 3, enrolled: 0, cap: 20);
Course.create(name: "Algorithms and Abstract Data Structures", number: 223, description: "Algorithms and Abstract Data Structures", department_id: 3, term_id: 1, instructor_id: 3, crn: 76877, credits: 3, enrolled: 0, cap: 20);
Course.create(name: "Discrete Structures", number: 231, description: "Discrete Structures", department_id: 1, term_id: 1, instructor_id: 4, crn: 90370, credits: 3, enrolled: 0, cap: 25);
Course.create(name: "Philosophy of Human Nature", number: 201, description: "Philosophy of Human Nature", department_id: 2, term_id: 1, instructor_id: 5, crn: 33321, credits: 3, enrolled: 0, cap: 24);
Course.create(name: "Energy Flow in Biological Systems", number: 106, description: "Energy Flow in Biological Systems", department_id: 8, term_id: 1, instructor_id: 1, crn: 33151, credits: 3, enrolled: 0, cap: 30);
Course.create(name: "Microcomputer Architecture and Assembly Programming", number: 231, description: "Microcomputer Architecture and Assembly Programming", department_id: 9, term_id: 1, instructor_id: 2, crn: 55235, credits: 3, enrolled: 0, cap: 18);
Course.create(name: "Computational Modeling", number: 212, description: "Computationl Modeling", department_id: 3, term_id: 1, instructor_id: 3, crn: 74738, credits: 3, enrolled: 0, cap: 20);
Course.create(name: "Object-Oriented & Event Driven Programming", number: 224, description: "Object-Oriented & Event Driven Programming", department_id: 3, term_id: 1, instructor_id: 4, crn: 22156, credits: 3, enrolled: 0, cap: 24);
Course.create(name: "History of Christianity", number: 205, description: "History of Christianity", department_id: 5, term_id: 1, instructor_id: 5, crn: 11132, credits: 3, enrolled: 0, cap: 25);
# S17
Course.create(name: "Computer Graphics", number: 325, description: "Computer Graphics", department_id: 3, term_id: 2, instructor_id: 1, crn: 20080, credits: 3, enrolled: 0, cap: 14);
Course.create(name: "Operating Systems", number: 346, description: "Operating Systems", department_id: 3, term_id: 2, instructor_id: 2, crn: 84725, credits: 3, enrolled: 0, cap: 24);
Course.create(name: "Calculus-Analytic Geometry III", number: 259, description: "Calculus-Analytic Geometry III", department_id: 1, term_id: 2, instructor_id: 3, crn: 74748, credits: 4, enrolled: 0, cap: 22);
Course.create(name: "Statistics for Experimentalist", number: 321, description: "Statistics for Experimentalist", department_id: 1, term_id: 2, instructor_id: 4, crn: 66639, credits: 3, enrolled: 0, cap: 26);
Course.create(name: "Ethics", number: 301, description: "Ethics", department_id: 2, term_id: 2, instructor_id: 5, crn: 51231, credits: 3, enrolled: 0, cap: 26);
Course.create(name: "Organization of Programming Languages", number: 326, description: "Organization of Programming Languages", department_id: 3, term_id: 2, instructor_id: 1, crn: 11003, credits: 3, enrolled: 0, cap: 24);
Course.create(name: "Computer Architecture", number: 431, description: "Computer Architecture", department_id: 3, term_id: 2, instructor_id: 2, crn: 88672, credits: 3, enrolled: 0, cap: 26);
Course.create(name: "Ordinary Differential Equations", number: 260, description: "Ordinary Differential Equations", department_id: 1, term_id: 2, instructor_id: 3, crn: 44482, credits: 3, enrolled: 0, cap: 22);
Course.create(name: "Linear Algebra", number: 339, description: "Linear Algebra", department_id: 1, term_id: 2, instructor_id: 4, crn: 99284, credits: 3, enrolled: 0, cap: 18);
Course.create(name: "Judaism", number: 352, description: "Judaism", department_id: 5, term_id: 2, instructor_id: 5, crn: 73837, credits: 3, enrolled: 0, cap: 21);
Course.create(name: "Theory of Computation", number: 351, description: "Theory of Computation", department_id: 3, term_id: 2, instructor_id: 1, crn: 30992, credits: 3, enrolled: 0, cap: 25);
Course.create(name: "Database Management Systems", number: 421, description: "Database Management Systems", department_id: 3, term_id: 2, instructor_id: 2, crn: 12231, credits: 3, enrolled: 0, cap: 30);
Course.create(name: "Software Engineering & Group Design I", number: 491, description: "Software Engineering & Group Design I", department_id: 3, term_id: 2, instructor_id: 3, crn: 18888, credits: 3, enrolled: 0, cap: 28);
Course.create(name: "Fundamentals of Mathematics", number: 301, description: "Fundamentals of Mathematics", department_id: 1, term_id: 2, instructor_id: 4, crn: 99284, credits: 3, enrolled: 0, cap: 18);
Course.create(name: "Applied Cryptography", number: 453, description: "Applied Cryptography", department_id: 3, term_id: 2, instructor_id: 5, crn: 39263, credits: 3, enrolled: 0, cap: 24);
Course.create(name: "Game Programming", number: 466, description: "Game Programming", department_id: 3, term_id: 2, instructor_id: 1, crn: 30334, credits: 3, enrolled: 0, cap: 20);
Course.create(name: "Software Engineering & Group Design II", number: 492, description: "Software Engineering & Group Design II", department_id: 3, term_id: 2, instructor_id: 2, crn: 72122, credits: 3, enrolled: 0, cap: 28);
Course.create(name: "Partial Differential Equations", number: 454, description: "Partial Differential Equations", department_id: 1, term_id: 2, instructor_id: 5, crn: 80201, credits: 3, enrolled: 0, cap: 18);
Course.create(name: "C.S. Lewis", number: 417, description: "C.S. Lewis", department_id: 2, term_id: 2, instructor_id: 4, crn: 55121, credits: 3, enrolled: 0, cap: 18);

# Buildings

Building.create(name: "Paccar", symbol: "PA", img: "http://www.alscarchitects.com/assets/Projects/paccar-center-for-applied-science-ID69/gonzaga-paccar.jpg", description: "Dedicated in 2008, the PACCAR Center for Applied Science is Gonzaga University's first \"green\" building, and received the prestigious \"Gold\" certification from the Leadership in Energy and Environmental Design (LEED) rating system in 2010. The building incorporates engineering principles that promote energy conservation and sustainability in design and construction practices. The PACCAR Center houses sophisticated laboratories dedicated to robotics, artificial vision, and transmission and distribution line engineering, as well as classrooms and faculty offices.");
Building.create(name: "Herak", symbol: "HK", img: "https://walkerconstructioninc.blob.core.windows.net/projects/gonzaga-herak-center/gonzaga-herak-center-06.jpg", description: "Originally built in 1948 and extensively expanded and upgraded, the Herak Center serves as home to Gonzaga's School of Engineering and Applied Science, which offers degrees in civil, computer, electrical, and mechanical engineering, as well as engineering management and computer science. Additionally, the building houses the departments of physics and mathematics.");
Building.create(name: "College Hall", symbol: "CH", img: "http://mediad.publicbroadcasting.net/p/idaho/files/201305/Gonzaga%20hall.jpg", description: "Built in 1898 and formerly called the Administration Building, College Hall is Gonzaga's oldest and most storied hall. It houses many of Gonzaga's administrative offices, including Admissions, Financial Aid, Registrar, Student Life, and Public Relations. It also serves as one of Gonzaga's primary classroom buildings. The University Chapel, with its beautiful stained glass windows, is located on the third floor.");

# Rooms

Room.create(name: "111", building_id: 1);
Room.create(name: "226", building_id: 1);
Room.create(name: "221", building_id: 1);
Room.create(name: "222", building_id: 1);
Room.create(name: "116", building_id: 1);
Room.create(name: "105", building_id: 1);
Room.create(name: "231", building_id: 2);
Room.create(name: "212", building_id: 2);
Room.create(name: "321", building_id: 2);
Room.create(name: "316", building_id: 2);
Room.create(name: "213", building_id: 2);
Room.create(name: "105", building_id: 2);
Room.create(name: "201", building_id: 3);
Room.create(name: "206", building_id: 3);
Room.create(name: "321", building_id: 3);
Room.create(name: "316", building_id: 3);
Room.create(name: "416", building_id: 3);
Room.create(name: "405", building_id: 3);


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

3.upto(53) do |student_id|
  5.times do
    course_id = rand(1..39)
    course = Course.find(course_id)
    unless course.enrolled >= course.cap
      begin
        Schedule.create(student_id: student_id, course_id: course_id)
        enrolled = course.enrolled + 1
        course.update(enrolled: enrolled)
      rescue
        puts "failed"
      end
    end
  end
end

# Meetings

# 39 courses
1.upto(39) do |course_id|
  days = ['M', 'T', 'W', 'R', 'F']
  times = ['8:00 AM', '9:00 AM', '10:00 AM', '11:00 AM', '12:00 PM', '1:00 PM', '2:00 PM', '3:00 PM', '4:00 PM']
  days_of_class = [2,3].sample
  index = 0
  index = 1 if days_of_class == 2
  days_of_class.times do
    day = days[index]
    time = times.sample
    room_id = Room.find(rand(Room.count) + 1).id
    Meeting.create(time: time, day: day, room_id: room_id, course_id: course_id);
    index = index + 2
  end
end
