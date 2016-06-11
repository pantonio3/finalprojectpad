class Service < ActiveRecord::Base

has_many :documents
belongs_to :user
has_many :users, :through => :documents

end
