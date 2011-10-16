
#
# Often times you want to expression a conditional in the negative. In those
# cases you can place a ! (bang) in the front of the resulting operation.
# 
# Ruby also provides the `unless` operator that you can use to express this 
# negative without using the ! (bang) in front of your statements.
# 
describe "unless" do
  
  #
  # This is an example of using RSpec's explicit subject. The value here is 
  # returned each time `subject` is used within the code.
  #
  # @see https://www.relishapp.com/rspec/rspec-core/docs/subject/explicit-subject
  subject { [ :superman, :wonder_woman, :green_lantern ] }
  
  it "should be the same as expressing an `if` in the negative" do

    we_have_heroes = false
    
    # Here we are stating that we_have_heroes if the subject array is not empty
    we_have_heroes = true if !subject.empty?
    
    we_have_heroes.should be_true
  
  
  end
  
  it "should be the same as expressing an `if` in the negative" do
    
    we_have_heroes = false
    
    # Here we are stating the same thing as above except with `unless`.
    # Read it aloud and you might find this reads better to you.
    we_have_heroes = true unless subject.empty?
    
    we_have_heroes.should be_true
    
  end
  
end