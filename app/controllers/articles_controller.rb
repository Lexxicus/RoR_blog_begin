class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new

  end

  def create
    @article = Article.new(article_params)
    if @article.save #проверка на валидность данных, данные введены корректно, сохранение в бд,
      # метод save при выполнении проводит валидацию
      redirect_to @article # защита от двойного сабмита
    else
      render action: 'new' # возвращает страницу, если валидация не прошла
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article # защита от двойного сабмита
    else
      render action: 'edit' # возвращает страницу, если валидация не прошла
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  # защищенная передача параметров title и text
  private
  def article_params
    params.require(:article).permit(:title, :text)
  end

end
