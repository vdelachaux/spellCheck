Case of 
		
		//______________________________________________________
	: (Form event code:C388=On Load:K2:1)
		
		OBJECT SET AUTO SPELLCHECK:C1173(*; "input"; True:C214)
		
		//______________________________________________________
	: (Form event code:C388=On Timer:K2:25)
		
		SET TIMER:C645(0)
		
		// Activate the spell checking options we want
		
		var $option : Text
		
		For each ($option; [\
			"autoLanguageEnabled"; \
			"grammarEnabled"; \
			"autoCorrectionEnabled"; \
			"autoSubstitutionsEnabled"; \
			"visibleSubstitutions"; \
			"autoDashSubstitutionsEnabled"; \
			"autoQuoteSubstitutionsEnabled"\
			])
			
			If (Not:C34(Bool:C1537(OBJECT Get value:C1743($option))))
				
				INVOKE ACTION:C1439("spell/"+$option)
				
			End if 
			
		End for each 
		
		//______________________________________________________
End case 