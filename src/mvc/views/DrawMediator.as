package mvc.views
{
	import flash.events.MouseEvent;
	
	import mvc.views.components.Draw;
	
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	public class DrawMediator extends Mediator
	{
		public static const NAME:String = 'DrawMediator';
		public function DrawMediator(viewComponent:Object=null)
		{
			super(NAME, viewComponent);
			draw.graphics.lineStyle(1,0xff0000,1);
			draw.addEventListener(MouseEvent.MOUSE_MOVE, onMouseMove);
		}
		private var lastPoint:*;
		private function onMouseMove(e:MouseEvent):void
		{
			if(lastPoint == null)
			{
				draw.graphics.moveTo(e.stageX,e.stageY);
				lastPoint = {x:e.stageX,y:e.stageY};
			}
				else
			draw.graphics.lineTo(e.stageX,e.stageY);
		}
		
		private function get draw():Draw
		{
			return viewComponent as Draw;
		}
	}
}