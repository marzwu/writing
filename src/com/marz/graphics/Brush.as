package com.marz.graphics
{
	import flash.display.Graphics;
	import flash.geom.Point;

	public class Brush
	{
		public function Brush(r:int=10)
		{
			this.r = r;
		}
		
		public function move(graphics:Graphics, start:Point, end:Point):void
		{
			
		}
		
		private var _r:int;

		public function get r():int
		{
			return _r;
		}

		public function set r(value:int):void
		{
			_r = value;
		}

	}
}