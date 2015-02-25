class Organization < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true


#def passive_aggressive_name_suggestion
#  errors = 0
#  if errors==0 && self.name != "OptimaCorp"
#    self.errors[:base] << self.name + " is a fine name, but we think OptimaCorp is a bit better..."
#    errors+=1
#  end
#  if [:base].include? ==1 && self.name != "OptimaCorp"
#    self.errors[:base]<<self.name + " is also ok, but we really like OptimaCorp."
#    errors+=1
#  end
#  if errors ==2 && self.name != "OptimaCorp"
#    self.errors[:base] << "We don't think you are listening to us."
#    errors +=1
#  end
#end





end
