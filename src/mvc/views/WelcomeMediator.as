package mvc.views
{
	import flash.desktop.NativeApplication;
	import flash.events.MouseEvent;
	
	import mvc.views.components.Welcome;
	
	import mx.events.ResizeEvent;
	
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	import spark.components.Button;
	
	public class WelcomeMediator extends Mediator
	{
		public static const NAME:String = 'WelcomeMediator';
		public function WelcomeMediator(viewComponent:Object=null)
		{
			super(NAME, viewComponent);
			
			btnAbout.addEventListener(MouseEvent.CLICK, onBtnAboutClick);
			welcome.btnGame.addEventListener(MouseEvent.CLICK, onGameClick);
		}
		
		private function onGameClick(e:MouseEvent):void
		{
			var m:WritingMediator = facade.retrieveMediator(WritingMediator.NAME) as WritingMediator;
			m.switchView(m.chapterList);
		}
		
		private function onBtnAboutClick(e:MouseEvent):void
		{
			NativeApplication.nativeApplication.exit();
		}
		
		private function get btnAbout():Button
		{
			return welcome.btnAbout;
		}
		
		private function get welcome():Welcome
		{
			return viewComponent as Welcome;
		}
	}
}