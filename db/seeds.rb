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
            image_filename: 'random.jpg',
            bio: 'This is random text',
            first_name: 'Juan',
            last_name: 'Villalobos'
        },
        {
            user_id: 2,
            image_filename: 'random.jpg',
            bio: 'This is random text',
            first_name: 'Javier',
            last_name: 'Villalobos'
        },
        {
            user_id: 3,
            image_filename: 'random.jpg',
            bio: 'This is random text',
            first_name: 'Vanessa',
            last_name: 'Villalobos'
        },
        {
            user_id: 4,
            image_filename: 'random.jpg',
            bio: 'This is random text',
            first_name: 'Bob',
            last_name: 'TheBarber'
        },
        {
            user_id: 5,
            image_filename: 'random.jpg',
            bio: 'This is random text',
            first_name: 'Ron',
            last_name: 'O Keefe',
        },
        {
            user_id: 6,
            image_filename: 'random.jpg',
            bio: 'This is random text',
            first_name: 'Billy',
            last_name: 'TheKid'
        }
    ]
)
