package uk.ac.kcl.inf.zschaler.gridgames.generator;

import com.google.common.base.Objects;
import com.google.common.collect.Iterables;
import org.eclipse.emf.common.util.EList;
import org.eclipse.xtend2.lib.StringConcatenation;
import org.eclipse.xtext.generator.IFileSystemAccess;
import org.eclipse.xtext.xbase.lib.Functions.Function1;
import org.eclipse.xtext.xbase.lib.IterableExtensions;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure1;
import org.eclipse.xtext.xbase.lib.StringExtensions;
import uk.ac.kcl.inf.zschaler.gridgames.generator.CommonGenerator;
import uk.ac.kcl.inf.zschaler.gridgames.gridGame.CellDisplaySpec;
import uk.ac.kcl.inf.zschaler.gridgames.gridGame.CellMember;
import uk.ac.kcl.inf.zschaler.gridgames.gridGame.CellSpecification;
import uk.ac.kcl.inf.zschaler.gridgames.gridGame.CellVarSpec;
import uk.ac.kcl.inf.zschaler.gridgames.gridGame.GridGame;

/**
 * Generates all stuff to do with handling cells.
 */
@SuppressWarnings("all")
public class CellGenerator extends CommonGenerator {
  public CellGenerator(final GridGame gg) {
    super(gg);
  }
  
  /**
   * Basic generation routine.
   */
  public void generate(final IFileSystemAccess fsa) {
    StringConcatenation _builder = new StringConcatenation();
    CharSequence _generateCellClassFileName = this.generateCellClassFileName();
    _builder.append(_generateCellClassFileName, "");
    CharSequence _generateCellClass = this.generateCellClass();
    fsa.generateFile(_builder.toString(), _generateCellClass);
    EList<CellSpecification> _cells = this.gg.getCells();
    final Procedure1<CellSpecification> _function = new Procedure1<CellSpecification>() {
      @Override
      public void apply(final CellSpecification c) {
        StringConcatenation _builder = new StringConcatenation();
        CharSequence _generateCellClassFileName = CellGenerator.this.generateCellClassFileName(c);
        _builder.append(_generateCellClassFileName, "");
        CharSequence _generateCellClass = CellGenerator.this.generateCellClass(c);
        fsa.generateFile(_builder.toString(), _generateCellClass);
      }
    };
    IterableExtensions.<CellSpecification>forEach(_cells, _function);
    StringConcatenation _builder_1 = new StringConcatenation();
    CharSequence _generateFactoryClassFileName = this.generateFactoryClassFileName();
    _builder_1.append(_generateFactoryClassFileName, "");
    CharSequence _generateFactory = this.generateFactory();
    fsa.generateFile(_builder_1.toString(), _generateFactory);
  }
  
  /**
   * Generate the basic cell class.
   */
  public CharSequence generateCellClass() {
    StringConcatenation _builder = new StringConcatenation();
    _builder.append("package ");
    CharSequence _generateCellPackage = this.generateCellPackage();
    _builder.append(_generateCellPackage, "");
    _builder.append(";");
    _builder.newLineIfNotEmpty();
    _builder.newLine();
    _builder.append("import javax.swing.JButton;");
    _builder.newLine();
    _builder.append("import javax.swing.JLabel;");
    _builder.newLine();
    _builder.newLine();
    _builder.append("import java.awt.Component;");
    _builder.newLine();
    _builder.newLine();
    _builder.append("public abstract class Cell {");
    _builder.newLine();
    _builder.append("\t");
    _builder.append("public abstract Component formatUIRepresentation(JButton jb, JLabel jl);");
    _builder.newLine();
    _builder.append("\t");
    _builder.newLine();
    _builder.append("\t");
    EList<CellSpecification> _cells = this.gg.getCells();
    final Function1<CellSpecification, CharSequence> _function = new Function1<CellSpecification, CharSequence>() {
      @Override
      public CharSequence apply(final CellSpecification c) {
        StringConcatenation _builder = new StringConcatenation();
        _builder.append("public boolean is");
        String _name = c.getName();
        String _firstUpper = StringExtensions.toFirstUpper(_name);
        _builder.append(_firstUpper, "");
        _builder.append("() { return false; }");
        return _builder.toString();
      }
    };
    String _join = IterableExtensions.<CellSpecification>join(_cells, " ", _function);
    _builder.append(_join, "\t");
    _builder.newLineIfNotEmpty();
    _builder.append("}");
    _builder.newLine();
    return _builder;
  }
  
