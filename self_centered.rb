class SelfCentered
  def talk_about_me
    puts "Hello I am #{self}"
  end
end

conceited = SelfCentered.new
conceited.talk_about_me
