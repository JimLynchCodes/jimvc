package com.controllers
{
	import com.models.Model;
	import com.utils.LoadingSprite;
	
	import flash.display.Sprite;
	
	
	public class Singleton extends Sprite
	{
		private static var instance:Singleton;
		private static var allowInstantiation:Boolean;
		
		public function Singleton()
		{
			if (!allowInstantiation) {
				throw new Error("Error: Instantiation failed: Use SharedObjectManager.getInstance() instead of new.");
			} else {
				init();
			}
			
		}
		
		
		public static function getInstance():Singleton {
			if (instance == null) {
				allowInstantiation = true;
				
				instance = new Singleton();
				
				allowInstantiation = false;
			}
			return instance;
		}

		
		private function init():void
		{
			trace("Helper Class Initialized.");
			assignVars();
			addListeners();
		}
		
			// encapsulate logic / calculations for other classes in public functions
		public static function helpOut():void
		{
			Model.someInteger = 5;
		}
		
		
		private function assignVars():void
		{
			
				
		}
		
		
		private function addListeners():void
		{
			
			
		}
		
		
	}	
}