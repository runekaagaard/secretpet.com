package {   
    // https://help.ubuntu.com/community/SWFTools.
    // http://chrissilich.com/blog/primal-screens-mic-as3-output-class/
    // http://code.google.com/p/as3-commons/source/browse/trunk/as3-commons-collections/src/main/actionscript/org/as3commons/collections/utils/Sets.as?spec=svn1015&r=1015
    // https://github.com/danschultz/as3-collections
    import flash.display.Sprite;
    import flash.display.MovieClip;
    import flash.text.TextField;
    import mx.core.BitmapAsset;
    import flash.utils.Timer;
	import flash.events.TimerEvent;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.display.Stage;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
    import flash.display.StageDisplayState;
	//import com.primalscreen.utils.Mic;
	import Raindrop;
    
    [SWF(backgroundColor="0x000000")]
    public class Site extends MovieClip {
    
        private var text:String = "Hello world!";
        private var raindrop:Raindrop;
        
        public function Site() {
            stage.frameRate = 20;
            stage.align = StageAlign.TOP_LEFT
            stage.scaleMode = StageScaleMode.NO_SCALE;
            //stage.displayState = StageDisplayState.FULL_SCREEN;
            // Mic.say("This is a test", this);
            for (var i:int=0; i<100; i++) {
                var raindrop:Raindrop = new Raindrop(this, stage);
                this.addChild(raindrop);            
            }
        }
        
    }
}
