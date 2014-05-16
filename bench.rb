require 'digest/md5'

puts <<SQL
CREATE TABLE table1(
    id integer,
    val text
);
SQL

(1...10000).each do |i|
    puts "INSERT INTO table1 values (#{i}, '#{Digest::MD5.hexdigest(i.to_s)}');"
end
puts "SELECT * from table1;"
