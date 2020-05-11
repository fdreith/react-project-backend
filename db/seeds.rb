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
frank = Supervisor.create(name: "Frank", email: "f@f.com", password_digest: "password", department_id: marketing.id)
scott = Supervisor.create(name: "Scott", email: "s@s.com", password_digest: "password", department_id: production.id)
kipp = Supervisor.create(name: "Kipp", email: "k@k.com", password_digest: "password", department_id: taproom.id)

# EMPLOYEES
michelle = Employee.create(name: "Michelle", email: "m@m.com", password_digest: "password", department_id: marketing.id)
lauren = Employee.create(name: "Lauren", email: "l@l.com", password_digest: "password", department_id: marketing.id)
tara = Employee.create(name: "Tara", email: "t@t.com", password_digest: "password", department_id: marketing.id)

alex = Employee.create(name: "Alex", email: "a@a.com", password_digest: "password", department_id: production.id)
cory = Employee.create(name: "Cory", email: "c@c.com", password_digest: "password", department_id: production.id)
nick = Employee.create(name: "Nick", email: "n@n.com", password_digest: "password", department_id: production.id)

ed = Employee.create(name: "Ed", email: "e@e.com", password_digest: "password", department_id: taproom.id)
hadley = Employee.create(name: "Hadley", email: "h@h.com", password_digest: "password", department_id: taproom.id)
breanna = Employee.create(name: "Breanna", email: "b@b.com", password_digest: "password", department_id: taproom.id)

# Tasks
cooler = Task.create(content: "clean the key cooler", due_date: Date.tomorrow(), employee_id: hadley.id, supervisor_id: kipp.id)
fill = Task.create(content: "fill kegs", due_date: Date.tomorrow(), employee_id: cory.id, supervisor_id: scott.id)
some = Task.create(content: "schedule social media through next week", due_date: Date.tomorrow(), employee_id: michelle.id, supervisor_id: frank.id)
plan = Task.create(content: "plan launch", due_date: Date.tomorrow(), supervisor_id: frank.id)
design = Task.create(content: "finish can design", due_date: Date.tomorrow(), employee_id: michelle.id, supervisor_id: frank.id)
eval = Task.create(content: "finish my self evaluation", due_date: Date.tomorrow(), employee_id: michelle.id)

# comments
Comment.create(content: "I'm half way through", task_id: design.id, employee_id: michelle.id)
Comment.create(content: "great!", task_id: design.id, supervisor_id: frank.id)

