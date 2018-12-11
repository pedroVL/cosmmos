# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "Pedro", email: "pedro@gmail.com", password: "123456")
User.create(name: "Amine", email: "amine@gmail.com", password: "123456")
User.create(name: "John", email: "john@gmail.com", password: "123456")
User.create(name: "Elon", email: "elon@gmail.com", password: "123456")
User.create(name: "James", email: "james@gmail.com", password: "123456")

Project.create(title: "project1", about_us: "we are great", description: "great project")
Project.create(title: "project2", about_us: "we are great", description: "great project")
Project.create(title: "project3", about_us: "we are great", description: "great project")
Project.create(title: "project4", about_us: "we are great", description: "great project")
Project.create(title: "project5", about_us: "we are great", description: "great project")


Team.create(user_id: 1, project_id: 1)
Team.create(user_id: 2, project_id: 2)
Team.create(user_id: 3, project_id: 3)
Team.create(user_id: 4, project_id: 4)
Team.create(user_id: 5, project_id: 5)


Round.create(project_id: 1, total_equity: 500, price: 1000000)
Round.create(project_id: 2, total_equity: 500, price: 1000000)
Round.create(project_id: 3, total_equity: 500, price: 1000000)
Round.create(project_id: 4, total_equity: 500, price: 1000000)
Round.create(project_id: 5, total_equity: 500, price: 1000000)


Contribution.create(user_id: 5, project_id: 1, equity: 50, job_title: "Job title", job_description: "job description")
Contribution.create(user_id: 4, project_id: 2, equity: 50, job_title: "Job title", job_description: "job description")
Contribution.create(user_id: 3, project_id: 4, equity: 50, job_title: "Job title", job_description: "job description")
Contribution.create(user_id: 2, project_id: 3, equity: 50, job_title: "Job title", job_description: "job description")
Contribution.create(user_id: 1, project_id: 5, equity: 50, job_title: "Job title", job_description: "job description")

Investment.create(user_id: 1, round_id: 5, equity: 50)
Investment.create(user_id: 2, round_id: 4, equity: 50)
Investment.create(user_id: 3, round_id: 2, equity: 50)
Investment.create(user_id: 4, round_id: 3, equity: 50)
Investment.create(user_id: 5, round_id: 1, equity: 50)
