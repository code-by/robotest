/**
 * Created with IntelliJ IDEA.
 * User: Admin
 * Date: 15.07.13
 * Time: 11:02
 * To change this template use File | Settings | File Templates.
 */
package {
import robotlegs.bender.bundles.mvcs.Command;

public class SimpleCommand extends Command {

    [Inject]
    public var model:SimpleModel;

    [Inject]
    public var event:SimpleEvent;

    override public function execute():void {
        trace('Simple command executed');
        model.x = event.x;
        model.y = event.y;
    }


}
}
