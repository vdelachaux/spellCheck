Case of 
		
		//______________________________________________________
	: (Form event code:C388=On Load:K2:1)
		
		OBJECT SET AUTO SPELLCHECK:C1173(*; "input"; True:C214)
		
		//______________________________________________________
	: (Form event code:C388=On Timer:K2:25)
		
		SET TIMER:C645(0)
		
		//Activate the spell checking options we want
		If (Not:C34(Bool:C1537(OBJECT Get value:C1743("automaticLanguage"))))
			
			INVOKE ACTION:C1439("spell/autoLanguageEnabled")
			
		End if 
		
		If (Not:C34(Bool:C1537(OBJECT Get value:C1743("grammarEnabled"))))
			
			INVOKE ACTION:C1439("spell/grammarEnabled")
			
		End if 
		
		If (Not:C34(Bool:C1537(OBJECT Get value:C1743("autoCorrectionEnabled"))))
			
			INVOKE ACTION:C1439("spell/autoCorrectionEnabled")
			
		End if 
		
		If (Not:C34(Bool:C1537(OBJECT Get value:C1743("autoSubstitutionsEnabled"))))
			
			INVOKE ACTION:C1439("spell/autoSubstitutionsEnabled")
			
		End if 
		
		If (Not:C34(Bool:C1537(OBJECT Get value:C1743("visibleSubstitutions"))))
			
			INVOKE ACTION:C1439("spell/visibleSubstitutions")
			
		End if 
		
		If (Not:C34(Bool:C1537(OBJECT Get value:C1743("autoDashSubstitutionsEnabled"))))
			
			INVOKE ACTION:C1439("spell/autoDashSubstitutionsEnabled")
			
		End if 
		
		If (Not:C34(Bool:C1537(OBJECT Get value:C1743("autoQuoteSubstitutionsEnabled"))))
			
			INVOKE ACTION:C1439("spell/autoQuoteSubstitutionsEnabled")
			
		End if 
		
		//______________________________________________________
End case 


