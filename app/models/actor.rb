class Actor < ActiveRecord::Base
  has_many :characters 
  has_many :shows, through: :characters
  
  def full_name 
    "#{self.first_name} #{self.last_name}"
  end 
  
  def list_roles 
    self.characters.collect do |character|
      character.name - character.show.name.join(", ")
    #[self.characters.name, self.characters.show_id.name].join(" - ")
  end 
  
end