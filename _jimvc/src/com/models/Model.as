package com.models
{
		import flash.events.EventDispatcher;
		
		public class Model extends EventDispatcher
		{
			public static const SOME_CONSTANT:int = 100;
			
			public static var someInteger:int = 0;
			
			public function Model(config:Object)
			{
				init();
			}
			
			
			private function init():void
			{
				trace("Model Initialized");
			}
			
			
			
		}
}