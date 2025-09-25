package ch0;

public class Counter {
    private final String name;
    private int count;
    Counter(String id)
    {
        name = id;
    }

    public void increment()
    {
        count += 1;
    }

    public int tally()
    {
        return count;
    }

    public String toString()
    {
        return count + " " + name;
    }
}
