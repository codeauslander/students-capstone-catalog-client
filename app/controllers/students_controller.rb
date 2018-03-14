class StudentsController < ApplicationController
  def index
    ss = [
      {
        id:1,first_name:"Amanda",last_name:"Abraham",email: "amanda@gmail.com", phone_number: "1234", short_bio:"Awesome", linkedin_url:"my linkding_url", twitter_handle: "my twitter_handle", website_url: "my website_url", online_resume: "my online resume", github: "my github", photo: "https://pre00.deviantart.net/72e2/th/pre/f/2013/214/b/3/b32f8135df953bc5071ccf710d4f94c3-d6g9xkq.jpg",capstones: [
                                        {name:"first capstone",screenshot:"http://www.capstonebranding.com/img/about/about_capstone.jpg"
                                        },
                                        {name:"second capstone",screenshot:"http://www.capstonebranding.com/img/about/about_capstone.jpg"
                                        }
                                      ]
      },
      {
        id:2,first_name:"Cesar",last_name:"Catano",email: "cesar@gmail.com", phone_number: "1234", short_bio:"Awesome", linkedin_url:"my linkding_url", twitter_handle: "my twitter_handle", website_url: "my website_url", online_resume: "my online resume", github: "my github", photo: "https://pre00.deviantart.net/72e2/th/pre/f/2013/214/b/3/b32f8135df953bc5071ccf710d4f94c3-d6g9xkq.jpg",capstones: [
                                        {name:"first capstone",screenshot:"http://www.capstonebranding.com/img/about/about_capstone.jpg"
                                        },
                                        {name:"second capstone",screenshot:"http://www.capstonebranding.com/img/about/about_capstone.jpg"
                                        }
                                      ]
      },
      {
        id:3,first_name:"Lara",last_name:":D",email: "lara@gmail.com", phone_number: "1234", short_bio:"Awesome", linkedin_url:"my linkding_url", twitter_handle: "my twitter_handle", website_url: "my website_url", online_resume: "my online resume", github: "my github", photo: "my photo",capstones: [
                        {name:"first capstone",screenshot:"http://www.capstonebranding.com/img/about/about_capstone.jpg"
                        },
                        {name:"second capstone",screenshot:"http://www.capstonebranding.com/img/about/about_capstone.jpg"
                        }
                      ]
        }
      ]

 

    @students = ss 
    # @students = Student.all
    puts @students
    render 'index.json.jbuilder'

    # render json: @students.as_json
  end
  def show
    s = {
        id:3,first_name:"Lara",last_name:":D",email: "lara@gmail.com", phone_number: "1234", short_bio:"Awesome", linkedin_url:"my linkding_url", twitter_handle: "my twitter_handle", website_url: "my website_url", online_resume: "my online resume", github: "my github", photo: "my photo",capstones: [
                                        {name:"first capstone",screenshot:"http://www.capstonebranding.com/img/about/about_capstone.jpg"
                                        },
                                        {name:"second capstone",screenshot:"http://www.capstonebranding.com/img/about/about_capstone.jpg"
                                        }
                                      ]
    }
    @student = s
    # @student = Student.find(params[:id])

    render 'show.json.jbuilder'
  end
end
