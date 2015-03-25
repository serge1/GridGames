/*
 * generated by Xtext
 */
grammar InternalGridGame;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package uk.ac.kcl.inf.zschaler.gridgames.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package uk.ac.kcl.inf.zschaler.gridgames.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import uk.ac.kcl.inf.zschaler.gridgames.services.GridGameGrammarAccess;

}

@parser::members {

 	private GridGameGrammarAccess grammarAccess;
 	
    public InternalGridGameParser(TokenStream input, GridGameGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "GridGame";	
   	}
   	
   	@Override
   	protected GridGameGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRuleGridGame
entryRuleGridGame returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getGridGameRule()); }
	 iv_ruleGridGame=ruleGridGame 
	 { $current=$iv_ruleGridGame.current; } 
	 EOF 
;

// Rule GridGame
ruleGridGame returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='game' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getGridGameAccess().getGameKeyword_0());
    }
(
(
		lv_name_1_0=RULE_ID
		{
			newLeafNode(lv_name_1_0, grammarAccess.getGridGameAccess().getNameIDTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getGridGameRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"ID");
	    }

)
)	otherlv_2='{' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getGridGameAccess().getLeftCurlyBracketKeyword_2());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getGridGameAccess().getCellsCellSpecificationParserRuleCall_3_0()); 
	    }
		lv_cells_3_0=ruleCellSpecification		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getGridGameRule());
	        }
       		add(
       			$current, 
       			"cells",
        		lv_cells_3_0, 
        		"CellSpecification");
	        afterParserOrEnumRuleCall();
	    }

)
)+(
(
		{ 
	        newCompositeNode(grammarAccess.getGridGameAccess().getFieldsFieldSpecificationParserRuleCall_4_0()); 
	    }
		lv_fields_4_0=ruleFieldSpecification		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getGridGameRule());
	        }
       		add(
       			$current, 
       			"fields",
        		lv_fields_4_0, 
        		"FieldSpecification");
	        afterParserOrEnumRuleCall();
	    }

)
)+(
(
		{ 
	        newCompositeNode(grammarAccess.getGridGameAccess().getOptionsOptionSpecificationParserRuleCall_5_0()); 
	    }
		lv_options_5_0=ruleOptionSpecification		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getGridGameRule());
	        }
       		add(
       			$current, 
       			"options",
        		lv_options_5_0, 
        		"OptionSpecification");
	        afterParserOrEnumRuleCall();
	    }

)
)*	otherlv_6='}' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getGridGameAccess().getRightCurlyBracketKeyword_6());
    }
)
;





// Entry rule entryRuleCellSpecification
entryRuleCellSpecification returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getCellSpecificationRule()); }
	 iv_ruleCellSpecification=ruleCellSpecification 
	 { $current=$iv_ruleCellSpecification.current; } 
	 EOF 
;

// Rule CellSpecification
ruleCellSpecification returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='cell_type' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getCellSpecificationAccess().getCell_typeKeyword_0());
    }
(
(
		lv_name_1_0=RULE_ID
		{
			newLeafNode(lv_name_1_0, grammarAccess.getCellSpecificationAccess().getNameIDTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getCellSpecificationRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"ID");
	    }

)
)	otherlv_2='{' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getCellSpecificationAccess().getLeftCurlyBracketKeyword_2());
    }
	otherlv_3='}' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getCellSpecificationAccess().getRightCurlyBracketKeyword_3());
    }
)
;





// Entry rule entryRuleFieldSpecification
entryRuleFieldSpecification returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getFieldSpecificationRule()); }
	 iv_ruleFieldSpecification=ruleFieldSpecification 
	 { $current=$iv_ruleFieldSpecification.current; } 
	 EOF 
;

// Rule FieldSpecification
ruleFieldSpecification returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='field_type' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getFieldSpecificationAccess().getField_typeKeyword_0());
    }
