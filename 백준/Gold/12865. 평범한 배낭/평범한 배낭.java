import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.StringTokenizer;

public class Main {
    static int[][] dp;
    static int w, v;
    public static void main(String[] args) throws Exception{
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = new StringTokenizer(br.readLine());

        int N = Integer.parseInt(st.nextToken());
        int K = Integer.parseInt(st.nextToken());
        dp = new int[N + 1][K + 1];

        for (int i = 1; i < N+1; i++) {
            st = new StringTokenizer(br.readLine());
            w = Integer.parseInt(st.nextToken());
            v = Integer.parseInt(st.nextToken());
            for (int j = 0; j < K+1; j++) {
                dp[i][j] = dp[i-1][j];
                if(w <= j)
                    dp[i][j] = Math.max(dp[i][j], dp[i - 1][j - w] + v);
            }
        }

        System.out.println(dp[N][K]);
    }
}
