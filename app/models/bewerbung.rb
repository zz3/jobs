class Bewerbung < ActiveRecord::Base
  belongs_to :firma
  has_many :kontakts
  
  def self.only_active(order = '')
    @b = Kontakt.get_all_but_absagen_as_list()
    if order.eql?('')
      @bewerbungs = find(
            :all,
            :conditions => ["id IN (#{@b})"]
            )
    else
      @bewerbungs = find(
            :all,
            :conditions => ["id IN (#{@b})"],
            :order => order
            )
    end
    
  end
end
