describe "else" do
  
  #
  # This is an example of using RSpec's explicit subject. The value here is 
  # returned each time `subject` is used within the code.
  #
  # @see https://www.relishapp.com/rspec/rspec-core/docs/subject/explicit-subject
  subject { [ :superman, :wonder_woman, :green_lantern ] }
  
  it "should express the alternate state of an if" do
    
    too_many_superheroes = true
    
    if subject.length > 3
      too_many_superheroes = true
    else
      too_many_superheroes = false
    end
    
    too_many_superheroes.should be_false
      
  end
 
  it "should express the alternate state of an unless" do
    
    too_many_superheroes = true
    
    # NOTE: the difference less-than or equal INSTEAD of greater-than
    unless subject.length <= 3
      too_many_superheroes = true
    else
      too_many_superheroes = false
    end
    
    too_many_superheroes.should be_false
    
  end
  
  
  describe "tertiary operation" do
    
    # The tertiary operator is a shorthand way of expressing an if-else. It is 
    # not necessary to use this operation in your programming style but you 
    # should be aware of it so that you know what it looks like when someone
    # else uses it.
    it "should be expressed as: STATEMENT ? WHEN_TRUE_DO_THIS : WHEN_FALSE_DO_THIS" do
      
      subject.length > 3 ? too_many_superheroes = true : too_many_superheroes = false
      too_many_superheroes.should be_false
      
    end
    
    it "is often used when you want to use the appropriate pluralization of a word" do
      
      statement = "I have #{subject.length} favorite superhero#{ subject.length == 1 ? '':'es' }"
      
      statement.should == "I have 3 favorite superheroes"
    end
    
    
  end
  
end