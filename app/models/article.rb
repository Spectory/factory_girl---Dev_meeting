class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  enum status: [:unpublished, :published]
  validates :title, presence: true,
                    length: { minimum: 5 }

  def change_title!
    self.title = 'Moshiko'
  end
end