(
(
		lv_name_1_0=RULE_ID
		{
			newLeafNode(lv_name_1_0, grammarAccess.getFieldSpecificationAccess().getNameIDTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getFieldSpecificationRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"ID");
	    }

)
)	otherlv_2='{' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getFieldSpecificationAccess().getLeftCurlyBracketKeyword_2());
    }
	otherlv_3='width' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getFieldSpecificationAccess().getWidthKeyword_3());
    }
	otherlv_4='=' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getFieldSpecificationAccess().getEqualsSignKeyword_4());
    }
(
(
		lv_width_5_0=RULE_INT
		{
			newLeafNode(lv_width_5_0, grammarAccess.getFieldSpecificationAccess().getWidthINTTerminalRuleCall_5_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getFieldSpecificationRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"width",
        		lv_width_5_0, 
        		"INT");
	    }

)
)	otherlv_6='height' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getFieldSpecificationAccess().getHeightKeyword_6());
    }
	otherlv_7='=' 
    {
    	newLeafNode(otherlv_7, grammarAccess.getFieldSpecificationAccess().getEqualsSignKeyword_7());
    }
(
(
		lv_height_8_0=RULE_INT
		{
			newLeafNode(lv_height_8_0, grammarAccess.getFieldSpecificationAccess().getHeightINTTerminalRuleCall_8_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getFieldSpecificationRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"height",
        		lv_height_8_0, 
        		"INT");
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getFieldSpecificationAccess().getField_initialisationFieldInitialisationsParserRuleCall_9_0()); 
	    }
		lv_field_initialisation_9_0=ruleFieldInitialisations		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getFieldSpecificationRule());
	        }
       		set(
       			$current, 
       			"field_initialisation",
        		lv_field_initialisation_9_0, 
        		"FieldInitialisations");
	        afterParserOrEnumRuleCall();
	    }

)
)?	otherlv_10='}' 
    {
    	newLeafNode(otherlv_10, grammarAccess.getFieldSpecificationAccess().getRightCurlyBracketKeyword_10());
    }
)
;





// Entry rule entryRuleOptionSpecification
entryRuleOptionSpecification returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getOptionSpecificationRule()); }
	 iv_ruleOptionSpecification=ruleOptionSpecification 
	 { $current=$iv_ruleOptionSpecification.current; } 
	 EOF 
;

// Rule OptionSpecification
ruleOptionSpecification returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getOptionSpecificationAccess().getStartFieldDeclarationParserRuleCall_0()); 
    }
    this_StartFieldDeclaration_0=ruleStartFieldDeclaration
    { 
        $current = $this_StartFieldDeclaration_0.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getOptionSpecificationAccess().getAllowRestartMenuParserRuleCall_1()); 
    }
    this_AllowRestartMenu_1=ruleAllowRestartMenu
    { 
        $current = $this_AllowRestartMenu_1.current; 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRuleAllowRestartMenu
entryRuleAllowRestartMenu returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getAllowRestartMenuRule()); }
	 iv_ruleAllowRestartMenu=ruleAllowRestartMenu 
	 { $current=$iv_ruleAllowRestartMenu.current; } 
	 EOF 
;

// Rule AllowRestartMenu
ruleAllowRestartMenu returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='allow_restart' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getAllowRestartMenuAccess().getAllow_restartKeyword_0());
    }
(
    {
        $current = forceCreateModelElement(
            grammarAccess.getAllowRestartMenuAccess().getAllowRestartMenuAction_1(),
            $current);
    }
))
;





// Entry rule entryRuleStartFieldDeclaration
entryRuleStartFieldDeclaration returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getStartFieldDeclarationRule()); }
	 iv_ruleStartFieldDeclaration=ruleStartFieldDeclaration 
	 { $current=$iv_ruleStartFieldDeclaration.current; } 
	 EOF 
;

// Rule StartFieldDeclaration
ruleStartFieldDeclaration returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='start' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getStartFieldDeclarationAccess().getStartKeyword_0());
    }
	otherlv_1='=' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getStartFieldDeclarationAccess().getEqualsSignKeyword_1());
    }
