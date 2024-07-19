# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# User.delete_all
# Course.delete_all
# AvailCourse.delete_all
# RegClass.delete_all
RegClass.delete_all
Major.delete_all
Professor.delete_all
AvailCourse.delete_all
Course.delete_all


######################
##### Professors #####
######################
cs_prof_1 = Professor.create(
    first_name: "John",
    last_name: "Doe",
    title: "Dr."
)

cs_prof_2 = Professor.create(
    first_name: "Mary",
    last_name: "Sue",
    title: "Dr."
)

cs_prof_3 = Professor.create(
    first_name: "Sally",
    last_name: "Jones",
    title: "Mrs."
)

cs_prof_4 = Professor.create(
    first_name: "Ron",
    last_name: "Smith",
    title: "Mr."
)

cs_prof_5 = Professor.create(
    first_name: "Bill",
    last_name: "Johnson",
    title: "Dr."
)

bus_prof_1 = Professor.create(
    first_name: "Donald",
    last_name: "McDonald",
    title: "Dr."
)

bus_prof_2 = Professor.create(
    first_name: "Phil",
    last_name: "Harris",
    title: "Mr."
)

# user1 = User.create(
#     email:"h@gmail.com",
#     password: "123456",
#     password_confirmation: "123456",
#     first_name:"a",
#     last_name:"b",
#     major: "Computer Science",
#     unum: 123456
# )


######################
#####  Courses   #####
######################
cs1 = Course.create(
    subject: "CDA",
    c_num: 3103,
    title: "Computer Organization"
)

cs2 = Course.create(
    subject: "CDA",
    c_num: 3201,
    title: "Computer Logic and Design"
)

cs3 = Course.create(
    subject: "CDA",
    c_num: 4205,
    title: "Computer Architecture"
)

cs4 = Course.create(
    subject: "CEN",
    c_num: 4020,
    title: "Software Engineering"
)

cs5 = Course.create(
    subject: "CNT",
    c_num: 4419,
    title: "Secure Coding"
)

cs6 = Course.create(
    subject: "COP",
    c_num: 2510,
    title: "Programming Concepts"
)

cs7 = Course.create(
    subject: "COP",
    c_num: 3514,
    title: "Program Design"
)

cs8 = Course.create(
    subject: "COP",
    c_num: 4530,
    title: "Data Structures"
)

cs9 = Course.create(
    subject: "COP",
    c_num: 4600,
    title: "Operating Systems"
)

cs10 = Course.create(
    subject: "COT",
    c_num: 4400,
    title: "Analysis of Algorithms"
)

bus1 = Course.create(
    subject: "BUL",
    c_num: 3320,
    title: "Law and Business I"
)

bus2 = Course.create(
    subject: "FIN",
    c_num: 3403,
    title: "Pinciples of Finance"
)

bus3 = Course.create(
    subject: "GEB",
    c_num: 4890,
    title: "Strategic Management and Decision Making"
)

bus4 = Course.create(
    subject: "MAN",
    c_num: 3025,
    title: "Principles of Management"
)

bus5 = Course.create(
    subject: "QMB",
    c_num: 3302,
    title: "Data Analysis for Business"
)


#########################
##### Avail Courses #####
#########################
AvailCourse.create(
    semester:'Fall', 
    course: cs1,
    days:'F', 
    date_start: '2024-07-07',
    date_end: '2024-10-02',
    time_start:'09:00', 
    time_end:'10:30',
    professor_name: "#{cs_prof_1.title} #{cs_prof_1.first_name} #{cs_prof_1.last_name}"
)

AvailCourse.create(
    semester:'Fall', 
    course: cs2,
    days:'MW', 
    date_start: '2024-07-07',
    date_end: '2024-10-02',
    time_start:'11:00', 
    time_end:'12:30',
    professor_name: "#{cs_prof_2.title} #{cs_prof_2.first_name} #{cs_prof_2.last_name}"
)

AvailCourse.create(
    semester:'Fall', 
    course: cs3,
    days:'MW', 
    date_start: '2024-07-07',
    date_end: '2024-10-02',
    time_start:'08:00', 
    time_end:'09:15',
    professor_name: "#{cs_prof_3.title} #{cs_prof_3.first_name} #{cs_prof_3.last_name}"
)

AvailCourse.create(
    semester:'Fall', 
    course: cs4,
    days:'TR', 
    date_start: '2024-07-07',
    date_end: '2024-10-02',
    time_start:'09:15', 
    time_end:'10:45',
    professor_name: "#{cs_prof_4.title} #{cs_prof_4.first_name} #{cs_prof_4.last_name}"
)

