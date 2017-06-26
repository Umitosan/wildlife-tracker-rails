require 'rails_helper'

describe "the edit a sighting process" do
  it "edits a sighting" do
    animal = Animal.create(:name => 'Hamster')
    sighting = Sighting.create(
      :date => '2012-12-12',
      :lat => 86,
      :lng => 101,
      :animal_id => animal.id
    )
    visit animal_path(animal)
    click_on 'Edit'
    fill_in 'Date', :with => '2012-11-13'
    fill_in 'Lat', :with => '23'
    fill_in 'Lng', :with => '42'
    click_on 'Update Sighting'
    expect(page).to have_content '2012-11-13'
  end

  it "gives error when no description is entered" do
    animal = Animal.create(:name => 'Hamster')
    sighting = Sighting.create(
      :date => '2017-10-10',
      :lat => 76,
      :lng => 121,
      :animal_id => animal.id)
    visit animal_path(animal)
    click_on 'Edit'
    fill_in 'Date', :with => ''
    fill_in 'Lat', :with => '23'
    fill_in 'Lng', :with => '42'
    click_button 'Update Sighting'
    expect(page).to have_content 'errors'
  end
end
