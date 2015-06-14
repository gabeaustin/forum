class Topic < ActiveRecord::Base
  belongs_to :my_forum
  has_many :posts, :dependent => :destroy
end
