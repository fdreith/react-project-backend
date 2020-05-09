# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# DEPARTMENTS:
marketing = Department.create(name: "Marketing")
production = Department.create(name: "Production")
taproom = Department.create(name: "Taproom")

# SUPERVISORS
frank = Supervisor.create(name: "Frank", email: "f@f.com", password: "password", department_id: marketing)
scott = Supervisor.create(name: "Scott", email: "s@s.com", password: "password", department_id: production)
kipp = Supervisor.create(name: "Kipp", email: "k@k.com", password: "password", department_id: taproom)

# EMPLOYEES
michelle = Employee.create(name: "Michelle", email: "m@m.com", password: "password", department_id: marketing)
lauren = Employee.create(name: "Lauren", email: "l@l.com", password: "password", department_id: marketing)
tara = Employee.create(name: "Tara", email: "t@t.com", password: "password", department_id: marketing)

alex = Employee.create(name: "Alex", email: "a@a.com", password: "password", department_id: production)
cory = Employee.create(name: "Cory", email: "c@c.com", password: "password", department_id: production)
ryan = Employee.create(name: "Ryan", email: "r@r.com", password: "password", department_id: production)

ed = Employee.create(name: "Ed", email: "e@e.com", password: "password", department_id: taproom)
hadley = Employee.create(name: "Hadley", email: "h@h.com", password: "password", department_id: taproom)
natasha = Employee.create(name: "Natasha", email: "b@b.com", password: "password", department_id: taproom)

# Tasks
cooler = Task.create(content: "clean the key cooler", due_date: Date.tomorrow(), employee_id: natasha, supervisor_id: kipp)
fill = Task.create(content: "fill kegs", due_date: Date.tomorrow(), employee_id: cory, supervisor_id: scott)
some = Task.create(content: "schedule social media through next week", due_date: Date.tomorrow(), employee_id: michelle, supervisor_id: frank)
plan = Task.create(content: "plan launch", due_date: Date.tomorrow(), supervisor_id: frank)
design = Task.create(content: "finish can design", due_date: Date.tomorrow(), employee_id: michelle, supervisor_id: frank)
eval = Task.create(content: "finish my self evaluation", due_date: Date.tomorrow(), employee_id: michelle)

# comments
Comment.new(content: "I'm half way through", task_id: design, employee_id: michelle)
Comment.new(content: "great!", task_id: design, supervisor_id: frank)

