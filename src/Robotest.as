package {

import flash.display.SimpleButton;
import flash.display.Sprite;
import flash.text.TextField;

import robotlegs.bender.bundles.mvcs.MVCSBundle;
import robotlegs.bender.extensions.contextView.ContextView;

import robotlegs.bender.framework.impl.Context;

public class Robotest extends Sprite {

    public function Robotest() {

        var context:Context = new Context();
        context.install(MVCSBundle).install(MainContextBundle).configure(MainConfig).configure(new ContextView(this)).initialize();
        context.injector.injectInto(this);

        trace('hello');

        var s:Sprite=new SimpleClass();
        addChild(s);

        var textField:TextField = new TextField();
        textField.text = "Hello, World";
        addChild(textField);

    }

}
}
