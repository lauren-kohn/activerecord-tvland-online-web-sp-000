class Actor < ActiveRecord::Base
  has_many :characters 
  has_many :shows, through: :characters
  
  def full_name 
    self.first_name
  end 
  
  def list_roles 
    self.characters.join(" - ").self.shows
  end 
  
end