#! /usr/bin/env ruby


if (ARGV[0] && ARGV[0].end_with?(".asm") && ARGV.length == 1)
  asm_filename = ARGV[0]
  puts asm_filename
else
  abort("Usage: ./assembler.rb Prog.asm")
end

if (File.exist?(asm_filename) && File.readable?(asm_filename))
  puts "The contents of #{asm_filename}"
else
  abort("#{asm_filename} not found or is unreadable")
end 