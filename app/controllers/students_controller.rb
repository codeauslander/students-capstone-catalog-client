class StudentsController < ApplicationController
  def index
    ss = [
      {
        id:1,first_name:"Amanda",last_name:"Abraham",email: "amanda@gmail.com", phone_number: "1234", short_bio:"Awesome", linkedin_url:"my linkding_url", twitter_handle: "my twitter_handle", website_url: "my website_url", online_resume: "my online resume", github: "my github", photo: "my photo"
      },
      {
        id:2,first_name:"Cesar",last_name:"Catano",email: "cesar@gmail.com", phone_number: "1234", short_bio:"Awesome", linkedin_url:"my linkding_url", twitter_handle: "my twitter_handle", website_url: "my website_url", online_resume: "my online resume", github: "my github", photo: "my photo"
      }
    ]

    @students = ss 
    # @students = Student.all
    render 'index.json.jbuilder'
  end
  def show
    s = {
        id:2,first_name:"Cesar",last_name:"Catano",email: "cesar@gmail.com", phone_number: "1234", short_bio:"Awesome", linkedin_url:"my linkding_url", twitter_handle: "my twitter_handle", website_url: "my website_url", online_resume: "my online resume", github: "my github", photo: "my photo"
    }
    @student = s
    # @student = Student.find(params[:id])
    render 'show.json.jbuilder'
  end
end
