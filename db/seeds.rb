# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

author1 = Author.create(first_name: "J.K.", last_name: "Rowling")
author2 = Author.create(first_name: "Stephen", last_name: "King")
author3 = Author.create(first_name: "Maya", last_name: "Angelou")
author4 = Author.create(first_name: "Nicholas", last_name: "Sparks")
author5 = Author.create(first_name:"James", last_name: "Patterson")
author6 = Author.create(first_name: "George", last_name: "Orwell")
author7 = Author.create(first_name: "Charlamagne", last_name: "Tha God")


Post.create(title: 'Harry Potter and the Prisoner of Azkaban', body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
          published_date: 15.days.ago, draft: false, published: true, author: author1)

Post.create(title: "The Shining", body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
            published_date: 32.years.ago, draft: false, published: true, author: author2)

Post.create(title: "And Still I Rise", body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
            published_date: 40.years.ago, draft: false, published: true, author: author3)

Post.create(title: "The Notebook", body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                        published_date: 13.years.ago, draft: false, published: true, author: author4)

Post.create(title: "Kiss The Girls", body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
            published_date: 30.years.ago, draft: false, published: true, author: author5)

Post.create(title: "Animal Farm", body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                        published_date: 62.years.ago, draft: false, published: true, author: author6)

Post.create(title: "Black Privilege", body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
            published_date: 1.week.ago, draft: false, published: true, author: author7)
