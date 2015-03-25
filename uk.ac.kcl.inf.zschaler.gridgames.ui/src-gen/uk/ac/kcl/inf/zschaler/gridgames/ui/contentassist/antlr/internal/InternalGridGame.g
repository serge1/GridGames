/*
 * generated by Xtext
 */
grammar InternalGridGame;

options {
	superClass=AbstractInternalContentAssistParser;
	
}

@lexer::header {
package uk.ac.kcl.inf.zschaler.gridgames.ui.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package uk.ac.kcl.inf.zschaler.gridgames.ui.contentassist.antlr.internal; 

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.DFA;
import uk.ac.kcl.inf.zschaler.gridgames.services.GridGameGrammarAccess;

}

@parser::members {
 
 	private GridGameGrammarAccess grammarAccess;
 	
    public void setGrammarAccess(GridGameGrammarAccess grammarAccess) {
    	this.grammarAccess = grammarAccess;
    }
    
    @Override
    protected Grammar getGrammar() {
    	return grammarAccess.getGrammar();
    }
    
    @Override
    protected String getValueForTokenName(String tokenName) {
    	return tokenName;
    }

}




// Entry rule entryRuleGridGame
entryRuleGridGame 
:
{ before(grammarAccess.getGridGameRule()); }
	 ruleGridGame
{ after(grammarAccess.getGridGameRule()); } 
	 EOF 
;

// Rule GridGame
ruleGridGame
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getGridGameAccess().getGroup()); }
(rule__GridGame__Group__0)
{ after(grammarAccess.getGridGameAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleFieldSpecification
entryRuleFieldSpecification 
:
{ before(grammarAccess.getFieldSpecificationRule()); }
	 ruleFieldSpecification
{ after(grammarAccess.getFieldSpecificationRule()); } 
	 EOF 
;

// Rule FieldSpecification
ruleFieldSpecification
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getFieldSpecificationAccess().getGroup()); }
(rule__FieldSpecification__Group__0)
{ after(grammarAccess.getFieldSpecificationAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleCellSpecification
entryRuleCellSpecification 
:
{ before(grammarAccess.getCellSpecificationRule()); }
	 ruleCellSpecification
{ after(grammarAccess.getCellSpecificationRule()); } 
	 EOF 
;

// Rule CellSpecification
ruleCellSpecification
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getCellSpecificationAccess().getGroup()); }
(rule__CellSpecification__Group__0)
{ after(grammarAccess.getCellSpecificationAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleOptionSpecification
entryRuleOptionSpecification 
:
{ before(grammarAccess.getOptionSpecificationRule()); }
	 ruleOptionSpecification
{ after(grammarAccess.getOptionSpecificationRule()); } 
	 EOF 
;

// Rule OptionSpecification
ruleOptionSpecification
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getOptionSpecificationAccess().getAlternatives()); }
(rule__OptionSpecification__Alternatives)
{ after(grammarAccess.getOptionSpecificationAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleAllowRestartMenu
entryRuleAllowRestartMenu 
:
{ before(grammarAccess.getAllowRestartMenuRule()); }
	 ruleAllowRestartMenu
{ after(grammarAccess.getAllowRestartMenuRule()); } 
	 EOF 
;

// Rule AllowRestartMenu
ruleAllowRestartMenu
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getAllowRestartMenuAccess().getGroup()); }
(rule__AllowRestartMenu__Group__0)
{ after(grammarAccess.getAllowRestartMenuAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleStartFieldDeclaration
entryRuleStartFieldDeclaration 
:
{ before(grammarAccess.getStartFieldDeclarationRule()); }
	 ruleStartFieldDeclaration
{ after(grammarAccess.getStartFieldDeclarationRule()); } 
	 EOF 
;

// Rule StartFieldDeclaration
ruleStartFieldDeclaration
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getStartFieldDeclarationAccess().getGroup()); }
(rule__StartFieldDeclaration__Group__0)
{ after(grammarAccess.getStartFieldDeclarationAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleFieldInitialisationSpecification
entryRuleFieldInitialisationSpecification 
:
{ before(grammarAccess.getFieldInitialisationSpecificationRule()); }
	 ruleFieldInitialisationSpecification
{ after(grammarAccess.getFieldInitialisationSpecificationRule()); } 
	 EOF 
;

// Rule FieldInitialisationSpecification
ruleFieldInitialisationSpecification
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getFieldInitialisationSpecificationAccess().getINITKeyword()); }

	'INIT' 