  /**
   * Generate code for the specified cell specification
   */
  public CharSequence generateCellClass(final CellSpecification c) {
    StringConcatenation _builder = new StringConcatenation();
    _builder.append("package ");
    CharSequence _generateCellPackage = this.generateCellPackage();
    _builder.append(_generateCellPackage, "");
    _builder.append(";");
    _builder.newLineIfNotEmpty();
    _builder.newLine();
    _builder.append("import javax.swing.JButton;");
    _builder.newLine();
    _builder.append("import javax.swing.JLabel;");
    _builder.newLine();
    _builder.newLine();
    _builder.append("import java.awt.Component;");
    _builder.newLine();
    _builder.newLine();
    _builder.append("public class ");
    CharSequence _generateCellClassName = this.generateCellClassName(c);
    _builder.append(_generateCellClassName, "");
    _builder.append(" extends Cell {");
    _builder.newLineIfNotEmpty();
    _builder.append("\t");
    EList<CellMember> _members = c.getMembers();
    Iterable<CellVarSpec> _filter = Iterables.<CellVarSpec>filter(_members, CellVarSpec.class);
    final Function1<CellVarSpec, CharSequence> _function = new Function1<CellVarSpec, CharSequence>() {
      @Override
      public CharSequence apply(final CellVarSpec v) {
        StringConcatenation _builder = new StringConcatenation();
        _builder.append("private ");
        String _type = v.getType();
        _builder.append(_type, "");
        _builder.append(" ");
        String _name = v.getName();
        String _firstLower = StringExtensions.toFirstLower(_name);
        _builder.append(_firstLower, "");
        _builder.append("Variable;");
        return _builder.toString();
      }
    };
    String _join = IterableExtensions.<CellVarSpec>join(_filter, " ", _function);
    _builder.append(_join, "\t");
    _builder.newLineIfNotEmpty();
    _builder.append("\t");
    _builder.newLine();
    _builder.append("\t");
    _builder.append("public ");
    CharSequence _generateCellClassName_1 = this.generateCellClassName(c);
    _builder.append(_generateCellClassName_1, "\t");
    _builder.append("(");
    EList<CellMember> _members_1 = c.getMembers();
    Iterable<CellVarSpec> _filter_1 = Iterables.<CellVarSpec>filter(_members_1, CellVarSpec.class);
    final Function1<CellVarSpec, CharSequence> _function_1 = new Function1<CellVarSpec, CharSequence>() {
      @Override
      public CharSequence apply(final CellVarSpec v) {
        StringConcatenation _builder = new StringConcatenation();
        String _type = v.getType();
        _builder.append(_type, "");
        _builder.append(" ");
        String _name = v.getName();
        String _firstLower = StringExtensions.toFirstLower(_name);
        _builder.append(_firstLower, "");
        return _builder.toString();
      }
    };
    String _join_1 = IterableExtensions.<CellVarSpec>join(_filter_1, ", ", _function_1);
    _builder.append(_join_1, "\t");
    _builder.append(") {");
    _builder.newLineIfNotEmpty();
    _builder.append("\t\t");
    EList<CellMember> _members_2 = c.getMembers();
    Iterable<CellVarSpec> _filter_2 = Iterables.<CellVarSpec>filter(_members_2, CellVarSpec.class);
    final Function1<CellVarSpec, CharSequence> _function_2 = new Function1<CellVarSpec, CharSequence>() {
      @Override
      public CharSequence apply(final CellVarSpec v) {
        StringConcatenation _builder = new StringConcatenation();
        String _name = v.getName();
        String _firstLower = StringExtensions.toFirstLower(_name);
        _builder.append(_firstLower, "");
        _builder.append("Variable = ");
        String _name_1 = v.getName();
        String _firstLower_1 = StringExtensions.toFirstLower(_name_1);
        _builder.append(_firstLower_1, "");
        _builder.append(";");
        return _builder.toString();
      }
    };
    String _join_2 = IterableExtensions.<CellVarSpec>join(_filter_2, "; ", _function_2);
    _builder.append(_join_2, "\t\t");
    _builder.newLineIfNotEmpty();
    _builder.append("\t");
    _builder.append("}");
    _builder.newLine();
    _builder.append("\t");
    _builder.newLine();
    _builder.append("\t");
    _builder.append("@Override");
    _builder.newLine();
    _builder.append("\t");
    _builder.append("public Component formatUIRepresentation(JButton jb, JLabel jl) {");
    _builder.newLine();
    _builder.append("\t\t");
    CharSequence _xifexpression = null;
    EList<CellMember> _members_3 = c.getMembers();
    final Function1<CellMember, Boolean> _function_3 = new Function1<CellMember, Boolean>() {
      @Override
      public Boolean apply(final CellMember m) {
        return Boolean.valueOf((m instanceof CellDisplaySpec));
      }
    };
    boolean _exists = IterableExtensions.<CellMember>exists(_members_3, _function_3);
    if (_exists) {
      CharSequence _xblockexpression = null;
      {
        EList<CellMember> _members_4 = c.getMembers();
        final Function1<CellMember, Boolean> _function_4 = new Function1<CellMember, Boolean>() {
          @Override
          public Boolean apply(final CellMember m) {
            return Boolean.valueOf((m instanceof CellDisplaySpec));
          }
        };
        CellMember _findFirst = IterableExtensions.<CellMember>findFirst(_members_4, _function_4);
        final CellDisplaySpec d = ((CellDisplaySpec) _findFirst);
        CharSequence _xifexpression_1 = null;
        String _display_type = d.getDisplay_type();
        boolean _equals = _display_type.equals("button");
        if (_equals) {
          StringConcatenation _builder_1 = new StringConcatenation();
          _builder_1.append("jb.setText (");
          CharSequence _generateTextCalculation = this.generateTextCalculation(d);
          _builder_1.append(_generateTextCalculation, "");
          _builder_1.append(");");
          _builder_1.newLineIfNotEmpty();
          _builder_1.append("return jb;");
          _builder_1.newLine();
          _xifexpression_1 = _builder_1;
        } else {
          StringConcatenation _builder_2 = new StringConcatenation();
          _builder_2.append("jl.setText (");
          CharSequence _generateTextCalculation_1 = this.generateTextCalculation(d);
          _builder_2.append(_generateTextCalculation_1, "");
          _builder_2.append(");");
          _builder_2.newLineIfNotEmpty();
          _builder_2.append("return jl;");
          _builder_2.newLine();
          _xifexpression_1 = _builder_2;
        }
        _xblockexpression = _xifexpression_1;
      }
      _xifexpression = _xblockexpression;
    } else {
      StringConcatenation _builder_1 = new StringConcatenation();
      _builder_1.append("return jb;");
      _xifexpression = _builder_1;
    }
    _builder.append(_xifexpression, "\t\t");
    _builder.newLineIfNotEmpty();
    _builder.append("\t");
    _builder.append("}");
    _builder.newLine();
    _builder.append("\t");
    _builder.newLine();
    _builder.append("\t");
    _builder.append("@Override");
    _builder.newLine();
    _builder.append("\t");
    _builder.append("public boolean is");
    String _name = c.getName();
    String _firstUpper = StringExtensions.toFirstUpper(_name);
    _builder.append(_firstUpper, "\t");
    _builder.append("() {");
    _builder.newLineIfNotEmpty();
    _builder.append("\t\t");
    _builder.append("return true;");
    _builder.newLine();
    _builder.append("\t");
    _builder.append("}");
    _builder.newLine();
    _builder.append("}");
    _builder.newLine();
    return _builder;
  }
  
