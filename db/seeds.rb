require 'time'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Audition.destroy_all
Comment.destroy_all

users = User.create([{first_name: 'Amanda', last_name: 'Johns', email: 'amanda@gmail.com'}, {first_name: 'Jared', last_name: 'Titus', email: 'jared@gmail.com'}, {first_name: 'Erica', last_name: 'Smith', email: 'erika@gmail.com'}])

auditions = Audition.create([{title: 'Cinderella Audition at Pearl', content:'What is the signup number at?', user_id: User.all.first.id}, {title: 'Newsies Tour Audition at RG', content:'Are they still seeing people?', user_id: User.all[1].id}])

comments = Comment.create([{content: 'I just signed up at number 232.', user_id: User.all[1].id, audition_id: Audition.all.first.id, created_at: Time.now}, {content: 'Signed up at 240.', user_id: User.all[2].id, audition_id: Audition.all.first.id, created_at: Time.now}, {content: 'Yes- just saw the girls and now seeing guys.', user_id: User.all[2].id, audition_id: Audition.all[1].id, created_at: Time.now}, {content: 'Yes.', user_id: User.all.first.id, audition_id: Audition.all[1].id, created_at: Time.now}])





