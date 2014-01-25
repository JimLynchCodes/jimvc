package com.views
{
	import com.Main;
	
	import flash.display.Sprite;
	import flash.events.Event;
	
	
	public class Lobby extends Sprite implements IView
	{
		private var _main:Main;
		
		
		public function Lobby(main:Main)
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
			// instantiante assets here
			
		}
		
		
		private function addListeners():void
		{
			// add listeners here			

		}
		
		public function update():void
		{
			
		}
		
		public function destroy():void
		{

		}
		
		
	}
}