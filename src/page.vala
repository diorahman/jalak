/*
 * jalak - webkit-javascriptcore playground
 *
 * Copyright (c) 2013, Dhi Aurrahman <dio@rockybars.com>
 * All rights reserved. Released under the MIT license.
 */

namespace Jalak{

	public class Page : WebKit.WebView {

		public Page(){
			var settings = new WebKit.WebSettings();
		    settings.enable_file_access_from_file_uris = true;
		    settings.enable_universal_access_from_file_uris = true;
		    set_settings(settings);

		    window_object_cleared.connect ((frame, context) => {
		    	App.init(context);
		    });
		}

		public void load(){
			load_uri ("file://" + Config.PUBLICDIR + "/index.html");
		}
	}
}