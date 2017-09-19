User.destroy_all
Profile.destroy_all

user1 = User.create!( { email: 'hank@school.com', password: '123456'})
user2 = User.create!( { email: 'erikk@school.com', password: '123456'})
user3 = User.create!( { email: 'jon@school.com', password: '123456'})
user4 = User.create!( { email: 'maria@school.com', password: '123456'})
user5 = User.create!( { email: 'lisa@school.com', password: '123456'})
user6 = User.create!( { email: 'juan@school.com', password: '123456'})
user7 = User.create!( { email: 'admin@school.com', password: '123456'})

profile1 = Profile.create!( { first_name: "Hank", last_name: "Hu", occupation: "student"} )
profile2 = Profile.create!( { first_name: "Erik", last_name: "Hu", occupation: "student"})
profile3 = Profile.create!( { first_name: "Jon", last_name: "Hu", occupation: "student"} )
profile4 = Profile.create!( { first_name: "Maria", last_name: "Hu", occupation: "student"} )
profile5 = Profile.create!( { first_name: "Lisa", last_name: "Hu", occupation: "student"} )
profile6 = Profile.create!( { first_name: "Juan", last_name: "Hu", occupation: "student"} )
profile7 = Profile.create!( { first_name: "Ad", last_name: "Min", occupation: "admin"} )
