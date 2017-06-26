require 'rails_helper'

describe Sighting do
  it { should validate_presence_of :date }
  it { should validate_presence_of :lat }
  it { should validate_presence_of :lng }
  it { should belong_to :animal }
end
