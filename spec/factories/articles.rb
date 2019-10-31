FactoryBot.define do
  # возвращает сущность с полями title и text
  factory :article do
    # обязательные условия, в нашем случае для проверки валидации,
    title { "Article title" }
    text { "Article text" }

    # создаём фабрику для создания статьи с несколькими комментариями
    factory :article_with_comments do
      # после создания article
      after :create do |article, evaluator|
        # создаём список из 3-х комментариев
        create_list :comment, 3, article: article
      end
    end
  end
end