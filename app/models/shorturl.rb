class Shorturl < ApplicationRecord
  
  belongs_to :user
  
  validates_presence_of :shorturl, :targeturl
  validates_uniqueness_of :shorturl, case_sensitive: false

  validates :targeturl, url: true
  
  def visited!
    self.invocation_count += 1
    self.save!
  end
  
end
