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
            bio: 'Impressive. Most impressive. Obi-Wan has taught you well. You have controlled your fear. Now, release your anger. Only your hatred can destroy me.',
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
            image_filename: 'sonnymoorebarber.jpg',
            bio: 'This is random text',
            first_name: 'Sonny',
            last_name: 'Moore'
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
            image_filename: 'ronswansonbarber.jpg',
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

reviews = Review.create(
    [
        {
            barber_id: 1,
            client_name: 'Kevin',
            str: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            rating: 4
        },
        {
            barber_id: 1,
            client_name: 'Dalton',
            str: 'ROAD HOUSE! Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
            rating: 5
        },
        {
            barber_id: 1,
            client_name: 'Joe',
            str: 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
            rating: 3
        },
        {
            barber_id: 1,
            client_name: 'Reed',
            str: 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            rating: 4
        },
        {
            barber_id: 1,
            client_name: 'Jose',
            str: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.',
            rating: 2
        },
        {
            barber_id: 1,
            client_name: 'Cameron',
            str: 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.',
            rating: 4
        },
        {
            barber_id: 1,
            client_name: 'Ewok',
            str: 'This guy tried to blow up my planet!',
            rating: 1
        },
        {
            barber_id: 2,
            client_name: 'Mike',
            str: 'Best haircut I have ever gotten. Fast, efficient, and friendly. I will be coming back soon.',
            rating: 5
        },{
            barber_id: 2,
            client_name: 'Kevin',
            str: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            rating: 4
        },
        {
            barber_id: 2,
            client_name: 'Dalton',
            str: 'ROAD HOUSE! Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
            rating: 5
        },
        {
            barber_id: 2,
            client_name: 'Joe',
            str: 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
            rating: 3
        },
        {
            barber_id: 3,
            client_name: 'Mike',
            str: 'Best haircut I have ever gotten. Fast, efficient, and friendly. I will be coming back soon.',
            rating: 5
        },{
            barber_id: 3,
            client_name: 'Kevin',
            str: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            rating: 4
        },
        {
            barber_id: 3,
            client_name: 'Dalton',
            str: 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
            rating: 5
        },
        {
            barber_id: 3,
            client_name: 'Joe',
            str: 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
            rating: 3
        },
        {
            barber_id: 4,
            client_name: 'Mike',
            str: 'Best haircut I have ever gotten. Fast, efficient, and friendly. I will be coming back soon.',
            rating: 5
        },{
            barber_id: 4,
            client_name: 'Kevin',
            str: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            rating: 4
        },
        {
            barber_id: 4,
            client_name: 'Dalton',
            str: 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
            rating: 5
        },
        {
            barber_id: 4,
            client_name: 'Joe',
            str: 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
            rating: 3
        },
        {
            barber_id: 5,
            client_name: 'Mike',
            str: 'Best haircut I have ever gotten. Fast, efficient, and friendly. I will be coming back soon.',
            rating: 5
        },{
            barber_id: 5,
            client_name: 'Kevin',
            str: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            rating: 4
        },
        {
            barber_id: 5,
            client_name: 'Dalton',
            str: 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
            rating: 5
        },
        {
            barber_id: 5,
            client_name: 'Joe',
            str: 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
            rating: 3
        },
        {
            barber_id: 6,
            client_name: 'Mike',
            str: 'Best haircut I have ever gotten. Fast, efficient, and friendly. I will be coming back soon.',
            rating: 5
        },{
            barber_id: 6,
            client_name: 'Kevin',
            str: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            rating: 4
        },
        {
            barber_id: 6,
            client_name: 'Dalton',
            str: 'ROAD HOUSE! Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
            rating: 5
        },
        {
            barber_id: 6,
            client_name: 'Joe',
            str: 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
            rating: 3
        }
    ]
)

