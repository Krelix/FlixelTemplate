package  
{
	import org.flixel.*;
	import org.flixel.system.FlxTile;
	
	/**
	 * The game state, where the player is actually gonna play !
	 * @author Krelix
	 */
	public class PlayState extends FlxState
	{
		[Embed(source="../resources/mapCSV_Group1_Map1.csv", mimeType="application/octet-stream")] public var csv_level1:Class;
		[Embed(source="../resources/allTiles2.png")] public var allTilesPNG:Class;
		private var level:FlxTilemap;
		private var player:Player;
		private var camera:FlxCamera;
		
		public function PlayState() 
		{
			player = new Player();
			level = new FlxTilemap();
		}
		
		override public function create():void
		{
			level.loadMap(new csv_level1, allTilesPNG, 16, 16, 0, 0, 1, 5);
			add(level);
			add(player);
			FlxG.worldBounds = new FlxRect(0, 0, level.width, level.height);
			FlxG.camera.setBounds(0, 0, level.width, level.height);
			FlxG.camera.follow(player, FlxCamera.STYLE_PLATFORMER);
		}
		
		override public function update():void 
		{
			super.update();
			player.update();
			FlxG.collide(level, player);
			if (FlxG.keys.ESCAPE)
				FlxG.switchState(new PlayState());
		}
	}
}