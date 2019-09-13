class ContactsController < ApplicationController
  def new

  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.valid? #проверка на валидность данных
      @contact.save # данные введены корректно, сохранение в бд
    else
      render action: 'new' # возвращает страницу, если валидация не прошла
    end

  end

  private

  def contact_params
    params.require(:contact).permit(:email, :message)
  end

end
