package mvc.views
{
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	public class DrawMediator extends Mediator
	{
		public static const NAME:String = 'DrawMediator';
		public function DrawMediator(viewComponent:Object=null)
		{
			super(NAME, viewComponent);
		}
	}
}