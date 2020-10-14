class Employee

    attr_reader :name, :salary, :title
    attr_accessor :boss

    def initialize(name, salary, title, boss = nil)
        @name = name
        @salary = salary
        @title = title
        self.boss = boss
    end

    def boss=(boss)
        @boss = boss
        boss.add_employee(self) unless boss.nil?

        boss
    end

    def bonus(multiplier)
        self.salary * multiplier
    end
end
