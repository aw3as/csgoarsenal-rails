class UserMailer < ActionMailer::Base
  default from: "info@csgoarsenal.com"

  def mail_back(user)
    @user = user
    mail(to: "info@csgoarsenal.com", subject: "#{@user.email} just subscribed") do |format|
      format.html
      format.text
    end
  end

end
