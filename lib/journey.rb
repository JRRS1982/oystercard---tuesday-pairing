require './lib/station.rb'

class Journey

  PENALTY_FARE = 6 
  MINIMUM_FARE = 2

  attr_reader :entry_station, :exit_station

  def initialize(entry_station)
    @exit_station = nil
    @entry_station = entry_station
  end 

  def finish(exit_station)
    @exit_station = exit_station
  end

  def journey_complete?
    !exit_station.nil?
  end

  def in_journey?
    @exit_station.nil? 
  end

  def fare
    journey_complete? ? MINIMUM_FARE : PENALTY_FARE
  end

  def calculate_fare
  end 
end
