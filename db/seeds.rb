Pair.destroy_all
Profile.destroy_all
User.destroy_all

user1 = User.create!( { email: 'henk@school.com', password: '123456'})
user2 = User.create!( { email: 'erik@school.com', password: '123456'})
user3 = User.create!( { email: 'bram@school.com', password: '123456'})
user4 = User.create!( { email: 'maria@school.com', password: '123456'})
user5 = User.create!( { email: 'lisa@school.com', password: '123456'})
user6 = User.create!( { email: 'anika@school.com', password: '123456'})
user7 = User.create!( { email: 'admin@school.com', password: '123456'})
user8 = User.create!( { email: 'matadmin@school.com', password: '123456'})
user9 = User.create!( { email: 'anapaula@school.com', password: '123456'})
user10 = User.create!( { email: 'matthijs@school.com', password: '123456'})

profile1 = Profile.create!( { first_name: "Henk", last_name: "Hu", occupation: "student", user_id: user1.id, active: true} )
profile2 = Profile.create!( { first_name: "Erik", last_name: "Karel", occupation: "student", user_id: user2.id, active: true})
profile3 = Profile.create!( { first_name: "Bram", last_name: "Jan", occupation: "student", user_id: user3.id, active: true} )
profile4 = Profile.create!( { first_name: "Maria", last_name: "Karianne", occupation: "student", user_id: user4.id, active: true})
profile5 = Profile.create!( { first_name: "Lisa", last_name: "Lars", occupation: "student", user_id: user5.id, active: true} )
profile6 = Profile.create!( { first_name: "Anika", last_name: "Anki", occupation: "student", user_id: user6.id, active: true} )
profile7 = Profile.create!( { first_name: "Hendrik", last_name: "Bonifacius", occupation: "admin", user_id: user7.id, active: false} )
profile8 = Profile.create!( { first_name: "Mat", last_name: "Ni", occupation: "admin", user_id: user8.id, active: false} )
profile9 = Profile.create!( { first_name: "Ana Paula", last_name: "Lasmar Guimaraes", occupation: "student", user_id: user9.id, active: true} )
profile10 = Profile.create!( { first_name: "Matthijs", last_name: "Mandjes", occupation: "student", user_id: user10.id, active: true} )
