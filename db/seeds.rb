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
    { email: 'g@g.com', password: "g", password_confirmation: "g"},
    { email: 'h@h.com', password: "h", password_confirmation: "h"},
    { email: 'i@i.com', password: "i", password_confirmation: "i"},
    { email: 'j@j.com', password: "j", password_confirmation: "j"},
    { email: 'k@k.com', password: "k", password_confirmation: "k"},
    { email: 'l@l.com', password: "l", password_confirmation: "l"},
    { email: 'm@m.com', password: "m", password_confirmation: "m"},
    { email: 'n@n.com', password: "n", password_confirmation: "n"},
    { email: 'o@o.com', password: "o", password_confirmation: "o"},
    { email: 'p@p.com', password: "p", password_confirmation: "p"},
    { email: 'q@q.com', password: "q", password_confirmation: "q"},
    { email: 'r@r.com', password: "r", password_confirmation: "r"},
    { email: 's@s.com', password: "s", password_confirmation: "s"},
    { email: 't@t.com', password: "t", password_confirmation: "t"},
    { email: 'u@u.com', password: "u", password_confirmation: "u"},
    { email: 'v@v.com', password: "v", password_confirmation: "v"},
    { email: 'w@w.com', password: "w", password_confirmation: "w"},
    { email: 'x@x.com', password: "x", password_confirmation: "x"},
    { email: 'y@y.com', password: "y", password_confirmation: "y"},
    { email: 'z@z.com', password: "z", password_confirmation: "z"},
  ]
)

# barbers = Barber.create(
