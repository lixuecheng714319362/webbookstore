
public class ThreadTest implements Runnable {
	private int i;
	public void run() {
		for (; i < 100; i++) {
			System.out.println(Thread.currentThread().getName() + " " + i);
		}
	}
	public static void main(String[] args) {
//		for (int i = 0; i < 100; i++) {
//			System.out.println(Thread.currentThread().getName() + " " + i);
//			if (i == 20) {
//				ThreadTest tt = new ThreadTest();
//				new Thread(tt, "新线程1").start();
//				new Thread(tt, "新线程2").start();
//			}
//		}
		System.out.println(10%3*2);
	}
}
