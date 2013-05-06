require 'spec_helper'

describe Conflict do
  it "should require a title" do
    event = Event.create
    event.should_not be_valid

    event.title = "Singing"

    event.should be_valid
  end
end
