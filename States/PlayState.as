package States
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author josh
	 */
	public class PlayState extends FlxState
	{
		private var player:FlxSprite;
		private var playerWidth:int;
		private var playerHeight:int;
		
		override public function create():void
		{
			FlxG.bgColor = 0xffaaaaaa;
			createPlayer();
		}
		
		/*
		 * Set up the player
		 */
		private function createPlayer():void
		{
			var green:int = 0xff00FF00;
			playerWidth = 10;
			playerHeight = 10;
			player = new FlxSprite(50, 50);
			player.makeGraphic(playerWidth, playerHeight, green);
			player.maxVelocity.x = 300;
			player.maxVelocity.y = 300;
			player.drag.x = 300;
			player.drag.y = 300;
			add(player);
		}
		
		/*
		 * the enterframe function for this state, called automatically
		 */
		override public function update():void
		{
				player.acceleration.x = player.acceleration.y = 0;
				if (FlxG.keys.UP)
				{
					player.acceleration.y = -300;
				}
				if (FlxG.keys.DOWN)
				{
					player.acceleration.y = 300;
				}
				if (FlxG.keys.LEFT)
				{
					player.acceleration.x = -300;
				}
				if (FlxG.keys.RIGHT)
				{
					player.acceleration.x = 300;
				}
			super.update();
		}
	
	}

}