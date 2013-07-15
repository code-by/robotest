/**
 * Created with IntelliJ IDEA.
 * User: Admin
 * Date: 15.07.13
 * Time: 21:22
 * To change this template use File | Settings | File Templates.
 */
package {
import flash.display.SimpleButton;

import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;

public class CommandsConfig {

    [Inject]
    public var commandMap:IEventCommandMap;

    public function configure():void {
        commandMap.map(SimpleEvent.CLICK).toCommand(SimpleCommand);
    }
}
}
