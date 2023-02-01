###
#  to run use
#     ruby -I ./lib sandbox/test_outline.rb

require 'solidity'


## addr = "0x0cfdb3ba1694c2bb2cfacb0339ad7b1ae5932b63"
## addr = "0x34625ecaa75c0ea33733a05c584f4cf112c10b6b"
addr = "0x031920cc2d9f5c10b444fd44009cd64f829e7be2"

## path = "../../awesome-contracts/address/#{addr}/contract.sol"

path = "./contracts/contract3.sol"

parser = Solidity::Parser.read( path )
pp parser._quick_pass_one



puts "---"
puts "outline:"
puts parser.outline
pp parser.outline

puts
puts "pragmas:"
puts parser.pragmas
pp parser.pragmas


puts "bye"