{ after(grammarAccess.getFieldInitialisationSpecificationAccess().getINITKeyword()); }
)

;
finally {
	restoreStackSize(stackSize);
}




rule__OptionSpecification__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOptionSpecificationAccess().getStartFieldDeclarationParserRuleCall_0()); }
	ruleStartFieldDeclaration
{ after(grammarAccess.getOptionSpecificationAccess().getStartFieldDeclarationParserRuleCall_0()); }
)

    |(
{ before(grammarAccess.getOptionSpecificationAccess().getAllowRestartMenuParserRuleCall_1()); }
	ruleAllowRestartMenu
{ after(grammarAccess.getOptionSpecificationAccess().getAllowRestartMenuParserRuleCall_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}



rule__GridGame__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GridGame__Group__0__Impl
	rule__GridGame__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GridGame__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGridGameAccess().getGameKeyword_0()); }

	'game' 

{ after(grammarAccess.getGridGameAccess().getGameKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GridGame__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GridGame__Group__1__Impl
	rule__GridGame__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__GridGame__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGridGameAccess().getNameAssignment_1()); }
(rule__GridGame__NameAssignment_1)
{ after(grammarAccess.getGridGameAccess().getNameAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GridGame__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GridGame__Group__2__Impl
	rule__GridGame__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__GridGame__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGridGameAccess().getLeftCurlyBracketKeyword_2()); }

	'{' 

{ after(grammarAccess.getGridGameAccess().getLeftCurlyBracketKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GridGame__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GridGame__Group__3__Impl
	rule__GridGame__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__GridGame__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getGridGameAccess().getFieldsAssignment_3()); }
(rule__GridGame__FieldsAssignment_3)
{ after(grammarAccess.getGridGameAccess().getFieldsAssignment_3()); }
)
(
{ before(grammarAccess.getGridGameAccess().getFieldsAssignment_3()); }
(rule__GridGame__FieldsAssignment_3)*
{ after(grammarAccess.getGridGameAccess().getFieldsAssignment_3()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GridGame__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GridGame__Group__4__Impl
	rule__GridGame__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__GridGame__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getGridGameAccess().getCellsAssignment_4()); }
(rule__GridGame__CellsAssignment_4)
{ after(grammarAccess.getGridGameAccess().getCellsAssignment_4()); }
)
(
{ before(grammarAccess.getGridGameAccess().getCellsAssignment_4()); }
(rule__GridGame__CellsAssignment_4)*
{ after(grammarAccess.getGridGameAccess().getCellsAssignment_4()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GridGame__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GridGame__Group__5__Impl
	rule__GridGame__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__GridGame__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGridGameAccess().getField_initialisationAssignment_5()); }
(rule__GridGame__Field_initialisationAssignment_5)
{ after(grammarAccess.getGridGameAccess().getField_initialisationAssignment_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GridGame__Group__6
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GridGame__Group__6__Impl
	rule__GridGame__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__GridGame__Group__6__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGridGameAccess().getOptionsAssignment_6()); }
(rule__GridGame__OptionsAssignment_6)*
{ after(grammarAccess.getGridGameAccess().getOptionsAssignment_6()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__GridGame__Group__7
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__GridGame__Group__7__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GridGame__Group__7__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGridGameAccess().getRightCurlyBracketKeyword_7()); }

	'}' 

{ after(grammarAccess.getGridGameAccess().getRightCurlyBracketKeyword_7()); }
)

;
finally {
	restoreStackSize(stackSize);
}


















rule__FieldSpecification__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__FieldSpecification__Group__0__Impl
	rule__FieldSpecification__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__FieldSpecification__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFieldSpecificationAccess().getField_typeKeyword_0()); }

	'field_type' 

{ after(grammarAccess.getFieldSpecificationAccess().getField_typeKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__FieldSpecification__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__FieldSpecification__Group__1__Impl
	rule__FieldSpecification__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__FieldSpecification__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFieldSpecificationAccess().getNameAssignment_1()); }
