package  
{
	import org.flixel.*;
	/**
	 * The starting state, show the game mennu with a big start button and no title.
	 * @author Krelix
	 */
	public class MenuState extends FlxState
	{
		private var startButton:FlxButton;
		private var gameTitle:FlxText;
		
		public function MenuState() 
		{
		}
		
		override public function create():void
		{
			FlxG.mouse.show();
			
			// Creating a new title for the game.
			gameTitle = new FlxText(0, 0, 100, "Placeholder Title");
			// Centering it (because it look better)
			gameTitle.x = FlxG.width / 2 - gameTitle.width / 2;
			gameTitle.y = 10;
			
			// Creating the start button
			// (to start the actual game, because the title screen isn't everything)
			startButton = new FlxButton(0, 0, "Start Game", startGame);
			startButton.x = FlxG.width / 2 - startButton.width / 2;
			startButton.y = FlxG.height / 2 - startButton.height / 2;
			add(startButton);
			add(gameTitle);
		}
		
		private function startGame():void
		{
			FlxG.mouse.hide();
			FlxG.switchState(new PlayState);
		}
	}
}