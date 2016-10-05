FactoryGirl.define do
  factory :comment, aliases: [:note] do
    commenter "moshiko"
    body  "This is my comment"
    association :article, factory: :article, title: "article"
  end

  #  strategy: :build

  # factory :comment, aliases: [:note] do
  #   commenter "moshiko"
  #   body  "This is my comment"
  #   association :article, factory: :article, strategy: :build
  # end
end
