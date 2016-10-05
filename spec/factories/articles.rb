FactoryGirl.define do
  # traits
  # factory :article do
  #
    trait :published do
      title "published-title"
      status :published
    end

    trait :unpublished do
      title "unpublished-title"
      status :unpublished
    end

    trait :in_the_future do
      published_at { 2.days.from_now }
    end

  #   trait :in_the_past do
  #     published_at { 2.days.ago }
  #   end
  # end


#
# # Dependent Attributes or attributes_for

  factory :article do
    title "Joe"
    text  { "#{title} is the best!" }
  end
# #
#
#
# # # Method Name / Reserved Word Attributes
# #   factory :article do
# #     add_attribute(:title) { 'do' }
# #     text  { "#{title} is the best!" }
# #   end
#
# # Inheritance
# #
# #
factory :article do
  title 'A title'
  published_at '2016-06-16 15:24:51'

  factory :unpublish_article, parent: :article do
    status :unpublished
  end

  factory :publish_article, parent: :article do
    status :published
  end
end
#
# factory :unpublish_article, parent: :article do
#   status :unpublished
# end
#
# factory :publish_article, parent: :article do
#   status :published
# end
#
# # Sequences
#
# factory :article do
#   title "Moshiko"
#   text  "Moshiko is the best!"
# end
#
sequence :published_at do |n|
    "2016-06-#{n} 15:24:51"
end

factory :article do
  title "Moshiko"
  text  "Moshiko is the best!"
  published_at {generate :published_at}
end

# # callbacks
# # To override callbacks for all factories
# after(:build) { |article| article[:published_at] = '2017-07-17 15:24:51' }
# after(:create) { |article| article[:title] = 'Moshiko' }
#
factory :article do
  title "Daniel"
  text  { "#{title} is the best!" }
  published_at "2016-06-12 15:24:51"
  after(:build) { |article| article[:published_at]="2017-07-17 15:24:51" }
  after(:create) { |article| article[:title]="Moshiko" }
end
# #
# # factory :article do
# #   title "Daniel"
# #   text  { "#{title} is the best!" }
# #   published_at "2016-06-12 15:24:51"
# #   after :create, &:change_title!
# # end
# #
# #
factory :article do
  title "Daniel"
  text  { "#{title} is the best!" }
  published_at "2016-06-12 15:24:51"
end
# #
factory :article_child, parent: :article do
  title "Jane Doe"
  text  "Female"
  published_at "2016-06-12 15:24:51"
end
# #
# # end
# #
FactoryGirl.modify do
  factory :article do
    title     "Jane Doe"
    text      "Female"
  end
end
end
