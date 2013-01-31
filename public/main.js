define(['module'], function (module) {
	'use strict';

	function exec(app){

		var plugins = [{ name : 'foo'}, {name : 'bar'}]

		var foo;

		document.getElementById('load').onclick = function(){ 
			app.loadPlugin(plugins[0], function(err, obj){
				console.log('name: ' + obj.name + ' status: ' + obj.status)
	    		require(['plugins/' + obj.name], function(f){
	    			foo = f
	    			foo.init(function(){})
	    		})
			})
		}
		
		document.getElementById('unload').onclick = function(){ 
			app.unloadPlugin(plugins[0], function(err, obj){
	    		foo.destroy(function(){})
			})

		}
	}

	/*
		TODO
		foo in global context
		OR
		of app.plugin('foo').command('bar', args);

		update js from vala
	*/

	var main = {
		exec : exec
	}

	return main
})