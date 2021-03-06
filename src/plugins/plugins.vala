/*
 * jalak - webkit-javascriptcore playground
 *
 * Copyright (c) 2013, Dhi Aurrahman <dio@rockybars.com>
 * All rights reserved. Released under the MIT license.
 */

namespace Jalak{

	public class Plugins : GLib.Object{

		private Peas.Engine engine;
		private Peas.ExtensionSet exten_set;
		private void * context;

		public Plugins(void * ctx){
			init(ctx);
		}

		private void init(void * ctx){
			engine = Peas.Engine.get_default();
			add_default_search_paths();
			exten_set = new Peas.ExtensionSet(engine, typeof (Plugin));
			exten_set.extension_added.connect(on_extension_added);
			exten_set.extension_removed.connect(on_extension_removed);

			context = ctx;
		}

		public bool load(string name)
		{
			var plugin_info = engine.get_plugin_info(name);

			if (plugin_info == null) {
				warning(@"Plugin $name not found");
				return false;
			}

			return engine.try_load_plugin(plugin_info);
		}

		public bool unload(string name)
		{
			var plugin_info = engine.get_plugin_info(name);

			if (plugin_info == null) {
				warning(@"Plugin $name not found");
				return false;
			}

			return engine.try_unload_plugin(plugin_info);
		}

		private void on_extension_added(Peas.ExtensionSet extension_set, Peas.PluginInfo info, GLib.Object exten) {
			var plugin = exten as Plugin;
			try {
				plugin.init(context);
			} catch (Error e) {
				warning(e.message);
			}
		}

		private void on_extension_removed(Peas.ExtensionSet extension_set, Peas.PluginInfo info, GLib.Object exten) {
			var plugin = exten as Plugin;
			stdout.printf("%s removed\n", info.get_module_name()); 
		}

		private void add_default_search_paths()
		{
			engine.add_search_path(Config.PLUGINDIR, null);
			engine.add_search_path("./plugins", null);
		}

	}

	public interface Plugin : Peas.ExtensionBase{
		/**
		 * Initialize the plugin, this is called immediately after
		 * loading the plugin
		 */
		public abstract void init(void * ctx) throws Error;

		/**
		 * Destroy the plugin
		 */
		public abstract void destroy() throws Error;
	}
}