(rule__FieldSpecification__NameAssignment_1)
{ after(grammarAccess.getFieldSpecificationAccess().getNameAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__FieldSpecification__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__FieldSpecification__Group__2__Impl
	rule__FieldSpecification__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__FieldSpecification__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFieldSpecificationAccess().getLeftCurlyBracketKeyword_2()); }

	'{' 

{ after(grammarAccess.getFieldSpecificationAccess().getLeftCurlyBracketKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__FieldSpecification__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__FieldSpecification__Group__3__Impl
	rule__FieldSpecification__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__FieldSpecification__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFieldSpecificationAccess().getWidthKeyword_3()); }

	'width' 

{ after(grammarAccess.getFieldSpecificationAccess().getWidthKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__FieldSpecification__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__FieldSpecification__Group__4__Impl
	rule__FieldSpecification__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__FieldSpecification__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFieldSpecificationAccess().getEqualsSignKeyword_4()); }

	'=' 

{ after(grammarAccess.getFieldSpecificationAccess().getEqualsSignKeyword_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__FieldSpecification__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__FieldSpecification__Group__5__Impl
	rule__FieldSpecification__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__FieldSpecification__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFieldSpecificationAccess().getWidthAssignment_5()); }
(rule__FieldSpecification__WidthAssignment_5)
{ after(grammarAccess.getFieldSpecificationAccess().getWidthAssignment_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__FieldSpecification__Group__6
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__FieldSpecification__Group__6__Impl
	rule__FieldSpecification__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__FieldSpecification__Group__6__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFieldSpecificationAccess().getCommaKeyword_6()); }

	',' 

{ after(grammarAccess.getFieldSpecificationAccess().getCommaKeyword_6()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__FieldSpecification__Group__7
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__FieldSpecification__Group__7__Impl
	rule__FieldSpecification__Group__8
;
finally {
	restoreStackSize(stackSize);
}

rule__FieldSpecification__Group__7__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFieldSpecificationAccess().getHeightKeyword_7()); }

	'height' 

{ after(grammarAccess.getFieldSpecificationAccess().getHeightKeyword_7()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__FieldSpecification__Group__8
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__FieldSpecification__Group__8__Impl
	rule__FieldSpecification__Group__9
;
finally {
	restoreStackSize(stackSize);
}

rule__FieldSpecification__Group__8__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFieldSpecificationAccess().getEqualsSignKeyword_8()); }

	'=' 

{ after(grammarAccess.getFieldSpecificationAccess().getEqualsSignKeyword_8()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__FieldSpecification__Group__9
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__FieldSpecification__Group__9__Impl
	rule__FieldSpecification__Group__10
;
finally {
	restoreStackSize(stackSize);
}

rule__FieldSpecification__Group__9__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFieldSpecificationAccess().getHeightAssignment_9()); }
(rule__FieldSpecification__HeightAssignment_9)
{ after(grammarAccess.getFieldSpecificationAccess().getHeightAssignment_9()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__FieldSpecification__Group__10
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__FieldSpecification__Group__10__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__FieldSpecification__Group__10__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFieldSpecificationAccess().getRightCurlyBracketKeyword_10()); }

	'}' 

{ after(grammarAccess.getFieldSpecificationAccess().getRightCurlyBracketKeyword_10()); }
)

;
finally {
	restoreStackSize(stackSize);
}
























rule__CellSpecification__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CellSpecification__Group__0__Impl
	rule__CellSpecification__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__CellSpecification__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCellSpecificationAccess().getCell_typeKeyword_0()); }

	'cell_type' 

{ after(grammarAccess.getCellSpecificationAccess().getCell_typeKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CellSpecification__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CellSpecification__Group__1__Impl
	rule__CellSpecification__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__CellSpecification__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCellSpecificationAccess().getNameAssignment_1()); }
(rule__CellSpecification__NameAssignment_1)
{ after(grammarAccess.getCellSpecificationAccess().getNameAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CellSpecification__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CellSpecification__Group__2__Impl
	rule__CellSpecification__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__CellSpecification__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCellSpecificationAccess().getLeftCurlyBracketKeyword_2()); }

	'{' 

{ after(grammarAccess.getCellSpecificationAccess().getLeftCurlyBracketKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__CellSpecification__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__CellSpecification__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__CellSpecification__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCellSpecificationAccess().getRightCurlyBracketKeyword_3()); }

	'}' 

