class ArticleMailer < ApplicationMailer
    def new_article(title)
        @title = title
        mail(to: "granger@grande.com", from: "gustavo@hotmail.com", subject: "New article" )
    end

end