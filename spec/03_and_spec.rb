
describe "and" do
  
  #
  # This is an example of using RSpec's explicit subject. The value here is 
  # returned each time `subject` is used within the code.
  #
  # @see https://www.relishapp.com/rspec/rspec-core/docs/subject/explicit-subject
  subject { [ :superman, :wonder_woman, :green_lantern ] }
  
  
  it "should require both statements to be true" do

    if subject.include?(:superman) and subject.include?(:spiderman)
      fail "Superman belongs to DC Comics and Spiderman belongs to Marvel"
    end
    
  end
  
  it "can also be expressed as &&" do
    
    # this may be more familiar with other programming languages
    
    if subject.include?(:superman) && subject.include?(:spiderman)
      fail "Superman belongs to DC Comics and Spiderman belongs to Marvel"
    end
    
  end
  
  it "can be expessed inline" do
    
    fail "Superman belongs to DC Comics and Spiderman belongs to Marvel" if subject.include?(:superman) and subject.include?(:spiderman)
    
  end
  
  it "should quit evaluations if the first statement is false (fail fast)" do
    
    current_superhero = nil
    
    if subject.length == 4 and current_superhero = subject.index(:superman)
      
      fail "The array is length of 4, when I remember only picking 3 superheroes"
      
      # the above test will not get to this point because the array only has
      # a length of three. But more than than the operation of setting the 
      # current super hero will not happen.
      
    end
    
    current_superhero.should be_nil
    
  end
  
end