@u1 = User.create(firstname: "James", lastname: "Bond", email:"u1@e.e", password:"qwerty") #5
@u2 = User.create(firstname: "Han", lastname: "Solo", email:"u2@e.e", password:"qwerty")
@u3 = User.create(firstname: "Indiana", lastname: "Jones", email:"u3@e.e", password:"qwerty")
@u4 = User.create(firstname: "Bruce", lastname: "Wayne", email:"u4@e.e", password:"qwerty")
@u5 = User.create(firstname: "Ellen", lastname: "Ripley", email:"u5@e.e", password:"qwerty")
@u6 = User.create(firstname: "John", lastname: "McClane", email:"u6@e.e", password:"qwerty")
@u7 = User.create(firstname: "Tyler", lastname: "Durden", email:"u7@e.e", password:"qwerty")
@u8 = User.create(firstname: "Darth", lastname: "Vader", email:"u8@e.e", password:"qwerty")
@u9 = User.create(firstname: "Michael", lastname: "Corleone", email:"u9@e.e", password:"qwerty")
@u10 = User.create(firstname: "Marty", lastname: "McFly", email:"u10@e.e", password:"qwerty")
@u11 = User.create(firstname: "Iron", lastname: "Man", email:"u11@e.e", password:"qwerty")
@u12 = User.create(firstname: "Jack", lastname: "Sparrow", email:"u12@e.e", password:"qwerty")
@u13 = User.create(firstname: "Ron", lastname: "Burgundy", email:"u13@e.e", password:"qwerty")
@u14 = User.create(firstname: "Rick", lastname: "Blaine", email:"u14@e.e", password:"qwerty")
@u15 = User.create(firstname: "Doc", lastname: "Brown", email:"u15@e.e", password:"qwerty")
@u16 = User.create(firstname: "Hannibal", lastname: "Lecter", email:"u16@e.e", password:"qwerty")
@u17 = User.create(firstname: "Travis", lastname: "Bickle", email:"u17@e.e", password:"qwerty")
@u18 = User.create(firstname: "Daniel", lastname: "Plainview", email:"u18@e.e", password:"qwerty")
@u19 = User.create(firstname: "Patrick", lastname: "Bateman", email:"u19@e.e", password:"qwerty")
@u20 = User.create(firstname: "Forrest", lastname: "Gump", email:"u20@e.e", password:"qwerty")

@t1 = Team.create(name: "Dreamteam")
@t2 = Team.create(name: "Hackers")
@t3 = Team.create(name: "Palikat")
@t4 = Team.create(name: "Jormat")
@t5 = Team.create(name: "Punapersekoodaajat")

# TEAM 1
Membership.create(user_id: @u1.id, team_id: @t1.id, accepted: true)
Membership.create(user_id: @u2.id, team_id: @t1.id, accepted: true)
Membership.create(user_id: @u3.id, team_id: @t1.id, accepted: true)
Membership.create(user_id: @u4.id, team_id: @t1.id, accepted: true)
Membership.create(user_id: @u5.id, team_id: @t1.id, accepted: true)

# TEAM 2
Membership.create(user_id: @u1.id, team_id: @t2.id, accepted: true)
Membership.create(user_id: @u6.id, team_id: @t2.id, accepted: true)
Membership.create(user_id: @u7.id, team_id: @t2.id, accepted: true)
Membership.create(user_id: @u8.id, team_id: @t2.id, accepted: true)
Membership.create(user_id: @u9.id, team_id: @t2.id, accepted: true)
Membership.create(user_id: @u10.id, team_id: @t2.id, accepted: true)

# TEAM 3
Membership.create(user_id: @u1.id, team_id: @t3.id, accepted: true)
Membership.create(user_id: @u2.id, team_id: @t3.id, accepted: true)
Membership.create(user_id: @u3.id, team_id: @t3.id, accepted: true)

# TEAM 4
Membership.create(user_id: @u1.id, team_id: @t4.id, accepted: true)
Membership.create(user_id: @u2.id, team_id: @t4.id, accepted: true)
Membership.create(user_id: @u3.id, team_id: @t4.id, accepted: true)
Membership.create(user_id: @u11.id, team_id: @t4.id, accepted: true)
Membership.create(user_id: @u12.id, team_id: @t4.id, accepted: true)
Membership.create(user_id: @u13.id, team_id: @t4.id, accepted: true)
Membership.create(user_id: @u14.id, team_id: @t4.id, accepted: true)
Membership.create(user_id: @u15.id, team_id: @t4.id, accepted: true)

# TEAM 5
Membership.create(user_id: @u1.id, team_id: @t5.id, accepted: true)

# INVITES
Membership.create(user_id: @u16.id, team_id: @t3.id, accepted: false)
Membership.create(user_id: @u17.id, team_id: @t3.id, accepted: false)
Membership.create(user_id: @u18.id, team_id: @t3.id, accepted: false)
Membership.create(user_id: @u20.id, team_id: @t3.id, accepted: false)
Membership.create(user_id: @u19.id, team_id: @t5.id, accepted: false)
Membership.create(user_id: @u20.id, team_id: @t5.id, accepted: false)

