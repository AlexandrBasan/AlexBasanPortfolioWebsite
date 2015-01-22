class UserMailer < ActionMailer::Base
  default from: "proalab.com@gmail.com"

  def send_newsletters(newsletter)
    @newsletter = newsletter
    @blog_title = Blog.where(id: @newsletter.blog_id).take.title
    @blog_content = Blog.where(id: @newsletter.blog_id).take.content
    #mail(to: Proc.new { User.where(admin: true).pluck(:email) },
    mail(bcc: @newsletter.to,
         subject: @newsletter.subject,
         template_path: 'user_mailer',
         template_name: 'send_newsletters')
  end


  def contacts(contact)
    @contact = contact
    #mail(to: Proc.new { User.where(admin: true).pluck(:email) },
    mail(to: 'alexandr.basan@gmail.com',
         subject: 'Alex Basan site',
         template_path: 'user_mailer',
         template_name: 'contacts')
  end
end
