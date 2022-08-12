package calculator;

import java.awt.*;
import java.awt.event.*;

import javax.swing.*;

public class Calculator 
{
	JFrame fr = new JFrame("Calculator");
	JTextField tf = new JTextField("0");
	JButton[] bt = new JButton[20];
	JPanel pn = new JPanel();
	String operator;
	boolean clr = false;
	int num1;
	int num2;

	public Calculator() 
	{

		fr.setSize(450, 600);
		fr.setLocationRelativeTo(null);
		fr.setDefaultCloseOperation(3);
		fr.setResizable(false);
		addTextBox();
		addButtons();
		fr.setLayout(null);
		fr.setVisible(true);
	}

	private void addTextBox()
	{
		tf.setBounds(15, 15, 415, 75);
		tf.setFont(new Font("arial", 0, 30));
		tf.setHorizontalAlignment(JTextField.RIGHT);
		tf.setEditable(false);
		tf.setBackground(Color.white);
		tf.setBorder(BorderFactory.createLineBorder(Color.black));
		fr.add(tf);
	}

	private void addButtons()
	{

		pn.setBounds(15, 100, 415, 450);
		// pn.setBackground(Color.yellow);
		TaskListner listner = new TaskListner();
		fr.add(pn);
		pn.setLayout(new GridLayout(5, 4, 5, 5));
		Font fo = new Font("arial", 0, 22);
		String[] str = { "Back", "CE", "C", "%", "7", "8", "9", "/", "4", "5", "6", "*", "1", "2", "3", "-", "0", ".","=", "+" };
		for (int i = 0; i < 20; i++) 
		{
			bt[i] = new JButton(str[i]);
			bt[i].addActionListener(listner);
			bt[i].setFont(fo);
			if (i == 3 || i == 7 || i == 11 || i == 15 || i == 18 || i == 19)
			{
				bt[i].setForeground(Color.red);
			}
			else
			{
				bt[i].setForeground(Color.blue);
			}
			pn.add(bt[i]);

		}
	}

	public class TaskListner implements ActionListener 
	{

		public void actionPerformed(ActionEvent evt)
		{
			JButton bb = (JButton) evt.getSource();
			String txt = bb.getText();
			String txtval=tf.getText();
			if (bb == bt[3] || bb == bt[7] || bb == bt[11] || bb == bt[15] || bb == bt[19]) 
			{
				operator = bb.getText();
				num1=Integer.parseInt(txtval);
				clr = true;
			}
			if (bb == bt[4] || bb == bt[5] || bb == bt[6] || bb == bt[8] || bb == bt[9] || bb == bt[10] || bb == bt[12]|| bb == bt[13] || bb == bt[14] || bb == bt[16])
			{
				if (txtval.equals("0") || clr) 
				{
					tf.setText(txt);
					clr = false;
				}
				else
				{
					tf.setText(txtval+ txt);
				}
			}
			if(bb==bt[18])// for = 
 			{	
				cal();
			}
			if(bb==bt[2])// for C
			{
				tf.setText("0");
			}
			if(bb==bt[1])//for CE
			{
				tf.setText("0");
				num1=0;
				num2=0;
				clr=false;
			}
			
			if(bb==bt[0])
			{
				if(txtval.length()==1)
				{
					tf.setText("0");
				}
				else
				{
				tf.setText(txtval.substring(0, txtval.length()-1));
				}
			}
			
		}
		public void cal()
		{
			 num2=Integer.parseInt(tf.getText());
			if(operator.equals("+"))
			{
				 int res=num1+num2;
				 tf.setText(String.valueOf(res));
			}
			if(operator.equals("-"))
			{
				 int res=num1-num2;
				 tf.setText(String.valueOf(res));
			}
			
			if(operator.equals("*"))
			{
				 int res=num1*num2;
				 tf.setText(String.valueOf(res));
			}
			
			if(operator.equals("/"))
			{
				 int res=num1/num2;
				 tf.setText(String.valueOf(res));
			}
			if(operator.equals("%"))
			{
				 int res=num1%num2;
				 tf.setText(String.valueOf(res));
			}
			
		}

	}

	public static void main(String[] args) 
	{
		new Calculator();

	}

}