  public CharSequence generateTextCalculation(final CellDisplaySpec cds) {
    CharSequence _xifexpression = null;
    String _text = cds.getText();
    boolean _notEquals = (!Objects.equal(_text, null));
    if (_notEquals) {
      StringConcatenation _builder = new StringConcatenation();
      _builder.append("\"");
      String _text_1 = cds.getText();
      _builder.append(_text_1, "");
      _builder.append("\"");
      _xifexpression = _builder;
    } else {
      StringConcatenation _builder_1 = new StringConcatenation();
      _builder_1.append("\"\" + ");
      String _var = cds.getVar();
      _builder_1.append(_var, "");
      _builder_1.append("Variable");
      _xifexpression = _builder_1;
    }
    return _xifexpression;
  }
  
  public CharSequence generateFactory() {
    StringConcatenation _builder = new StringConcatenation();
    _builder.append("package ");
    CharSequence _generateCellPackage = this.generateCellPackage();
    _builder.append(_generateCellPackage, "");
    _builder.append(";");
    _builder.newLineIfNotEmpty();
    _builder.append("\t");
    _builder.newLine();
    _builder.append("public class CellFactory {");
    _builder.newLine();
    _builder.append("\t");
    EList<CellSpecification> _cells = this.gg.getCells();
    final Function1<CellSpecification, CharSequence> _function = new Function1<CellSpecification, CharSequence>() {
      @Override
      public CharSequence apply(final CellSpecification c) {
        return CellGenerator.this.generateFactoryMethod(c);
      }
    };
    String _join = IterableExtensions.<CellSpecification>join(_cells, " ", _function);
    _builder.append(_join, "\t");
    _builder.newLineIfNotEmpty();
    _builder.append("}");
    _builder.newLine();
    return _builder;
  }
  
