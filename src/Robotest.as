package {

import flash.display.SimpleButton;
import flash.display.Sprite;
import flash.text.TextField;

import robotlegs.bender.bundles.mvcs.MVCSBundle;
import robotlegs.bender.extensions.contextView.ContextView;

import robotlegs.bender.framework.impl.Context;

public class Robotest extends Sprite {

    private var _context;

    public function Robotest() {

        _context = new Context();
        _context.install(MVCSBundle).install(MainContextBundle).configure(MainConfig, CommandsConfig).configure(new ContextView(this)).initialize();
        _context.injector.injectInto(this);

        trace('hello');

        var s:Sprite=new SimpleView();
        addChild(s);

        var textField:TextField = new TextField();
        textField.text = "Hello, World";
        textField.height = 20;
        addChild(textField);

    }

}
}
