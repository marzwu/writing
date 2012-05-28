package mvc.views
{
	import mvc.views.components.Welcome;
	
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	public class WritingMediator extends Mediator
	{
		public static const NAME:String = 'WritingMediator';
		public function WritingMediator(viewComponent:Object=null)
		{
			super(NAME, viewComponent);
			
			var welcome:Welcome = new Welcome;
			welcome.percentWidth = 100;
			welcome.percentHeight = 100;
			main.addElement(welcome);
			
			facade.registerMediator(new WelcomeMediator(welcome));
		}
		
		private function get main():writing
		{
			return viewComponent as writing;
		}
	}
}