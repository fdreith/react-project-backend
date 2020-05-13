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
frank = User.create(name: "Frank", email: "f@f.com", password: "password", department_id: marketing.id, supervisor: true)
scott = User.create(name: "Scott", email: "s@s.com", password: "password", department_id: production.id, supervisor: true)
kipp = User.create(name: "Kipp", email: "k@k.com", password: "password", department_id: taproom.id, supervisor: true)

# EMPLOYEES
michelle = User.create(name: "Michelle", email: "m@m.com", password: "password", department_id: marketing.id)
lauren = User.create(name: "Lauren", email: "l@l.com", password: "password", department_id: marketing.id)
tara = User.create(name: "Tara", email: "t@t.com", password: "password", department_id: marketing.id)

alex = User.create(name: "Alex", email: "a@a.com", password: "password", department_id: production.id)
cory = User.create(name: "Cory", email: "c@c.com", password: "password", department_id: production.id)
nick = User.create(name: "Nick", email: "n@n.com", password: "password", department_id: production.id)

ed = User.create(name: "Ed", email: "e@e.com", password: "password", department_id: taproom.id)
hadley = User.create(name: "Hadley", email: "h@h.com", password: "password", department_id: taproom.id)
breanna = User.create(name: "Breanna", email: "b@b.com", password: "password", department_id: taproom.id)

# Tasks
cooler = Task.create(content: "clean the key cooler", due_date: "Wed Jun 03 2020 09:33:16 GMT-0700 (Pacific Daylight Time)", user_id: hadley.id, owner_id: kipp.id)
fill = Task.create(content: "fill kegs", due_date: "Wed Jun 03 2020 09:33:16 GMT-0700 (Pacific Daylight Time)", user_id: cory.id, owner_id: scott.id)
some = Task.create(content: "schedule social media through next week", due_date: "Wed Jun 03 2020 09:33:16 GMT-0700 (Pacific Daylight Time)", user_id: michelle.id, owner_id: frank.id)
design = Task.create(content: "finish can design", due_date: "Wed Jun 03 2020 09:33:16 GMT-0700 (Pacific Daylight Time)", user_id: michelle.id, owner_id: frank.id)

plan = Task.create(content: "plan launch", due_date: "Wed Jun 03 2020 09:33:16 GMT-0700 (Pacific Daylight Time)", user_id: frank.id, owner_id: frank.id)
eval = Task.create(content: "finish my self evaluation", due_date: "Wed Jun 03 2020 09:33:16 GMT-0700 (Pacific Daylight Time)", user_id: michelle.id, owner_id: michelle.id)

# comments
Comment.create(content: "I'm half way through", task_id: design.id, user_id: michelle.id)
Comment.create(content: "great!", task_id: design.id, user_id: frank.id)

