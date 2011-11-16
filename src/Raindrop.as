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
	import flash.display.Stage
    
    [SWF(backgroundColor="0x000000")]
    public class Raindrop extends Sprite {
    
        [Embed (source="../assets/images/raindrop.swf" )] 
        public static const Raindrop:Class;
    
        private var raindrop:Sprite;
        private var main:Site;
        private var speed:Number;

        public function Raindrop(main:Site, thestage:Stage) {
            this.main = main;
            this.raindrop = new Raindrop();
            this.addChild(this.raindrop);
            this.raindrop.scaleX = 0.3;
            this.raindrop.scaleY = 0.3;
            this.raindrop.y = - Math.floor(Math.random() * thestage.stageHeight) - 10;
            this.raindrop.x = Math.floor(Math.random() * thestage.stageWidth + 10) -5;
            this.raindrop.rotation = Math.floor(Math.random() * 360);
            this.speed = Math.random() * 3 + 0.5;
            addEventListener(Event.ENTER_FRAME, onEnterFrame);
            
        }
        
        public function onEnterFrame(event:Event):void {
           if (this.raindrop.y > stage.stageHeight + 10) {
               this.raindrop.y = -20;
           }
           this.raindrop.y += this.speed;
           
        }
    }
}
