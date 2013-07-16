/**
 * Created with IntelliJ IDEA.
 * User: Admin
 * Date: 15.07.13
 * Time: 18:43
 * To change this template use File | Settings | File Templates.
 */
package {
import flash.events.Event;
import flash.events.IEventDispatcher;

import robotlegs.bender.bundles.mvcs.Mediator;

public class SimpleMediator extends Mediator {

    [Inject]
    public var model:SimpleModel;

    [Inject]
    public var view:SimpleView;

    override public function initialize():void {
        trace('initialize mediator');
        addViewListener(SimpleEvent.CLICK, myClick, SimpleEvent);
        view.model = model;
        //addContextListener(SimpleEvent.MOVING, myMoving, SimpleEvent);
    }

    private function myMoving():void {
        trace('myMoving');
    }

    private function myClick(event:SimpleEvent):void {
        trace('myClick');
        dispatch(event);
    }

}
}
