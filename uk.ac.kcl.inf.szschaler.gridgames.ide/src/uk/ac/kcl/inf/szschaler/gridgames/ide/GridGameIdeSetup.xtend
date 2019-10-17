/*
 * generated by Xtext 2.18.0.M3
 */
package uk.ac.kcl.inf.szschaler.gridgames.ide

import com.google.inject.Guice
import org.eclipse.xtext.util.Modules2
import uk.ac.kcl.inf.szschaler.gridgames.GridGameRuntimeModule
import uk.ac.kcl.inf.szschaler.gridgames.GridGameStandaloneSetup

/**
 * Initialization support for running Xtext languages as language servers.
 */
class GridGameIdeSetup extends GridGameStandaloneSetup {

	override createInjector() {
		Guice.createInjector(Modules2.mixin(new GridGameRuntimeModule, new GridGameIdeModule))
	}
	
}
