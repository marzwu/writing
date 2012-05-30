package mvc.views
{
	import flash.events.Event;
	
	import mvc.views.components.ChapterList;
	import mvc.views.components.Draw;
	import mvc.views.components.Welcome;
	
	import mx.events.FlexEvent;
	
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	public class WritingMediator extends Mediator
	{
		public static const NAME:String = 'WritingMediator';
		public function WritingMediator(viewComponent:Object=null)
		{
			super(NAME, viewComponent);
			
			main.addElement(welcome);
			currentView = welcome;
		}
		
		public function switchView(view:*):void
		{
			if(view != currentView)
			{
				main.removeElement(currentView);
				currentView = view;
				main.addElement(currentView);
			}
		}
		
		private var currentView:*;
		private function get main():writing
		{
			return viewComponent as writing;
		}
		
		private var _welcome:Welcome;

		public function get welcome():Welcome
		{
			if(_welcome == null)
			{
				_welcome = new Welcome;
				_welcome.percentWidth = 100;
				_welcome.percentHeight = 100;
				_welcome.addEventListener(FlexEvent.CREATION_COMPLETE, function(e:Event):void{
					facade.registerMediator(new WelcomeMediator(_welcome));
					});
			}
			return _welcome;
		}

		private var _chapterList:ChapterList;

		public function get chapterList():ChapterList
		{
			if(_chapterList == null)
			{
				_chapterList = new ChapterList;
				_chapterList.percentWidth = 100;
				_chapterList.percentHeight = 100;
				_chapterList.addEventListener(FlexEvent.CREATION_COMPLETE, function(e:Event):void{
					facade.registerMediator(new ChapterListMediator(_chapterList));
					});
			}
			return _chapterList;
		}

		private var _draw:Draw;

		public function get draw():Draw
		{
			if(_draw == null)
			{
				_draw = new Draw;
				_draw.percentWidth = 100;
				_draw.percentHeight = 100;
				_draw.addEventListener(FlexEvent.CREATION_COMPLETE, function(e:Event):void{
					facade.registerMediator(new DrawMediator(_draw));
					});
			}
			return _draw;
		}

	}
}