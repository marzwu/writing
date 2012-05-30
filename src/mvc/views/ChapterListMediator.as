package mvc.views
{
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import mvc.views.components.ChapterList;
	
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	public class ChapterListMediator extends Mediator
	{
		public static const NAME:String = 'ChapterListMediator';
		public function ChapterListMediator(viewComponent:Object=null)
		{
			super(NAME, viewComponent);
			chapterList.btnOne.addEventListener(MouseEvent.CLICK, onOneClick);
		}
		
		private function onOneClick(e:Event):void
		{
			var m:WritingMediator = facade.retrieveMediator(WritingMediator.NAME) as WritingMediator;
			m.switchView(m.draw);
		}
		
		private  function get chapterList():ChapterList
		{
			return viewComponent as ChapterList;
		}
	}
}