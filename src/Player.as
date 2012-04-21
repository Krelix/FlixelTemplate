package  
{
	import org.flixel.*;
	
	/**
	 * Player class.
	 * @author Krelix
	 */
	public class Player extends FlxSprite 
	{
		private var _x:uint;
		private var _y:uint;
		
		public function Player() 
		{
			_x = 10;
			_y = 20;
			super(10, 10);
			pixels = FlxG.createBitmap(_x, _y, 0xFFFFAAAA);
			maxVelocity.x = 80;
			maxVelocity.y = 200;
			acceleration.y = 200;
			drag.x = maxVelocity.x * 4;
		}
		
		override public function update():void 
		{
			super.update();
			acceleration.x = 0;
			if(FlxG.keys.LEFT)
				acceleration.x = -maxVelocity.x*4;
			if(FlxG.keys.RIGHT)
				acceleration.x = maxVelocity.x*4;
			if(FlxG.keys.SPACE && isTouching(FlxObject.FLOOR))
				velocity.y = -maxVelocity.y/2;
		}
		
	}

}