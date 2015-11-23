/**
 */
package uk.ac.kcl.inf.zschaler.gridgames.gridGame;

import org.eclipse.emf.common.util.EList;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Cell State Spec Reference</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link uk.ac.kcl.inf.zschaler.gridgames.gridGame.CellStateSpecReference#getStateSpec <em>State Spec</em>}</li>
 *   <li>{@link uk.ac.kcl.inf.zschaler.gridgames.gridGame.CellStateSpecReference#getParams <em>Params</em>}</li>
 * </ul>
 *
 * @see uk.ac.kcl.inf.zschaler.gridgames.gridGame.GridGamePackage#getCellStateSpecReference()
 * @model
 * @generated
 */
public interface CellStateSpecReference extends CellStateSpec
{
  /**
   * Returns the value of the '<em><b>State Spec</b></em>' reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>State Spec</em>' reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>State Spec</em>' reference.
   * @see #setStateSpec(GlobalCellStateSpec)
   * @see uk.ac.kcl.inf.zschaler.gridgames.gridGame.GridGamePackage#getCellStateSpecReference_StateSpec()
   * @model
   * @generated
   */
  GlobalCellStateSpec getStateSpec();

  /**
   * Sets the value of the '{@link uk.ac.kcl.inf.zschaler.gridgames.gridGame.CellStateSpecReference#getStateSpec <em>State Spec</em>}' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>State Spec</em>' reference.
   * @see #getStateSpec()
   * @generated
   */
  void setStateSpec(GlobalCellStateSpec value);

  /**
   * Returns the value of the '<em><b>Params</b></em>' containment reference list.
   * The list contents are of type {@link uk.ac.kcl.inf.zschaler.gridgames.gridGame.Value}.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Params</em>' containment reference list isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Params</em>' containment reference list.
   * @see uk.ac.kcl.inf.zschaler.gridgames.gridGame.GridGamePackage#getCellStateSpecReference_Params()
   * @model containment="true"
   * @generated
   */
  EList<Value> getParams();

} // CellStateSpecReference