{ after(grammarAccess.getCellSpecificationAccess().getRightCurlyBracketKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__AllowRestartMenu__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AllowRestartMenu__Group__0__Impl
	rule__AllowRestartMenu__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AllowRestartMenu__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAllowRestartMenuAccess().getAllow_restartKeyword_0()); }

	'allow_restart' 

{ after(grammarAccess.getAllowRestartMenuAccess().getAllow_restartKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__AllowRestartMenu__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__AllowRestartMenu__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AllowRestartMenu__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAllowRestartMenuAccess().getAllowRestartMenuAction_1()); }
(

)
{ after(grammarAccess.getAllowRestartMenuAccess().getAllowRestartMenuAction_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__StartFieldDeclaration__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__StartFieldDeclaration__Group__0__Impl
	rule__StartFieldDeclaration__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__StartFieldDeclaration__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStartFieldDeclarationAccess().getStartKeyword_0()); }

	'start' 

{ after(grammarAccess.getStartFieldDeclarationAccess().getStartKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__StartFieldDeclaration__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__StartFieldDeclaration__Group__1__Impl
	rule__StartFieldDeclaration__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__StartFieldDeclaration__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStartFieldDeclarationAccess().getEqualsSignKeyword_1()); }

	'=' 

{ after(grammarAccess.getStartFieldDeclarationAccess().getEqualsSignKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__StartFieldDeclaration__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__StartFieldDeclaration__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__StartFieldDeclaration__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStartFieldDeclarationAccess().getField_nameAssignment_2()); }
(rule__StartFieldDeclaration__Field_nameAssignment_2)
{ after(grammarAccess.getStartFieldDeclarationAccess().getField_nameAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}









rule__GridGame__NameAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGridGameAccess().getNameIDTerminalRuleCall_1_0()); }
	RULE_ID{ after(grammarAccess.getGridGameAccess().getNameIDTerminalRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GridGame__FieldsAssignment_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGridGameAccess().getFieldsFieldSpecificationParserRuleCall_3_0()); }
	ruleFieldSpecification{ after(grammarAccess.getGridGameAccess().getFieldsFieldSpecificationParserRuleCall_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GridGame__CellsAssignment_4
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGridGameAccess().getCellsCellSpecificationParserRuleCall_4_0()); }
	ruleCellSpecification{ after(grammarAccess.getGridGameAccess().getCellsCellSpecificationParserRuleCall_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GridGame__Field_initialisationAssignment_5
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGridGameAccess().getField_initialisationFieldInitialisationSpecificationParserRuleCall_5_0()); }
	ruleFieldInitialisationSpecification{ after(grammarAccess.getGridGameAccess().getField_initialisationFieldInitialisationSpecificationParserRuleCall_5_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__GridGame__OptionsAssignment_6
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGridGameAccess().getOptionsOptionSpecificationParserRuleCall_6_0()); }
	ruleOptionSpecification{ after(grammarAccess.getGridGameAccess().getOptionsOptionSpecificationParserRuleCall_6_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__FieldSpecification__NameAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFieldSpecificationAccess().getNameIDTerminalRuleCall_1_0()); }
	RULE_ID{ after(grammarAccess.getFieldSpecificationAccess().getNameIDTerminalRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__FieldSpecification__WidthAssignment_5
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFieldSpecificationAccess().getWidthINTTerminalRuleCall_5_0()); }
	RULE_INT{ after(grammarAccess.getFieldSpecificationAccess().getWidthINTTerminalRuleCall_5_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__FieldSpecification__HeightAssignment_9
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFieldSpecificationAccess().getHeightINTTerminalRuleCall_9_0()); }
	RULE_INT{ after(grammarAccess.getFieldSpecificationAccess().getHeightINTTerminalRuleCall_9_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__CellSpecification__NameAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getCellSpecificationAccess().getNameIDTerminalRuleCall_1_0()); }
	RULE_ID{ after(grammarAccess.getCellSpecificationAccess().getNameIDTerminalRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__StartFieldDeclaration__Field_nameAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStartFieldDeclarationAccess().getField_nameIDTerminalRuleCall_2_0()); }
	RULE_ID{ after(grammarAccess.getStartFieldDeclarationAccess().getField_nameIDTerminalRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;


