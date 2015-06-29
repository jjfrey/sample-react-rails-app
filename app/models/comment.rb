class Comment < ActiveRecord::Base
  acts_as_tree order: 'created_at'
 validates :author, presence: true 
 validates :text, presence: true 
end
