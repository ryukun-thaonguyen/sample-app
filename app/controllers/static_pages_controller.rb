class StaticPagesController < ApplicationController
  def home
    @exercises={
      "STRINGS AND METHOD"=>[
        {
          :ques=>'Using the range 0..16, print out the first 17 powers of 2',
          :ans=>(0..16).map{|n| n.to_i**2}
        },
        {
          :ques=>"Define a method called yeller that takes in an array of characters and
          returns a string with an ALLCAPS version of the input Verify that yeller(['o', 'l', 'd']) returns 'OLD'. Hint: Combine map, upcase, and join.",
          :ans=>yeller(['o','l','d'])
        },
        {
          :ques=>'Define a method called random_subdomain that returns a randomly generated string of eight letters',
          :ans=>random_subdomain
        },
        {
          :ques=>'By replacing the question marks in Listing 4.12 with the appropriate methods, combine split, shuffle, 
          and join to write a function that shuffles the letters in a given string',
          :ans=>random_subdomain2(['s', 'u', 'b', 'l', 'i', 'm', 'e'])
        }
      ],
      "OTHER DATA STRUCTURES"=>[
        {
          :ques=>"Define a hash with symbol keys corresponding to name, email, and a “password digest”, 
          and values equal to your name, your email address, and a random string of 16 lower-case letters.",
          :ans=>my_hash
        }

      ]
    }
  end
  def yeller s
    s.join().upcase
  end
  def random_subdomain
    ('a'..'z').to_a.shuffle[(0..7)].join()
  end
  def random_subdomain2 s
    s.to_a.shuffle[(0..s.length-1)].join()
  end
  def my_hash
     {
      name: "Brandon",
      email: "brandon.elder@gmail.com",
      password: ('a'..'z').to_a.sample(16).join
    }
  end
  def help;end
  def about;end
  def contact;end
  def about;end
end
