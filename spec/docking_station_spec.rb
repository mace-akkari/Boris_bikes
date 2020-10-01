require 'docking_station'

describe DockingStation do
  it { should respond_to :release_bike }

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  it {should respond_to(:dock).with(1).argument }

  it { should respond_to(:bike) }

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  describe '#release_bike' do
    it 'should not return a bike if the dock is empty' do
      expect{ subject.release_bike }.to raise_error 'No bikes available'
    end 
  end 
  
end 