AvailCourse.create(
    semester:'Fall', 
    course: cs5,
    days:'TR', 
    date_start: '2024-07-07',
    date_end: '2024-10-02',
    time_start:'09:15', 
    time_end:'10:45',
    professor_name: "#{cs_prof_5.title} #{cs_prof_1.first_name} #{cs_prof_1.last_name}"
)

AvailCourse.create(
    semester:'Fall', 
    course: cs6,
    days:'F', 
    date_start: '2024-07-07',
    date_end: '2024-10-02',
    time_start:'09:00', 
    time_end:'10:30',
    professor_name: "#{cs_prof_2.title} #{cs_prof_2.first_name} #{cs_prof_2.last_name}"
)

AvailCourse.create(
    semester:'Fall', 
    course: cs7,
    days:'F', 
    date_start: '2024-07-07',
    date_end: '2024-10-02',
    time_start:'10:30', 
    time_end:'12:00',
    professor_name: "#{cs_prof_3.title} #{cs_prof_3.first_name} #{cs_prof_3.last_name}"
)

AvailCourse.create(
    semester:'Fall', 
    course: cs8,
    days:'TR', 
    date_start: '2024-07-07',
    date_end: '2024-10-02',
    time_start:'14:00', 
    time_end:'15:15',
    professor_name: "#{cs_prof_4.title} #{cs_prof_4.first_name} #{cs_prof_4.last_name}"
)

AvailCourse.create(
    semester:'Fall', 
    course: cs9,
    days:'MW', 
    date_start: '2024-07-07',
    date_end: '2024-10-02',
    time_start:'14:00', 
    time_end:'15:15',
    professor_name: "#{cs_prof_1.title} #{cs_prof_1.first_name} #{cs_prof_1.last_name}"
)

AvailCourse.create(
    semester:'Fall', 
    course: cs10,
    days:'MW', 
    date_start: '2024-07-07',
    date_end: '2024-10-02',
    time_start:'12:30', 
    time_end:'13:45',
    professor_name: "#{cs_prof_5.title} #{cs_prof_2.first_name} #{cs_prof_2.last_name}"
)

AvailCourse.create(
    semester:'Fall', 
    course: bus1,
    days:'MW', 
    date_start: '2024-07-07',
    date_end: '2024-10-02',
    time_start:'12:30', 
    time_end:'13:45',
    professor_name: "#{bus_prof_1.title} #{bus_prof_1.first_name} #{bus_prof_1.last_name}"
)

AvailCourse.create(
    semester:'Fall', 
    course: bus2,
    days:'MW', 
    date_start: '2024-07-07',
    date_end: '2024-10-02',
    time_start:'12:30', 
    time_end:'13:45',
    professor_name: "#{bus_prof_2.title} #{bus_prof_2.first_name} #{bus_prof_2.last_name}"
)

AvailCourse.create(
    semester:'Fall', 
    course: bus3,
    days:'TR', 
    date_start: '2024-07-07',
    date_end: '2024-10-02',
    time_start:'09:30', 
    time_end:'10:45',
    professor_name: "#{bus_prof_2.title} #{bus_prof_2.first_name} #{bus_prof_2.last_name}"
)

AvailCourse.create(
    semester:'Fall', 
    course: bus4,
    days:'F', 
    date_start: '2024-07-07',
    date_end: '2024-10-02',
    time_start:'12:30', 
    time_end:'14:00',
    professor_name: "#{bus_prof_1.title} #{bus_prof_2.first_name} #{bus_prof_2.last_name}"
)

AvailCourse.create(
    semester:'Fall', 
    course: bus5,
    days:'TR', 
    date_start: '2024-07-07',
    date_end: '2024-10-02',
    time_start:'08:00', 
    time_end:'09:15',
    professor_name: "#{bus_prof_2.title} #{bus_prof_2.first_name} #{bus_prof_2.last_name}"
)


######################
#####   Majors   #####
######################
Major.create(
    name: "Computer Science"
)
Major.create(
    name: "Business"
)
Major.create(
    name: "Psychology"
)
Major.create(
    name: "Education"
)



# coursetest = Course.create(
#     subject: "Math102",
#     c_num: 456,
#     title: "Concepts to Math"
# )

# course1 = AvailCourse.create(
#     semester:'Fall', 
#     course: coursetest,
#     days:'TR', 
#     date_start: '2024-01-01',
#     date_end: '2024-02-02',
#     time_start:'09:00', 
#     time_end:'10:30' 
#     )

# RegClass.create(
#     user: user1,
#     avail_course: course1,
#     registration_time: DateTime.now
# )
