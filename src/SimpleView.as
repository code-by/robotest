/**
 * Created with IntelliJ IDEA.
 * User: Admin
 * Date: 15.07.13
 * Time: 11:07
 * To change this template use File | Settings | File Templates.
 */
package {
import com.greensock.TweenLite;

import flash.display.Sprite;
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import flash.events.MouseEvent;

import com.greensock.*;
import com.greensock.easing.*;


public class SimpleView extends Sprite {

    private var _model:SimpleModel;

    public function SimpleView() {
        graphics.beginFill(0xFF0000, 1);
        graphics.drawRect(0, 0, 100, 100);
        addEventListener(MouseEvent.CLICK, onClick);
    }

    private function onClick(event:MouseEvent):void {
        trace('mouse click');
        var simpleEvent = new SimpleEvent(SimpleEvent.CLICK);
        trace('click at x='+event.stageX);
        trace('click at y='+event.stageY);

        simpleEvent.x = event.stageX;
        simpleEvent.y = event.stageY;
        dispatchEvent(simpleEvent);
    }

    public function get model():SimpleModel {
        return _model;
    }

    public function set model(value:SimpleModel):void {
        _model = value;
        model.addEventListener(SimpleEvent.MOVING, onMoving);
    }

    private function onMoving(event:SimpleEvent):void {
        trace('view moving event');
        trace(event.x);
        trace(event.y);
        x = event.x-50;
        y = event.y-50;
        TweenMax.to(this, 2, {x:x, y:y});
    }

}
}
