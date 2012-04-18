package  
{
	import org.flixel.*;
	
	/**
	 * The game state, where the player is actually gonna play !
	 * @author Krelix
	 */
	public class PlayState extends FlxState
	{
		
		public function PlayState() 
		{
		}
		
		override public function create():void
		{
			add(new FlxSprite);
		}
	}
}