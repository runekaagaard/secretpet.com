package {   
    // https://help.ubuntu.com/community/SWFTools.
    import flash.display.Sprite;
    import flash.display.MovieClip;
    import flash.text.TextField;
    import mx.core.BitmapAsset;
    import flash.utils.Timer;
	import flash.events.TimerEvent;
	import flash.events.Event;
	import flash.events.MouseEvent;
    
    [SWF(backgroundColor="0x000000")]
    public class Site extends MovieClip {
    
        [Embed (source="assets/images/raindrop.swf" )] 
        public static const Raindrop:Class;
    
        private var text:String = "Hello world!";
        private var raindrop:Sprite = new Raindrop();

        public function Site() {
            addChild(this.raindrop);
            this.raindrop.scaleX = 0.2;
            this.raindrop.scaleY = 0.2;
            
            addEventListener(Event.ENTER_FRAME, onEnterFrame);
			/*
            for (var i:int=0; i<10; i++) {
                var raindrop:Sprite = new Raindrop();
                raindrop.x = 100 + i*20;
                raindrop.y = 100+ i*20;
                raindrop.rotation = i*20;
                raindrop.scaleX = 0.2;
                raindrop.scaleY = 0.2;
                addChild(raindrop);
            }*/
        }
        
        public function onEnterFrame(event:Event):void {
           this.raindrop.y += 1;
        }
    }
}
