class Kontakt < ActiveRecord::Base
  belongs_to :bewerbung
  belongs_to :kontaktart
  
  def self.get_all_but_absagen_as_list
    @q = "SELECT k.bewerbung_id from `kontakts` k WHERE k.kontaktart_id = 4"
    @kontakts = Kontakt.find(
        :all,
        :select => 'DISTINCT(bewerbung_id)',
        :conditions => ["bewerbung_id NOT IN (#{@q})"]
      )
      @a = []
      @kontakts.each {|x| @a.push(x.bewerbung_id)}
      @b = @a.join(', ')
  end
end
