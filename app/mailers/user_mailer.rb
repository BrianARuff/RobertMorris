class UserMailer < ApplicationMailer
    default from: 'brianruff198927@gmail.com'

    def welcome_email(user)
      
      @user = current_user
      @url = 'https://example.com/login'
      
      mail(
        to: @user.email,
        subject: 'Welcome to my site.',
        body: 'Thanks for signing up!'
      )
    end
end
