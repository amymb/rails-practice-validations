require 'rails_helper'
require 'rails_helper'

describe Organization do

  it "validates the presence of the name" do
    organization = Organization.create(name: "Apple")
    expect(organization).to be_valid
  end

  it "is invalid without a first name" do
    organization = Organization.create(name: nil)
    expect(organization.errors[:name]).to include("can't be blank")
  end
  
  it "validates the uniqueness of the name" do
    Organization.create(name: "IBM")
    organization = Organization.new(name: "IBM")
    organization.valid?
    expect(organization.errors[:name]).to include("has already been taken")
  end

end
