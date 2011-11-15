package {   
    // https://help.ubuntu.com/community/SWFTools.
    // http://chrissilich.com/blog/primal-screens-mic-as3-output-class/
    import flash.display.Sprite;
    import flash.display.MovieClip;
    import flash.text.TextField;
    import mx.core.BitmapAsset;
    import flash.utils.Timer;
	import flash.events.TimerEvent;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import com.primalscreen.utils.Mic;
    
    [SWF(backgroundColor="0x000000")]
    public class Site extends MovieClip {
    
        [Embed (source="../assets/images/raindrop.swf" )] 
        public static const Raindrop:Class;
    
        private var text:String = "Hello world!";
        private var raindrop:Sprite = new Raindrop();

        public function Site() {
            Mic.say("This is a test", this);
            addChild(this.raindrop);
            this.raindrop.scaleX = 0.2;
            this.raindrop.scaleY = 0.2;
            
            addEventListener(Event.ENTER_FRAME, onEnterFrame);
			
        }
        
        public function onEnterFrame(event:Event):void {
           this.raindrop.y += 1;
        }
    }
}