  public CharSequence generateFactoryMethod(final CellSpecification cs) {
    StringConcatenation _builder = new StringConcatenation();
    _builder.append("public Cell ");
    CharSequence _generateCellFactoryMethodName = this.generateCellFactoryMethodName(cs);
    _builder.append(_generateCellFactoryMethodName, "");
    _builder.append("(");
    EList<CellMember> _members = cs.getMembers();
    Iterable<CellVarSpec> _filter = Iterables.<CellVarSpec>filter(_members, CellVarSpec.class);
    final Function1<CellVarSpec, CharSequence> _function = new Function1<CellVarSpec, CharSequence>() {
      @Override
      public CharSequence apply(final CellVarSpec v) {
        StringConcatenation _builder = new StringConcatenation();
        String _type = v.getType();
        _builder.append(_type, "");
        _builder.append(" ");
        String _name = v.getName();
        _builder.append(_name, "");
        return _builder.toString();
      }
    };
    String _join = IterableExtensions.<CellVarSpec>join(_filter, ", ", _function);
    _builder.append(_join, "");
    _builder.append(") {");
    _builder.newLineIfNotEmpty();
    _builder.append("\t");
    _builder.append("return new ");
    CharSequence _generateCellClassName = this.generateCellClassName(cs);
    _builder.append(_generateCellClassName, "\t");
    _builder.append("(");
    EList<CellMember> _members_1 = cs.getMembers();
    Iterable<CellVarSpec> _filter_1 = Iterables.<CellVarSpec>filter(_members_1, CellVarSpec.class);
    final Function1<CellVarSpec, CharSequence> _function_1 = new Function1<CellVarSpec, CharSequence>() {
      @Override
      public CharSequence apply(final CellVarSpec v) {
        return v.getName();
      }
    };
    String _join_1 = IterableExtensions.<CellVarSpec>join(_filter_1, ", ", _function_1);
    _builder.append(_join_1, "\t");
    _builder.append(");");
    _builder.newLineIfNotEmpty();
    _builder.append("}");
    _builder.newLine();
    return _builder;
  }
}
