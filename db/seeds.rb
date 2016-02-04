# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
video_id = ['Ie3Y16kbbsg','6V7SVnaMsNQ','ojC53zhzcmg','skt9f_erWhw', 'Ie2NDO6UYXc','JCocDvee7dw','_8zglh8psEI','1sug684G4MY','ReSUJjUm40Q','82NCstdRPrE','0XMbKeeZEsA','LI56In478tc','bDyGssvzH9Y','BSGyoohwrzA','3lLDamku8ac','pai46-mgsH0','xQ45RZvQGfI','klOZUWZkfkg','mBpl6ZzFlIw','LwvW2uEPFNo','TjMeYSa8GgM','8KgLm0U0inc','U4n4H7jIyLc','3HNCLPlhF-E','Fzr24s5W3kY','eCkQSeZts24','dzqU76aYlYs','XopQGnbyrSY','g5ydwU5Za_8','nwhsmMVDc0I']
video_id.each do |id|
  Watch.create(video_id: id)
end 

