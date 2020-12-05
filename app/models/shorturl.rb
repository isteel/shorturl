class Shorturl < ApplicationRecord
  
  belongs_to :user
  
  validates_presence_of :shorturl, :targeturl
  validates_uniqueness_of :shorturl
  # validates_length_of :shorturl, proc: { |surl| surl.shorturl < surl.targeturl }, message: "must be shorter than target url"
  
  # TODO ensure short is less than target in length
  # validates_length_of :address, :minimum => 3, :allow_blank => true, :unless => Proc.new { |esr| /^\d+$/.match(esr.address) }
  
  def visited!
    self.invocation_count += 1
    self.save!
  end
  
end
