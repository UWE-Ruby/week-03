#
# 
# @see http://rubydoc.info/stdlib/core/1.9.2/Struct
# 
# Several of these examples are based on the DC Comic Superhero Batman.
# 
# @see http://en.wikipedia.org/wiki/Batman

Villian = Struct.new :name, :nemesis
Superhero = Struct.new :name, :origin, :nemesis, :nick_name, :alter_ego
AlterEgo = Struct.new :name, :superhero

describe Villian do
  
  #
  # This is an example of RSpec's let helper method.
  # 
  # Here we are saying: For these examples like any references to `joker` return
  # the value returned between the two mustaches (the block).
  # 
  # @see https://www.relishapp.com/rspec/rspec-core/docs/helper-methods/let-and-let
  # 
  let(:batman) { Superhero.new "Batman", "Gotham City" }
  
  
  #
  # This is an example of using RSpec's explicit subject. The value here is 
  # returned each time `subject` is used within the code.
  #
  # @see https://www.relishapp.com/rspec/rspec-core/docs/subject/explicit-subject
  #
  subject { Villian.new "Joker", batman }
  
  
  it "should have the correct name" do
    
    subject.name.should == "Joker"
    
  end
  
  
  describe "nemesis" do

    it "should respond_to? nemesis" do

      subject.should respond_to :nemesis

    end
    
    it "should have the correct nemesis" do
      
      subject.nemesis.should == batman 
      
    end
    
  end

end

describe Superhero do
  
  #
  # This is an example of RSpec's let helper method.
  # 
  # Here we are saying: For these examples like any references to `joker` return
  # the value returned between the two mustaches (the block).
  # 
  # @see https://www.relishapp.com/rspec/rspec-core/docs/helper-methods/let-and-let
  # 
  let(:joker) { Villian.new "Joker" }

  let(:bruce_wayne) { AlterEgo.new "Bruce Wayne" }
  
  #
  # This is an example of using RSpec's explicit subject. The value here is 
  # returned each time `subject` is used within the code.
  #
  # @see https://www.relishapp.com/rspec/rspec-core/docs/subject/explicit-subject
  #
  subject { Superhero.new "Batman", "Gotham City", joker, "The Caped Crusader", bruce_wayne }
  
  it "should have a name" do
    subject.should respond_to :name
  end
  
  it "should have the correct name" do
    
    subject.name.should == "Batman"
    
  end
  
  it "should have the correct origin" do
    
    subject.origin.should == "Gotham City"
    
  end
  
  describe "nemesis" do
    
    it "should have the correct name" do
      
      subject.nemesis.name.should == "Joker"
      
    end
    
  end
  
  
  describe "alter_ego" do

    it "should respond_to? alter_ego" do

      subject.should respond_to :alter_ego

    end

    it "should have an alter ego" do

      subject.alter_ego.should_not be_nil

    end
    
    it "should have the correct alter ego" do
      
      subject.alter_ego.should == bruce_wayne
      
    end
    
  end
  
  it "should have a nickname" do
    
    subject.nick_name.should == "The Caped Crusader"
    
  end
  
end