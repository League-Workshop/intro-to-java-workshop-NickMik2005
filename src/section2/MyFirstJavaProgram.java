package section2;

import java.awt.Color;
import org.jointheleague.graphical.robot.Robot;

public class MyFirstJavaProgram {
	
	public static void main(String[] args) {
		
		// START HERE
	Robot c3po = new Robot();
	c3po.setSpeed(100);
	c3po.penDown();
	for(int i=0;i<4; i++) {
	c3po.move(100);
	c3po.turn(90);
		
	}	
	}
}
