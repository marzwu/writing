package mvc.views
{
	import flash.display.Shape;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	
	import mvc.views.components.Draw;
	
	import mx.states.AddChild;
	
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	public class DrawMediator extends Mediator
	{
		public static const NAME:String = 'DrawMediator';
		public function DrawMediator(viewComponent:Object=null)
		{
			super(NAME, viewComponent);
			draw.graphics.lineStyle(1,0xff0000,1);
			draw.addEventListener(MouseEvent.MOUSE_MOVE, onMouseMove);
			
			draw.drawBase.percentWidth = 100;
			draw.drawBase.percentHeight = 100;
			draw.drawBase.graphics.lineStyle(1,0xff0000,1);
		}
		private var lastPoint:*;
		private function onMouseMove(e:MouseEvent):void
		{
			if(e.buttonDown)
			{
			if(lastPoint == null)
			{
				draw.drawBase.graphics.moveTo(e.stageX,e.stageY);
				lastPoint = {x:e.stageX,y:e.stageY};
			}
			else
			{
				draw.drawBase.graphics.lineTo(e.stageX,e.stageY);
			}
			}
			else
				lastPoint = null;
		}
		
		private function get draw():Draw
		{
			return viewComponent as Draw;
		}
	}
}