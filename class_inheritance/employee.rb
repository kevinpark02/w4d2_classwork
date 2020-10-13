class Employee

    attr_reader :salary

    def initialize(name, title, salary, boss = nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        if !self.is_a?(Manager)
            return @salary * multiplier
        else
            # done recursively, work through employee
            sum = 0
            employees.each do |employee|
                
                sum += employee.salary

            end
            return sum * multiplier
        end
    end
end

#manager = Manager(....)

# manager.bonus(4)