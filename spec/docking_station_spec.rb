require 'docking_station'
require 'bike'
describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it 'should return bike on release_bike' do
    expect(subject.release_bike).to be_instance_of(Bike)
  end
end
