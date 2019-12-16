class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name:, lift_total:)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def memberships
    Membership.all.select { |membership| membership.lifter == self }
  end

  def my_gyms
    memberships.map { |membership| membership.gym }
  end

  def cost_of_my_memberships
    memberships.map { |membership| membership.cost }.reduce(:+)
  end

  def new_membership(cost:, gym:)
    Membership.new(cost: cost, gym: gym, lifter: self)
  end

  # class methods:

  def self.all
    @@all
  end

  def self.total_all_lifters
    self.all.map { |lifter| lifter.lift_total }.reduce(:+)
  end

  def self.average_all_lifters
    self.total_all_lifters.to_f / self.all.count
  end

end
