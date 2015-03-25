package uk.ac.kcl.inf.zschaler.gridgames.generator

import uk.ac.kcl.inf.zschaler.gridgames.gridGame.CellSpecification
import uk.ac.kcl.inf.zschaler.gridgames.gridGame.GridGame

/**
 * Common generator bits.
 */
class CommonGenerator {
	protected val GridGame gg;

	new(GridGame gg) {
		this.gg = gg
	}

	def generateViewPackage() '''«gg.name».view'''

	def generateViewPackageFolder() '''«gg.name»/view'''

	def generateModelPackage() '''«gg.name».model'''

	def generateModelPackageFolder() '''«gg.name»/model'''

	def generateCellPackage() '''«generateModelPackage()».cells'''

	def generateCellPackageFolder() '''«generateModelPackageFolder()»/cells'''

	def generateFrameClassName() '''«gg.name.toFirstUpper»Frame'''

	def generateFieldClassName() '''«gg.name.toFirstUpper»Field'''

	def generateFieldClassFileName() '''«generateModelPackageFolder»/«generateFieldClassName()».java'''

	def generateCellClassFileName() '''«generateCellPackageFolder»/Cell.java'''

	def generateCellClassFileName(CellSpecification c) '''«generateCellPackageFolder»/«c.name.toFirstUpper»Cell.java'''

	def generateFrameClassFileName() '''«generateViewPackageFolder»/«generateFrameClassName()».java'''
}