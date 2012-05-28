package mvc.control
{
	import org.puremvc.as3.patterns.command.MacroCommand;
	
	public class StartupCommand extends MacroCommand
	{
		public function StartupCommand()
		{
			super();
			addSubCommand(ModelPreCommand);
			addSubCommand(ViewPreCommand);
		}
	}
}