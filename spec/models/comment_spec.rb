require 'spec_helper'

RSpec.describe Comment, type: :model do

  # # # # # # # # # # # # # # # #
  # Associations
  # # # # # # # # # # # # # # # #
  # it('should Associations') do
  #   object_save_to_db = create :comment
  #   expect(object_save_to_db.new_record?).to eq(false)
  # end
  #
  it('should Associations') do
    object_save_to_db = build :comment
    expect(object_save_to_db.new_record?).to eq(true)
    expect(object_save_to_db.article.title).to eq("article")
  end
  #
  # it('should Associations - strategy: :build') do
  #   object_save_to_db = build :comment
  #   expect(object_save_to_db.new_record?).to eq(true)
  #   expect(object_save_to_db.article.new_record?).to eq(true)
  # end

end
