#
# OpenStructs are not included in the standard library, so you have to explicitly
# require that library to make them available within your code.
# 
# http://rubydoc.info/stdlib/ostruct/1.9.2/frames
# 
require 'ostruct'

describe "Current Administration" do
  
  subject do
    
    # Creating a new OpenStruct here
    administration = OpenStruct.new
    
    # Then you can assign any properties on the OpenStruct
    administration.president = "Barack Obama"
    
    administration.vice_president = "Broseph Jiden"
    
    # This last line has `administration` so that it is returned as the subject
    administration
  end


  it "should report the correct President" do
    subject.president.should == "Barack Obama"
  end
  
  #
  # This an example of RSpecs Implicit Receiver
  # @see https://www.relishapp.com/rspec/rspec-core/docs/subject/implicit-receiver
  #
  # This is the same as the test above. This is essentially a shortcut for
  # typeing the following: "subject.president.should == 'Barack Obama'"
  #
  its(:president) { should == "Barack Obama" }


  
  its(:first_lady) { should == "Michelle Obama" }
  
  its(:vice_president) { should == "Joe Biden" }

  describe "cabinet" do
    
    it "should be present" do
    
      subject.should respond_to(:cabinet)
    
    end
    
    it "should have a statement department" do
      
      subject.cabinet.state_department.should == "Hillary Clinton"
      
    end
    
  end
  
end