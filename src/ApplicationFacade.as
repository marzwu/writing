package
{
	import mvc.control.StartupCommand;
	
	import org.puremvc.as3.patterns.facade.Facade;
	
	public class ApplicationFacade extends Facade
	{
		public function ApplicationFacade()
		{
			super();
		}
		
		public static const STARTUP:String = 'startup';
		
		public static function getInstance():ApplicationFacade
		{
			if(instance == null)
				instance = new ApplicationFacade;
			return instance as ApplicationFacade;
		}
		
		override protected function initializeController( ) : void 
		{
			super.initializeController(); 
			registerCommand( STARTUP, StartupCommand );
		}
		
		public function startup(app:writing):void
		{
			sendNotification(STARTUP, app);
		}
	}
}