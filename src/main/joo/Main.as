package {
import flash.display.Sprite;
import flash.text.TextField;

[SWF( backgroundColor='0xFFFFFF', frameRate='30', width='640', height='480')]
public class Main extends Sprite {
  public function Main() {
    var helloWorld:TextField = new TextField();
    helloWorld.text = "Hello World!";
    addChild(helloWorld);
  }
}
}
