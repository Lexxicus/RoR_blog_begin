class ArticlesController < ApplicationController
  def new

  end

  def create
    @article = Article.new(article_params)
    if @article.valid? #проверка на валидность данных
      @article.save # данные введены корректно, сохранение в бд
    else
      render action: 'new' # возвращает страницу, если валидация не прошла
    end
  end
  # защищенная передача параметров title и text
  private
  def article_params
    params.require(:article).permit(:title, :text)
  end

end
