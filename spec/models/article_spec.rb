require 'spec_helper'
#
RSpec.describe Article, type: :model do
  # # normal model
  # #
  #
  # it('should create model') do
  #   article = Article.create({title: 'title',
  #     status: 0,
  #     text: 'body',
  #     published_at: '2016-06-16 15:24:51'})
  #     expect(article).to be_valid
  #     expect(article[:text]).to eq('body')
  #   end
  #
  #
  # it('should not be nil') do
  #   article = Article.create({title: 'title',
  #                             status: 0,
  #                             text: 'body',
  #                             published_at: '2016-06-16 15:24:51'})
  #   expect(article).not_to be_nil
  # end

  # fixtures :article
  #


  # describe 'Article' do
  #
  #   it('should create an object from yml file') do
  #     article_name = article(:article_yml).title
  #     article_date = article(:article_yml).published_at
  #
  #     expect(article_date).to eq('2016-06-16 15:24:51')
  #     expect(article_name).to eq('article_yml_title')
  #   end
  #
  #   it('should create an object from the loop in yml file') do
  #     article_name = article(:article_7).title
  #     article_date = article(:article_7).published_at
  #
  #     expect(article_name).to eq('article_yml_title_7')
  #     expect(article_date).to eq('2016-07-16 15:24:51')
  #   end
  # end

  #factories

  it('should create an Article without saving to db') do
    object = build :article, :published
    expect(object[:status]).to equal(1)
  end

  it('should create an Article object and acts as an already saved Article') do
    object_save_to_db = build_stubbed :article, :in_the_future
    expect(object_save_to_db[:published_at]).to eq(2.days.from_now)
  end

  it('should creates an Article object and saves it to the database') do
    object_save_to_db = create :article, :unpublished, :in_the_future
    expect(object_save_to_db[:status]).to eq(0)
  end

  it('should hash of attributes') do
    object_save_to_db = build(:article)
    attrs = attributes_for(:article)
    expect(attrs).to eq(0)
  end

  # it('should create a collection of objects for a given factory') do
  #   object_save_to_db = create_list :article, 4
  #   expect(object_save_to_db[0]).to be_an_instance_of Article
  #   expect(object_save_to_db.length).to eq(4)
  # end

# Dependent Attributes
# it('should creates a Dependent Attributes in Article object and saves it to the database') do
#   object_save_to_db = create :article, title: "Moshiko"
#   expect(object_save_to_db[:text]).to eq("Moshiko is the best!")
#   object_save_to_db = create :article, title: "Yariv"
#   expect(object_save_to_db[:text]).to eq("Moshiko is the best!")
# end

# # # # # # # # # # # # # # # #
# Associations in comments
# # # # # # # # # # # # # # # #


#  Inheritance
#
# it('should creates an unpublished Article object') do
#   object_save_to_db = create :unpublish_article
#   expect(object_save_to_db[:status]).to eq(0)
#   expect(object_save_to_db[:published_at]).to eq('2016-06-16 15:24:51')
# end
#
#
# it('should creates an published Article object') do
#   object_save_to_db = create :publish_article
#   expect(object_save_to_db[:status]).to eq(1)
#   expect(object_save_to_db[:published_at]).to eq('2016-06-16 15:24:51')
# end

#  Sequences

# it('should generate published_at date') do
#   object_save_to_db = create :article
#   object_save_to_db[:published_at] = generate :published_at
#   expect(object_save_to_db[:published_at]).to eq('2016-06-1 15:24:51')
#   object_save_to_db[:published_at] = generate :published_at
#   expect(object_save_to_db[:published_at]).to eq('2016-06-2 15:24:51')
# end
#
# it('should generate published_at date by using dynamic attributes') do
#   object_save_to_db = create :article
#   expect(object_save_to_db[:published_at]).to eq('2016-06-1 15:24:51')
# end

#  Callbacks
#
# it('should change published_at date after build') do
#   object_save_to_db = build :article
#   expect(object_save_to_db[:published_at]).to eq('2017-07-17 15:24:51')
#   expect(object_save_to_db[:title]).to eq('Daniel')
# end
#
# it('should calling create will invoke both after_build and after_create callbacks.') do
#   object_save_to_db = create :article
#   expect(object_save_to_db[:title]).to eq('Moshiko')
# end

# it('should call callbacks that rely on symbol#to_proc:') do
#   object_save_to_db = create :article
#   expect(object_save_to_db[:title]).to eq('Moshiko')
# end

# it('should modify factory') do
#   object_save_to_db2 = create :article_child
#   expect(object_save_to_db2[:title]).to eq('Jane Doe')
#   expect(object_save_to_db2[:published_at]).to eq('2016-06-12 15:24:51')
#   object_save_to_db = create :article
#   expect(object_save_to_db[:title]).to eq('Jane Doe')
#   expect(object_save_to_db2[:published_at]).to eq('2016-06-12 15:24:51')
# end



#
end
