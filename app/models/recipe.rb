class Recipe < ActiveRecord::Base
#  validates_presence_of :title, :description
  has_many :steps, :dependent => :destroy
  accepts_nested_attributes_for :steps, :reject_if => lambda { |a| a[:instruction].blank? }, :allow_destroy => true
end
