class Parent
       def try_this()
          puts "parent"
       end
    end

    class Child < Parent
       def try_this()
          super()
          puts "child"
       end
    end

ch = Child.new
ch.try_this()