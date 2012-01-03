require 'spec_helper'

describe Pod do

  def reset_pod(options = {})
    @valid_attributes = {
      :id => 1,
      :name => "RSpec is great for testing too"
    }

    @pod.destroy! if @pod
    @pod = Pod.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_pod
  end

  context "validations" do
    
    it "rejects empty name" do
      Pod.new(@valid_attributes.merge(:name => "")).should_not be_valid
    end

    it "rejects non unique name" do
      # as one gets created before each spec by reset_pod
      Pod.new(@valid_attributes).should_not be_valid
    end
    
  end

end