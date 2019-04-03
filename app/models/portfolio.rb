class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: "Angular") #Portfolio.where(subtitle: "Angular")
  end

  # scope: :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }   THERES A SYNTAX ERROR HERE

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "https://via.placeholder.com/600x400.jpg" #the pipes make it so you don't override main images you already put in.
    self.thumb_image ||= "https://via.placeholder.com/350x200.jpg"
  end
end
