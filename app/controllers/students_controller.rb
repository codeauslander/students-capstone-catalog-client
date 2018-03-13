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

    capstone = [
      {
        id:1, student_id: 2, name: "Drone Game", url: "drone game url", screenshot: "image"
      },
      {
        id:1, student_id: 1, name: "Social Service Connector", url: "capstone url", screenshot: "image2"
      },
    ]

    @students = ss 
    # @students = Student.all
    render json: @students.as_json
  end
  def show
    s = {
        id:2,first_name:"Cesar",last_name:"Catano",email: "cesar@gmail.com", phone_number: "1234", short_bio:"Awesome", linkedin_url:"my linkding_url", twitter_handle: "my twitter_handle", website_url: "my website_url", online_resume: "my online resume", github: "my github", photo: "my photo"
    }
    @student = s
    # @student = Student.find(params[:id])
    render json: @student.as_json
  end
end
