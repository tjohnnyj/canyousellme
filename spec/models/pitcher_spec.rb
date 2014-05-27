require 'spec_helper'

describe Pitcher do

  before { @pitcher = Pitcher.new(name: "Example User", email: "pitcher@example.com") }

  subject { @pitcher }

  it { should respond_to(:name) }
  it { should respond_to(:email) } 
  
  describe "when name is not present" do
    before { @pitcher.name = " " }
    it { should_not be_valid }
  end                
  
  describe "when email is not present" do
      before { @pitcher.email = " " }
      it { should_not be_valid }
    end   
    
    describe "when email address is already taken" do
        before do
          pitcher_with_same_email = @pitcher.dup
          pitcher_with_same_email.email = @pitcher.email.upcase
          pitcher_with_same_email.save
        end

        it { should_not be_valid }
      end
  
end