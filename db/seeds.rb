# WARNING: these seeds assume you have edited the devise config to allow for single letter passwords
#
#
# uses this dictionary to generate random tags
# load "#{Rails.root}/db/words.rb"

# def gen_tag
#   str = String.new
#   len = rand(4) + 1
#   for i in 1..len
#     str += $words.sample + " "
#   end
#   return str
# end

users = User.create(
  [
    { email: 'a@a.com', password: "a", password_confirmation: "a"},
    { email: 'b@b.com', password: "b", password_confirmation: "b"},
    { email: 'c@c.com', password: "c", password_confirmation: "c"},
    { email: 'd@d.com', password: "d", password_confirmation: "d"},
    { email: 'e@e.com', password: "e", password_confirmation: "e"},
    { email: 'f@f.com', password: "f", password_confirmation: "f"},
  ]
)

barbers = Barber.create(
    [
        {
            user_id: 1,
            image_filename: 'darthvaderbarber.jpg',
            bio: 'This is random text',
            first_name: 'Darth',
            last_name: 'Vader'
        },
        {
            user_id: 2,
            image_filename: 'barber1.jpg',
            bio: 'This is random text',
            first_name: 'Javier',
            last_name: 'Rodriguez'
        },
        {
            user_id: 3,
            image_filename: 'barber2.jpg',
            bio: 'This is random text',
            first_name: 'Vanessa',
            last_name: 'Villalobos'
        },
        {
            user_id: 4,
            image_filename: 'barber3.jpg',
            bio: 'This is random text',
            first_name: 'Anthony',
            last_name: 'Smith'
        },
        {
            user_id: 5,
            image_filename: 'barber4.jpg',
            bio: 'This is random text',
            first_name: 'Ron',
            last_name: 'Swanson',
        },
        {
            user_id: 6,
            image_filename: 'odjbarber.jpg',
            bio: 'This is random text',
            first_name: 'Odell',
            last_name: 'Beckham Jr'
        }
    ]
)
