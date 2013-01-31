/*
 * jalak - plugin app poc
 *
 * Copyright (c) 2013, Dhi Aurrahman <dio@rockybars.com>
 * All rights reserved. Released under the MIT license.
 */

public class Core : Peas.ExtensionBase, Jalak.Plugin{

 	private void * context;

 	public void init(void * ctx){
 		context = ctx;
 		stdout.printf("core init \n");
 	}
 	 	
 	public void destroy(){
 		stdout.printf("core init \n");
 	}

 }

[ModuleInit]
public void peas_register_types(GLib.TypeModule module)
{
	var objmodule = module as Peas.ObjectModule;
	objmodule.register_extension_type(typeof (Jalak.Plugin), typeof (Core));
}