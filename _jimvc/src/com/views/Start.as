package com.views
{
	import com.Main;
	
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	
	
	public class Start extends Sprite implements IView
	{
		private var _main:Main;
		
		
		public function Start(main:Main)
		{
			_main = main;
			addEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
		}
		
		private function addedToStageHandler(event:Event):void
		{
			trace("Main view added to stage.");
			init();
		}
		
		private function init():void
		{
			
			assignVars();
			addListeners();
			
			trace("Main View Initialized.");
			
			
		}
		
		
		private function assignVars():void
		{
			// assign graphics to variables / create display here.
		}
		
		private function addListeners():void
		{
			// add click / input listeners here.		

		}
		
			
		public function update():void
		{
			// this function is called every frame in Main (when current state is at Start).
		}
		
		public function destroy():void
		{
			// called from Main when current state changes FROM Start to something else.
		}
		
		
	}
}