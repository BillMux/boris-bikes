require 'docking_station'
require 'bike'
describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it 'should return bike on release_bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'should dock bike' do
  bike = Bike.new
  subject.dock(bike)
  expect(subject.bikes).to eq([bike])
  end

  it 'should examine bike' do
    bike = Bike.new

    subject.dock(bike)
    selected_bike = subject.examine_bikes(0)
    expect(selected_bike).to eq(bike)
  end



end
