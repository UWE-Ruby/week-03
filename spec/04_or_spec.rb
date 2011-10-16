describe "or" do
  
  #
  # This is an example of using RSpec's explicit subject. The value here is 
  # returned each time `subject` is used within the code.
  #
  # @see https://www.relishapp.com/rspec/rspec-core/docs/subject/explicit-subject
  subject { [ :superman, :wonder_woman, :green_lantern ] }
  
  
  it "should require one of the statements to be true" do
    
    superhero_requirements_met = false
    
    if subject.include?(:thor) or subject.include?(:green_lantern)
      superhero_requirements_met = true
    end
    
    superhero_requirements_met.should be_true
    
  end
  
  it "can also be expressed as ||" do
    
    # this may be more familiar with other programming languages
    
    superhero_requirements_met = false
    
    if subject.include?(:thor) || subject.include?(:green_lantern)
      superhero_requirements_met = true
    end
    
    superhero_requirements_met.should be_true
    
  end
  
  it "should quit after the first statement if the first statement is true" do
    
    if default_superhero_index = subject.index(:green_lantern) or default_superhero_index = 0
      default_superhero_index.should == subject.index(:green_lantern)
    end
    
  end
  
end