package com
{
	import com.models.Model;
	import com.views.IView;
	import com.views.Lobby;
	import com.views.Play;
	import com.views.Start;
	
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.system.System;
	
	
	public class Main extends Sprite
	{
		
		public static const START_VIEW	              : int = 3;
		public static const LOBBY_VIEW             	  : int = 6;
		public static const PLAY_VIEW	              : int = 9;
		
		public static const TEST_VIEW                 : int = 99;
		
		private var _model:Model;
		private var currentState:IView;
		
		
		public function Main():void
		{
			addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		protected function onAddedToStage(event:Event):void
		{
			init();
		}
		
		private function init():void
		{
			changeState(START_VIEW);
			_addUpdateListener();
		}
		
		public function changeState(state:int):void
		{
			trace("changing game state to: " + state);
			var removed:Boolean = false;
			
			if(currentState != null) 
			{
				_removeUpdateListener();
				currentState.destroy();
				stage.removeChild(Sprite(currentState));
				currentState = null;
				removed = true;	
				
			}
			
			switch(state) 
			{
				case START_VIEW:
					currentState = new Start(this);
					break;
				
				case PLAY_VIEW:
					currentState = new Play(this);
					break;
				
				case LOBBY_VIEW:
					currentState = new Lobby(this);
					break;
				
				case TEST_VIEW:
					break;
			}
			
			stage.addChild(Sprite(currentState));
			
			trace("state is now " + currentState);
			if(removed) {
				// Add update listeners back
				_addUpdateListener();
				removed = false;
			}
			
		}
		
		private function _addUpdateListener():void {
			addEventListener(Event.ENTER_FRAME, update);
		}
		
		private function _removeUpdateListener():void {
			removeEventListener(Event.ENTER_FRAME, update);
		}
		
		private function update(e:Event):void 
		{
			currentState.update();
//			trace("Total mem: " + System.totalMemory / 1024 / 1024);
		}
		
	}
}