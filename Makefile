test-all:
	ruby -Ilib -e 'ARGV.each { |f| require f }' ./test/test_*.rb
