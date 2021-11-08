class SimpleMailer < ApplicationMailer
  default from: 'noreply@testapp.com'
  def new_mail
    @user = params[:user]
    @mail_id = @user.email
    mail(to: @mail_id, subject: 'Test Mail')
  end
end
