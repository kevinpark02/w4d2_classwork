require_relative "employee"

class Manager < Employee

    attr_reader :employees, :salary
    attr_writer :employees

    def initialize(name, title, salary, boss = nil, employees)
        @employees = employees
        super(name, title, salary, boss)
    end

end

shawna = Employee.new("Shawna", "TA", 12000, "Darren")
david = Employee.new("David", "TA", 10000, "Darren")
darren = Manager.new("Darren", "TA Manager", 78000, "Ned", [shawna, david])
ned = Manager.new("Ned", "Founder", 1000000, nil, [darren])

# p shawna.is_a?(Manager)
# p darren.is_a?(Employee)

p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000