/**
 */
package uk.ac.kcl.inf.zschaler.gridgames.gridGame.impl;

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

import org.eclipse.emf.ecore.impl.EPackageImpl;

import uk.ac.kcl.inf.zschaler.gridgames.gridGame.AllowRestartMenu;
import uk.ac.kcl.inf.zschaler.gridgames.gridGame.CellSpecification;
import uk.ac.kcl.inf.zschaler.gridgames.gridGame.FieldSpecification;
import uk.ac.kcl.inf.zschaler.gridgames.gridGame.GridGame;
import uk.ac.kcl.inf.zschaler.gridgames.gridGame.GridGameFactory;
import uk.ac.kcl.inf.zschaler.gridgames.gridGame.GridGamePackage;
import uk.ac.kcl.inf.zschaler.gridgames.gridGame.OptionSpecification;
import uk.ac.kcl.inf.zschaler.gridgames.gridGame.StartFieldDeclaration;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Package</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class GridGamePackageImpl extends EPackageImpl implements GridGamePackage
{
  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass gridGameEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass fieldSpecificationEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass cellSpecificationEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass optionSpecificationEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass allowRestartMenuEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass startFieldDeclarationEClass = null;

  /**
   * Creates an instance of the model <b>Package</b>, registered with
   * {@link org.eclipse.emf.ecore.EPackage.Registry EPackage.Registry} by the package
   * package URI value.
   * <p>Note: the correct way to create the package is via the static
   * factory method {@link #init init()}, which also performs
   * initialization of the package, or returns the registered package,
   * if one already exists.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.eclipse.emf.ecore.EPackage.Registry
   * @see uk.ac.kcl.inf.zschaler.gridgames.gridGame.GridGamePackage#eNS_URI
   * @see #init()
   * @generated
   */
  private GridGamePackageImpl()
  {
    super(eNS_URI, GridGameFactory.eINSTANCE);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private static boolean isInited = false;

  /**
   * Creates, registers, and initializes the <b>Package</b> for this model, and for any others upon which it depends.
   * 
   * <p>This method is used to initialize {@link GridGamePackage#eINSTANCE} when that field is accessed.
   * Clients should not invoke it directly. Instead, they should simply access that field to obtain the package.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #eNS_URI
   * @see #createPackageContents()
   * @see #initializePackageContents()
   * @generated
   */
  public static GridGamePackage init()
  {
    if (isInited) return (GridGamePackage)EPackage.Registry.INSTANCE.getEPackage(GridGamePackage.eNS_URI);

    // Obtain or create and register package
    GridGamePackageImpl theGridGamePackage = (GridGamePackageImpl)(EPackage.Registry.INSTANCE.get(eNS_URI) instanceof GridGamePackageImpl ? EPackage.Registry.INSTANCE.get(eNS_URI) : new GridGamePackageImpl());

    isInited = true;

    // Create package meta-data objects
    theGridGamePackage.createPackageContents();

    // Initialize created meta-data
    theGridGamePackage.initializePackageContents();

    // Mark meta-data to indicate it can't be changed
    theGridGamePackage.freeze();

  
    // Update the registry and return the package
    EPackage.Registry.INSTANCE.put(GridGamePackage.eNS_URI, theGridGamePackage);
    return theGridGamePackage;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getGridGame()
  {
    return gridGameEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getGridGame_Name()
  {
    return (EAttribute)gridGameEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getGridGame_Fields()
  {
    return (EReference)gridGameEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getGridGame_Cells()
  {
    return (EReference)gridGameEClass.getEStructuralFeatures().get(2);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getGridGame_Field_initialisation()
  {
    return (EAttribute)gridGameEClass.getEStructuralFeatures().get(3);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EReference getGridGame_Options()
  {
    return (EReference)gridGameEClass.getEStructuralFeatures().get(4);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getFieldSpecification()
  {
    return fieldSpecificationEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getFieldSpecification_Name()
  {
    return (EAttribute)fieldSpecificationEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getFieldSpecification_Width()
  {
    return (EAttribute)fieldSpecificationEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getFieldSpecification_Height()
  {
    return (EAttribute)fieldSpecificationEClass.getEStructuralFeatures().get(2);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getCellSpecification()
  {
    return cellSpecificationEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getCellSpecification_Name()
  {
    return (EAttribute)cellSpecificationEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getOptionSpecification()
  {
    return optionSpecificationEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getAllowRestartMenu()
  {
    return allowRestartMenuEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EClass getStartFieldDeclaration()
  {
    return startFieldDeclarationEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public EAttribute getStartFieldDeclaration_Field_name()
  {
    return (EAttribute)startFieldDeclarationEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public GridGameFactory getGridGameFactory()
  {
    return (GridGameFactory)getEFactoryInstance();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private boolean isCreated = false;

  /**
   * Creates the meta-model objects for the package.  This method is
   * guarded to have no affect on any invocation but its first.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void createPackageContents()
  {
    if (isCreated) return;
    isCreated = true;

    // Create classes and their features
    gridGameEClass = createEClass(GRID_GAME);
    createEAttribute(gridGameEClass, GRID_GAME__NAME);
    createEReference(gridGameEClass, GRID_GAME__FIELDS);
    createEReference(gridGameEClass, GRID_GAME__CELLS);
    createEAttribute(gridGameEClass, GRID_GAME__FIELD_INITIALISATION);
    createEReference(gridGameEClass, GRID_GAME__OPTIONS);

    fieldSpecificationEClass = createEClass(FIELD_SPECIFICATION);
    createEAttribute(fieldSpecificationEClass, FIELD_SPECIFICATION__NAME);
    createEAttribute(fieldSpecificationEClass, FIELD_SPECIFICATION__WIDTH);
    createEAttribute(fieldSpecificationEClass, FIELD_SPECIFICATION__HEIGHT);

    cellSpecificationEClass = createEClass(CELL_SPECIFICATION);
    createEAttribute(cellSpecificationEClass, CELL_SPECIFICATION__NAME);

    optionSpecificationEClass = createEClass(OPTION_SPECIFICATION);

    allowRestartMenuEClass = createEClass(ALLOW_RESTART_MENU);

    startFieldDeclarationEClass = createEClass(START_FIELD_DECLARATION);
    createEAttribute(startFieldDeclarationEClass, START_FIELD_DECLARATION__FIELD_NAME);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private boolean isInitialized = false;

  /**
   * Complete the initialization of the package and its meta-model.  This
   * method is guarded to have no affect on any invocation but its first.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void initializePackageContents()
  {
    if (isInitialized) return;
    isInitialized = true;

    // Initialize package
    setName(eNAME);
    setNsPrefix(eNS_PREFIX);
    setNsURI(eNS_URI);

    // Create type parameters

    // Set bounds for type parameters

    // Add supertypes to classes
    allowRestartMenuEClass.getESuperTypes().add(this.getOptionSpecification());
    startFieldDeclarationEClass.getESuperTypes().add(this.getOptionSpecification());

    // Initialize classes and features; add operations and parameters
    initEClass(gridGameEClass, GridGame.class, "GridGame", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getGridGame_Name(), ecorePackage.getEString(), "name", null, 0, 1, GridGame.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getGridGame_Fields(), this.getFieldSpecification(), null, "fields", null, 0, -1, GridGame.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getGridGame_Cells(), this.getCellSpecification(), null, "cells", null, 0, -1, GridGame.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getGridGame_Field_initialisation(), ecorePackage.getEString(), "field_initialisation", null, 0, 1, GridGame.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEReference(getGridGame_Options(), this.getOptionSpecification(), null, "options", null, 0, -1, GridGame.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(fieldSpecificationEClass, FieldSpecification.class, "FieldSpecification", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getFieldSpecification_Name(), ecorePackage.getEString(), "name", null, 0, 1, FieldSpecification.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getFieldSpecification_Width(), ecorePackage.getEInt(), "width", null, 0, 1, FieldSpecification.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getFieldSpecification_Height(), ecorePackage.getEInt(), "height", null, 0, 1, FieldSpecification.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(cellSpecificationEClass, CellSpecification.class, "CellSpecification", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getCellSpecification_Name(), ecorePackage.getEString(), "name", null, 0, 1, CellSpecification.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(optionSpecificationEClass, OptionSpecification.class, "OptionSpecification", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);

    initEClass(allowRestartMenuEClass, AllowRestartMenu.class, "AllowRestartMenu", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);

    initEClass(startFieldDeclarationEClass, StartFieldDeclaration.class, "StartFieldDeclaration", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getStartFieldDeclaration_Field_name(), ecorePackage.getEString(), "field_name", null, 0, 1, StartFieldDeclaration.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    // Create resource
    createResource(eNS_URI);
  }

} //GridGamePackageImpl
