class Enterprise
  attr_accessor :name, :fund_base, :interest_rate, :last_year

  def initialize(name = "Enterprise")
    @name = name
    @fund_base = 0
    @interest_rate = 0
    @last_year = 1
  end

  
  def value?
    begin
      colculate_Enterprise_value() 
    rescue Exception => e
      puts e.message
      puts e.backtrace.inspect
    end  
  end

  def compute_value(base, rate, last_year)
    #puts base , rate, last_year
    return 0 unless last_year > 1
    last_year -= 1
    base/((1+rate)**last_year)+compute_value(base, rate, last_year)
    
  end

  
  def colculate_Enterprise_value()
    raise "fund_base must be Numeric" unless @fund_base.is_a?(Numeric)
    raise "interest_rate must be Numeric" unless @interest_rate.is_a?(Numeric)
    raise "last_year must be Numeric" unless @last_year.is_a?(Numeric)
    raise "last_year must bigger than 0" unless @last_year > 0
   
    @value = compute_value(@fund_base, @interest_rate, @last_year).round(2)
  end
end
