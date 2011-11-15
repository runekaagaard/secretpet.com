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
	//import com.primalscreen.utils.Mic;
	import Raindrop;
    
    [SWF(backgroundColor="0x000000")]
    public class Site extends MovieClip {
    
        private var text:String = "Hello world!";
        private var raindrop:Raindrop;
        
        public function Site() {
            // Mic.say("This is a test", this);
            this.raindrop = new Raindrop(this);
            this.addChild(this.raindrop);            
            addEventListener(Event.ENTER_FRAME, onEnterFrame);
        }
        
        public function onEnterFrame(event:Event):void {
           this.raindrop.y += 1;
        }
    }
}
