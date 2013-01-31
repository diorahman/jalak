/*
 * jalak - webkit-javascriptcore playground
 *
 * Copyright (c) 2013, Dhi Aurrahman <dio@rockybars.com>
 * All rights reserved. Released under the MIT license.
 */

namespace Jalak{

	namespace App{

		internal void init(void * ctx){
			var app = new JS.App(ctx, new Jalak.Plugins(ctx), "App");

			// load plugins from config
			// app.loadFromConfig(config);
		}
	}
}