require 'docking_station'
require 'bike'

describe DockingStation do

  before(:each) do
    bike = Bike.new
    subject.dock(bike)
  end

  it { is_expected.to respond_to :release_bike }

  it 'should return bike on release_bike' do
    expect(subject.release_bike).to eq(bike)
  end

  it 'should dock bike' do
    expect(subject.bikes).to eq([bike])
  end

  it 'should examine bike' do
    selected_bike = subject.examine_bikes(0)
    expect(selected_bike).to eq(bike)
  end

  # it 'does not release broken bikes' do
  #   broken_bike =
  # end

end
