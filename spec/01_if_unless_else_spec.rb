
describe "if" do
  
  #
  # This is an example of using RSpec's explicit subject. The value here is 
  # returned each time `subject` is used within the code.
  #
  # @see https://www.relishapp.com/rspec/rspec-core/docs/subject/explicit-subject
  subject { [ :superman, :wonder_woman, :green_lantern ] }
  
  it "should branch logic one way or the other" do
    
    # 
    # Empty returns true if the Array contains no elements
    # @see http://rubydoc.info/stdlib/core/1.9.2/Array#empty%3F-instance_method
    # 
    if subject.empty?
      fail "The subject (Array) is empty when I expected it to contain elements"
    end
    
    # RSpec treats this test as passing because no failure occurred.
    
  end

  it "can be written inline to make your code read more like a sentence" do
    
    fail "The subject (Array) is empty" if subject.empty?
    
  end
  
  it "should be true when the statements evaluates to 0" do
    
    # This is just a reminder as a lot of other programming languages include
    # the value 0 as false. In ruby 0 is a true value.
    superman_index = subject.index(:superman)
    
    if !superman_index
      fail "Superman is the first element in our list of superheroes"
    end
    
    
  end
  
  it "should be false when the statement is false" do
    
    captain_marvel = subject.include?(:captain_marvel)
    
    if captain_marvel
      fail "Captain Marvel is not in my list of favorite superheroes"
    end
    
  end

  it "should be false when the statement is nil" do
    
    current_superhero = subject.index(:spiderman)
    
    if current_superhero
      fail "Spiderman was found among these DC comic heroes"
    end
    
  end
  
  it "can handle assignment operations" do
    
    # This may look like a mistake, but this is intentional.
    
    if superman_index = subject.index(:superman)
      superman_index.should == 0
    end
    
    # Usually comparisons are done but here we are not comparing the superman_index
    # to the index location of superman. We are instead are assigning that
    # value.
    # 
    # What this is doing could have been written as:
    
    superman_index = subject.index(:superman)
    
    if superman_index
      superman_index.should == 0
    end
    
    # Comparing the two, the difference is really we are saving ourselves a line
    # within the code.
    
  end

  
end