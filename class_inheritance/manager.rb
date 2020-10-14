require_relative "employee"

class Manager < Employee

    attr_reader :employees

    def initialize(name, salary, title, boss = nil)
        super(name, salary, title, boss)
        @employee = []
    end

    def add_employee(subordinate)
        employees << subordinate
        subordinate
    end

    def bonus(multiplier)
        self.total_subsalary * multiplier
    end

    def total_subsalary
        total_subsalary = 0
        self.employees.each do |employee|
            if employee.is_a?(Manager)
                total_subsalary += employee.salary + employee.total_subsalary
            else
                total_subsalary += employee.salary
            end
        end
        total_subsalary
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