# close -- Closes the file. Like File->Save.. in your editor.
# read -- Reads the contents of the file. You can assign the result to a variable.
# readline -- Reads just one line of a text file.
# truncate -- Empties the file. Watch out if you care about the file.
# write('stuff') -- Writes "stuff" to the file.

filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening the file..."
target = open(filename, 'w')

puts "Truncating the file.  Goodbye!"
target.truncate(0)

puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally, we close it."
target.close


# If you do not understand this, go back through and use the comment trick to get it squared away in your mind. One simple English comment above each line will help you understand or at least let you know what you need to research more.
# Write a script similar to the last exercise that uses read and argv to read the file you just created.
# There's too much repetition in this file. Use strings, formats, and escapes to print out line1, line2, and line3 with just one target.write() command instead of six.
# Find out why we had to pass a 'w' as an extra parameter to open. Hint: open tries to be safe by making you explicitly say you want to write a file.
# If you open the file with 'w' mode, then do you really need the target.truncate()? Read the documentation for Ruby's open function and see if that's true.
