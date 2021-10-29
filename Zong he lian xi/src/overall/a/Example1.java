package overall.a;
import java.awt.Color;
import java.awt.Container;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.SwingConstants;
import javax.swing.WindowConstants;

public class Example1 extends JFrame {
   public void CreateJFrame(String title) {
	JFrame jf=new JFrame(title);
	Container container=jf.getContentPane();
	JLabel jl=new JLabel("Hello world");
	jl.setHorizontalAlignment(SwingConstants.CENTER);
	container.add(jl);
	container.setBackground(Color.BLUE);
	jf.setVisible(true);
	jf.setSize(200, 150);
	jf.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
	
	
	
	
	
}
	
	
	
}
