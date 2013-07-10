class Comment < ActiveRecord::Base
  attr_accessible :message, :link_id
end