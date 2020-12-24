package Main.dec24;

import java.util.Scanner;

public class Main {
	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		
		String str= "*";
		int count=1;
		while(true) {
		int A=sc.nextInt();
		if (A%2==0) {
			System.out.println("홀수를 입력해주세요");
		}else if( A%2 != 0) {
		
			for (int i = 1; i <= A+1; i=i+2) {
				for (int j =(A-i)/2; j >0 ; j--) {
					System.out.print(" ");
				}
				for (int j = 0; j < i; j++) {
					
					System.out.print("*");
				}System.out.println();
				for (int j =(A-i)/2; j >i ; j++) {
					System.out.print(" ");
				}
				for (int j = 0; j < i; j++) {
					
					System.out.print("*");
				}System.out.println();
			}
		}
	}
}
}


