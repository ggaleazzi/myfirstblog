class ArticleMailer < ApplicationMailer
    def new_article(title, email)
        @title = title
        mail(to: email, from: "gustavo@hotmail.com", subject: "New article" )
    end

end