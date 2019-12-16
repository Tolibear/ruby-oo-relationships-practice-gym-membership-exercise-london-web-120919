class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_member(cost:, lifter:)
    Membership.new(cost: cost, gym: self, lifter: lifter)
  end

  def all_memberships
    Membership.all.select { |membership| membership.gym == self }
  end

  def member_names
    all_memberships.map { |membership| membership.lifter.name }
  end

  def all_members_lift_totals
    all_memberships.map { |membership| membership.lifter.lift_total }.reduce(:+)
  end

# class methods

  def self.all
    @@all
  end

end