(
(
		lv_field_name_2_0=RULE_ID
		{
			newLeafNode(lv_field_name_2_0, grammarAccess.getStartFieldDeclarationAccess().getField_nameIDTerminalRuleCall_2_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getStartFieldDeclarationRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"field_name",
        		lv_field_name_2_0, 
        		"ID");
	    }

)
))
;





// Entry rule entryRuleFieldInitialisations
entryRuleFieldInitialisations returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getFieldInitialisationsRule()); }
	 iv_ruleFieldInitialisations=ruleFieldInitialisations 
	 { $current=$iv_ruleFieldInitialisations.current; } 
	 EOF 
;

// Rule FieldInitialisations
ruleFieldInitialisations returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='init' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getFieldInitialisationsAccess().getInitKeyword_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getFieldInitialisationsAccess().getInitialisationsFieldInitialisationParserRuleCall_1_0()); 
	    }
		lv_initialisations_1_0=ruleFieldInitialisation		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getFieldInitialisationsRule());
	        }
       		add(
       			$current, 
       			"initialisations",
        		lv_initialisations_1_0, 
        		"FieldInitialisation");
	        afterParserOrEnumRuleCall();
	    }

)
)+)
;





// Entry rule entryRuleFieldInitialisation
entryRuleFieldInitialisation returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getFieldInitialisationRule()); }
	 iv_ruleFieldInitialisation=ruleFieldInitialisation 
	 { $current=$iv_ruleFieldInitialisation.current; } 
	 EOF 
;

// Rule FieldInitialisation
ruleFieldInitialisation returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getFieldInitialisationAccess().getDefaultInitialisationParserRuleCall_0()); 
    }
    this_DefaultInitialisation_0=ruleDefaultInitialisation
    { 
        $current = $this_DefaultInitialisation_0.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getFieldInitialisationAccess().getRandomInitialisationParserRuleCall_1()); 
    }
    this_RandomInitialisation_1=ruleRandomInitialisation
    { 
        $current = $this_RandomInitialisation_1.current; 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRuleDefaultInitialisation
entryRuleDefaultInitialisation returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getDefaultInitialisationRule()); }
	 iv_ruleDefaultInitialisation=ruleDefaultInitialisation 
	 { $current=$iv_ruleDefaultInitialisation.current; } 
	 EOF 
;

// Rule DefaultInitialisation
ruleDefaultInitialisation returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='default' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getDefaultInitialisationAccess().getDefaultKeyword_0());
    }
	otherlv_1=':' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getDefaultInitialisationAccess().getColonKeyword_1());
    }
(
(
		lv_cell_2_0=RULE_ID
		{
			newLeafNode(lv_cell_2_0, grammarAccess.getDefaultInitialisationAccess().getCellIDTerminalRuleCall_2_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getDefaultInitialisationRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"cell",
        		lv_cell_2_0, 
        		"ID");
	    }

)
))
;





// Entry rule entryRuleRandomInitialisation
entryRuleRandomInitialisation returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getRandomInitialisationRule()); }
	 iv_ruleRandomInitialisation=ruleRandomInitialisation 
	 { $current=$iv_ruleRandomInitialisation.current; } 
	 EOF 
;

// Rule RandomInitialisation
ruleRandomInitialisation returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='random' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getRandomInitialisationAccess().getRandomKeyword_0());
    }
	otherlv_1=':' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getRandomInitialisationAccess().getColonKeyword_1());
    }
(
(
		lv_cell_2_0=RULE_ID
		{
			newLeafNode(lv_cell_2_0, grammarAccess.getRandomInitialisationAccess().getCellIDTerminalRuleCall_2_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getRandomInitialisationRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"cell",
        		lv_cell_2_0, 
        		"ID");
	    }

)
)	otherlv_3='=' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getRandomInitialisationAccess().getEqualsSignKeyword_3());
    }
(
(
		lv_count_4_0=RULE_INT
		{
			newLeafNode(lv_count_4_0, grammarAccess.getRandomInitialisationAccess().getCountINTTerminalRuleCall_4_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getRandomInitialisationRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"count",
        		lv_count_4_0, 
        		"INT");
	    }

)
))
;





RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;


