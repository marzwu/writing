package mvc.control
{
	import mvc.views.WritingMediator;
	
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;
	
	public class ViewPreCommand extends SimpleCommand
	{
		override public function execute(notification:INotification):void
		{
			super.execute(notification);
			facade.registerMediator(new WritingMediator(notification.getBody()));
		}
	}
}