#!/usr/bin/env ruby

require 'find'	
require 'colorize'

class ShowMeTheFiles

	def initialize 
		
		@formats = %r~js|py|pl|p6|rb|sh~i
		
	end
	
	def go 

		Find.find('.') do |script|
			
			if !script.match(%r~\.git~) and script.match(@formats) then	
			
				script.sub(%r~(?<path>.*/)?(?<file>.*)$~) do
				
					printf %Q|%s%s\n|, ($~[:path] ? $~[:path] : %q|| ), $~[:file].green
					
				end
			
			end
			
		end
			
	end

end

go = ShowMeTheFiles.new
go.go

__END__