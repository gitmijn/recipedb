class Step < ActiveRecord::Base
  belongs_to :recipe
  has_many :stepingrds, :dependent => :destroy
  accepts_nested_attributes_for :stepingrds, :reject_if => lambda { |a| a[:amount].blank? }, :allow_destroy => true
end
