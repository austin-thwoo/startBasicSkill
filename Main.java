package Main.dec23;

import java.net.ServerSocket;
import java.net.Socket;
import java.util.HashMap;
import java.util.Scanner;



public class Main {
public static void main(String[] args) {
	Scanner sc = new Scanner(System.in);
	String Str=sc.next();
	
	if (Str.equals("1")) {
		HashMap<Integer, String> map = new HashMap<Integer, String>();

		map.put(6, "hello");
		map.put(7, "java");
		map.put(8, "world");
		//1. hash 데이터 볼떄
		System.out.println("1 : "+map);
		//2. hash 크기(사이즈) 볼떄
		System.out.println("2 : "+map.size());
		//3. hash 키로 값 가져올때
		System.out.println("3 : "+map.get(6));
		//4. hash 키로 값 지울때
		System.out.print("4 : "+map.remove(6));
		System.out.println(map.get(6));
		//5. hash 키로 특정 데이터의 유무확인 boolean타입
		System.out.println("5 : "+map.containsKey(7));
		//6. hash 값으로 특정 데이터의 유무확인 boolean타입
		System.out.println("6 : "+map.containsValue("world"));
		//7. 데이터 전체 제거
		map.clear();
		System.out.println("7 : "+map);
		//8. 데이터 유무
		System.out.println("8 : "+map.isEmpty());	
	}else if (Str.equals("2")) {
		int i= 10;
		int j= 0;
		int r= 0;
		
		try {
			r=i / j;
		} catch (Exception e) {
			e.printStackTrace();
			String msg = e.getMessage();
			System.out.println("Message is : "+msg);
		}
		
		
		
	}else if (Str.equals("3")) {
		ServerSocket serversocket= null;
		Socket socket =null; 
		
		
		try {
			
			serversocket=new ServerSocket(9000);
			System.out.println("클라이언트 맞을준비 on");
			socket=serversocket.accept();
			System.out.println("클라이언트 연결 on");
			System.out.println("socket : "+socket);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (socket!=null) socket.close();
				if (serversocket!=null)serversocket.close();
				
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}

	}
	
	


}


}
