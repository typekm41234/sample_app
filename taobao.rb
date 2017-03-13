require "#{File.dirname(__FILE__)}/value.rb"

taobao = Enterprise.new("taobao")

taobao.fund_base = 50000
taobao.interest_rate = 0.1
taobao.last_year = 21

puts taobao.value?
