class Driverride < ActiveRecord::Base


  belongs_to :user

  has_many :requestforpms

  has_many :commonts

  has_many :post_attachments
  accepts_nested_attributes_for :post_attachments

  validates :name, presence: true
  validates :rent, presence: true
  validates :address, presence: true
  validates :contract, presence: true, :numericality => { :greater_than_or_equal_to => 1, :less_than_or_equal_to => 60 }, :allow_nil => true
  validates :area, :numericality => { :greater_than_or_equal_to => 1 }, :allow_nil => true
  validates :bedroom, presence: true, :numericality => { :greater_than_or_equal_to => 1 }, :allow_nil => true
  validates :bathroom, presence: true, :numericality => { :greater_than_or_equal_to => 1 }, :allow_nil => true
  validates :kitchen, presence: true, :numericality => { :greater_than_or_equal_to => 1 }, :allow_nil => true

end