appointments = Appointment.create([
    {
        appt_start: DateTime.strptime("12/15/2015 11:00", "%m/%d/%Y %H:%M"),
        barber_id: 1,
        client_name: 'Bill Doughtry',
        client_phone: '5307218936'
    },
    {
        appt_start: DateTime.strptime("12/15/2015 13:00", "%m/%d/%Y %H:%M"),
        barber_id: 1,
        client_name: 'Ronnie',
        client_phone: '5307930917'
    },
    {
        appt_start: DateTime.strptime("12/16/2015 11:00", "%m/%d/%Y %H:%M"),
        barber_id: 1,
        client_name: 'Hank Hill',
        client_phone: '5307218936'
    },
    {
        appt_start: DateTime.strptime("12/16/2015 13:00", "%m/%d/%Y %H:%M"),
        barber_id: 1,
        client_name: 'Tyson Henry',
        client_phone: '5307218936'
    },
    {
        appt_start: DateTime.strptime("12/17/2015 11:00", "%m/%d/%Y %H:%M"),
        barber_id: 1,
        client_name: 'The Weeknd',
        client_phone: '5307218936'
    },
    {
        appt_start: DateTime.strptime("12/17/2015 13:00", "%m/%d/%Y %H:%M"),
        barber_id: 1,
        client_name: 'Michael Jordan',
        client_phone: '5307218936'
    },
    {
        appt_start: DateTime.strptime("12/18/2015 11:00", "%m/%d/%Y %H:%M"),
        barber_id: 1,
        client_name: 'Jordan Belfort',
        client_phone: '5307218936'
    },
    {
        appt_start: DateTime.strptime("12/18/2015 13:00", "%m/%d/%Y %H:%M"),
        barber_id: 1,
        client_name: 'Mike',
        client_phone: '5307218936'
    },
    {
        appt_start: DateTime.strptime("12/15/2015 11:00", "%m/%d/%Y %H:%M"),
        barber_id: 2,
        client_name: 'Bill Doughtry',
        client_phone: '5307218936'
    },
    {
        appt_start: DateTime.strptime("12/15/2015 13:00", "%m/%d/%Y %H:%M"),
        barber_id: 2,
        client_name: 'Ronnie',
        client_phone: '5307930917'
    },
    {
        appt_start: DateTime.strptime("12/16/2015 11:00", "%m/%d/%Y %H:%M"),
        barber_id: 2,
        client_name: 'Hank Hill',
        client_phone: '5307218936'
    },
    {
        appt_start: DateTime.strptime("12/16/2015 13:00", "%m/%d/%Y %H:%M"),
        barber_id: 2,
        client_name: 'Tyson Henry',
        client_phone: '5307218936'
    },
    {
        appt_start: DateTime.strptime("12/17/2015 11:00", "%m/%d/%Y %H:%M"),
        barber_id: 2,
        client_name: 'The Weeknd',
        client_phone: '5307218936'
    },
    {
        appt_start: DateTime.strptime("12/17/2015 13:00", "%m/%d/%Y %H:%M"),
        barber_id: 2,
        client_name: 'Michael Jordan',
        client_phone: '5307218936'
    },
    {
        appt_start: DateTime.strptime("12/18/2015 11:00", "%m/%d/%Y %H:%M"),
        barber_id: 2,
        client_name: 'Jordan Belfort',
        client_phone: '5307218936'
    },
    {
        appt_start: DateTime.strptime("12/18/2015 13:00", "%m/%d/%Y %H:%M"),
        barber_id: 2,
        client_name: 'Mike',
        client_phone: '5307218936'
    },
    {
        appt_start: DateTime.strptime("12/15/2015 11:00", "%m/%d/%Y %H:%M"),
        barber_id: 3,
        client_name: 'Bill Doughtry',
        client_phone: '5307218936'
    },
    {
        appt_start: DateTime.strptime("12/15/2015 13:00", "%m/%d/%Y %H:%M"),
        barber_id: 4,
        client_name: 'Ronnie',
        client_phone: '5307930917'
    },
    {
        appt_start: DateTime.strptime("12/16/2015 11:00", "%m/%d/%Y %H:%M"),
        barber_id: 3,
        client_name: 'Hank Hill',
        client_phone: '5307218936'
    },
    {
        appt_start: DateTime.strptime("12/16/2015 13:00", "%m/%d/%Y %H:%M"),
        barber_id: 4,
        client_name: 'Tyson Henry',
        client_phone: '5307218936'
    },
    {
        appt_start: DateTime.strptime("12/17/2015 11:00", "%m/%d/%Y %H:%M"),
        barber_id: 3,
        client_name: 'The Weeknd',
        client_phone: '5307218936'
    },
    {
        appt_start: DateTime.strptime("12/17/2015 13:00", "%m/%d/%Y %H:%M"),
        barber_id: 4,
        client_name: 'Michael Jordan',
        client_phone: '5307218936'
    },
    {
        appt_start: DateTime.strptime("12/15/2015 11:00", "%m/%d/%Y %H:%M"),
        barber_id: 5,
        client_name: 'Bill Doughtry',
        client_phone: '5307218936'
    },
    {
        appt_start: DateTime.strptime("12/15/2015 13:00", "%m/%d/%Y %H:%M"),
        barber_id: 6,
        client_name: 'Ronnie',
        client_phone: '5307930917'
    },
    {
        appt_start: DateTime.strptime("12/16/2015 11:00", "%m/%d/%Y %H:%M"),
        barber_id: 5,
        client_name: 'Hank Hill',
        client_phone: '5307218936'
    },
    {
        appt_start: DateTime.strptime("12/16/2015 13:00", "%m/%d/%Y %H:%M"),
        barber_id: 6,
        client_name: 'Tyson Henry',
        client_phone: '5307218936'
    },
    {
        appt_start: DateTime.strptime("12/17/2015 11:00", "%m/%d/%Y %H:%M"),
        barber_id: 5,
        client_name: 'The Weeknd',
        client_phone: '5307218936'
    },
    {
        appt_start: DateTime.strptime("12/17/2015 13:00", "%m/%d/%Y %H:%M"),
        barber_id: 6,
        client_name: 'Michael Jordan',
        client_phone: '5307218936'
    }
])
