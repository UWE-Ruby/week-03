
describe "Boolean", "refresher" do

  #
  # This is an example of using RSpec's explicit subject. The value here is 
  # returned each time `subject` is used within the code.
  #
  # @see https://www.relishapp.com/rspec/rspec-core/docs/subject/explicit-subject
  subject { [ :superman, :wonder_woman, :green_lantern ] }

  it "should be true when the statements evaluates to 0" do
    
    # This is just a reminder as a lot of other programming languages include
    # the value 0 as false. In ruby 0 is a true value.
    superman_index = subject.index(:superman)
    
    superman_index.should be_true
    
  end
  
  it "should be false when the statement is false" do
    
    captain_marvel = subject.include?(:captain_marvel)
    
    captain_marvel.should be_false
    
  end

  it "should be false when the statement is nil" do
    
    current_superhero = subject.index(:spiderman)
    
    current_superhero.should be_false
    
  end
  
  context "when preceded with a ! (bang)" do
    
    it "should reverse the value from true to false" do
      
      superman_index = subject.index(:superman)

      superman_index = !superman_index
      
      superman_index.should be_false
      
    end
    
    it "should reverse the value from false to true" do
      
      captain_marvel = subject.include?(:captain_marvel)

      captain_marvel = !captain_marvel

      captain_marvel.should be_true
      
    end
    
    
  end
  
  context "when preceded with !! (bang-bang)" do
    
    it "should convert any 'truthy' value to a true" do
      
      # Remember non-false and non-nil values are truthy
      
      superheroes_missing = 0
      
      superheroes_missing = !!superheroes_missing
      
      superheroes_missing.should be_true
      superheroes_missing.should_not be_kind_of(Integer)
      superheroes_missing.should be_kind_of(TrueClass)
      
    end
    
    it "should convert any 'falsy' value to a false"  do
      
      # Remember false and nil values are falsy
      
      unknown_superhero = nil
      
      unknown_superhero = !!unknown_superhero
      
      unknown_superhero.should be_false
      unknown_superhero.should_not be_kind_of(NilClass)
      unknown_superhero.should be_kind_of(FalseClass)
      
    end
    
  end
  
end