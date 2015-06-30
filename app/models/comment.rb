class Comment < ActiveRecord::Base

  acts_as_tree order: 'created_at'
  has_many :replies, class_name: 'Comment', source: :comments, foreign_key: 'parent_id', primary_key: 'id'

  validates :author, presence: true 
  validates :text, presence: true 

  def self.recent_with_replies (limit)
    where(parent_id: nil).order('created_at').limit(limit).as_json(only: [:id, :text, :author], include: :replies)
  end

end
