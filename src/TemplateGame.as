package  
{
	import org.flixel.*;
	/**
	 * ...
	 * @author Krelix
	 */
	public class TemplateGame extends FlxGame
	{
		
		public function TemplateGame() 
		{
			// Create a new Game, with the state MenuState.
			// Set the width and height to half of the actual SWF size
			// And the pixel size to 2
			super(320, 240, MenuState, 2);
		}
		
	}

}