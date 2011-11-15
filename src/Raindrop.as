package {   
    // http://ccpssolutions.com/nogdusforums/index.php?topic=627.0
    import flash.display.Sprite;
    import flash.display.MovieClip;
    import flash.text.TextField;
    import mx.core.BitmapAsset;
    import flash.utils.Timer;
	import flash.events.TimerEvent;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import Site;
    
    [SWF(backgroundColor="0x000000")]
    public class Raindrop extends Sprite {
    
        [Embed (source="../assets/images/raindrop.swf" )] 
        public static const Raindrop:Class;
    
        private var raindrop:Sprite;

        public function Raindrop(main:Site) {
            this.raindrop = new Raindrop();
            this.addChild(this.raindrop);
            this.raindrop.scaleX = 0.2;
            this.raindrop.scaleY = 0.2;
            this.raindrop.x = Math.floor(Math.random() * main.stage.stageWidth + 10) -5;
        }
    }
}
