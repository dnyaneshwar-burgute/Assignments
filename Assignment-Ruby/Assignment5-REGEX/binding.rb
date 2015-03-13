
$Global_var1
$Global_var2
class MyClass
	@@x = " x"
        _localvar1
        _localvar2
	def initialize(_s)
		@mystr = _s
	end
	def getBinding
		return binding()
	end
end

class MyOtherClass 
	@@x = " y"
	def initialize(_s)
		@mystr1	= _s
	end
	_localvar3
	#Method Name : getBinding()
	#return string
	def getBinding
		return binding()
	end
end



			 
