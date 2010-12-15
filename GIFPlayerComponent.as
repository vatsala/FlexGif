package
{
	import flash.net.URLRequest;
	
	import mx.core.UIComponent;
	
	import org.bytearray.gif.player.GIFPlayer;
 
	public class GIFPlayerComponent extends UIComponent
	{
		private var m_gif:GIFPlayer = new GIFPlayer();
		private var _url:String = new String();
		public function GIFPlayerComponent()
		{
			super();
			addChild(m_gif);
		}
		
		public function get url():String{
			return _url;
		}
		
		public function set url(value:String):void{
			_url = value;
			var urlReq:URLRequest = new URLRequest(_url);
			m_gif.load(urlReq);
		}
	}
}