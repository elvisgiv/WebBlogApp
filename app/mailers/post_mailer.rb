class PostMailer < ActionMailer::Base
  default from: "from@example.com"

  def post_new_email(post)
  	@post = post
  	mail(to: 'to@gexample.com', subject: 'New post')
  end
end
