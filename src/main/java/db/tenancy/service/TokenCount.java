package db.tenancy.service;

import java.util.HashMap;
import java.util.Map;

public class TokenCount {

    public static void main(String[] args) {
        String text = "IF LP ID PERIOD ID LP StrVal RP RP LB\n" +
                "ID ID EQUALS ID PERIOD ID LP IntVal COMMA ID PERIOD ID LP RP MINUS IntVal RP SC\n" +
                "ID ID EQUALS ID LP ID RP SC\n" +
                "IF LP ID PERIOD ID LP StrVal RP RP LB\n" +
                "RETURN ID LP ID RP SC\n" +
                "RB\n" +
                "RETURN ID SC\n" +
                "RB\n";
        String[] tokens = text.split("[\\s\n]+");

        Map<String, Integer> tokenCounts = new HashMap<>();
        for (String token : tokens) {
            tokenCounts.put(token, tokenCounts.getOrDefault(token, 0) + 1);
        }

        for (Map.Entry<String, Integer> entry : tokenCounts.entrySet()) {
            System.out.print(entry.getKey() + ": " + entry.getValue() + ",");
        }
    }
}
