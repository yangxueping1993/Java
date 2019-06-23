package message2;

import java.util.ArrayList;
import java.util.List;

public class SimpleMediatorPattern {

    public static void main(String[] args) {

        SimpleColleague c1 = new SimpleConcreteColleague1();
        SimpleColleague c2 = new SimpleConcreteColleague2();
        SimpleMediator s1 = SimpleMediator.getMedium();

        c1.setS1(s1);
        c2.setS1(s1);

        c1.send();
        System.out.println("-----------------");
        c2.send();
    }
}

//简单单例中介者
class SimpleMediator {

    private static SimpleMediator smd = new SimpleMediator();
    private List<SimpleColleague> colleagues = new ArrayList<SimpleColleague>();

    private SimpleMediator() {

    }

    public static SimpleMediator getMedium() {
        return smd;
    }

    public void register(SimpleColleague colleague) {
        if (!colleagues.contains(colleague)) {
            colleagues.add(colleague);
        }
    }

    public void relay(SimpleColleague scl) {

        for (SimpleColleague ob : colleagues) {
            if (!ob.equals(scl)) {
                ob.receive();
            }
        }
    }
}

//抽象同事类
abstract class SimpleColleague {

    SimpleMediator s1;

    public void setS1(SimpleMediator s1) {
        this.s1 = s1;
        s1.register(this);
    }

    abstract void receive();

    abstract void send();
}

//具体同事类
class SimpleConcreteColleague1 extends SimpleColleague {

    @Override
    public void receive() {
        System.out.println("具体同事类1：收到请求。");
    }

    @Override
    public void send() {

        System.out.println("具体同事类1：发出请求...");
        super.s1.relay(this);
    }
}

//具体同事类
class SimpleConcreteColleague2 extends SimpleColleague {

    @Override
    public void receive() {
        System.out.println("具体同事类2：收到请求。");
    }

    @Override
    public void send() {

        System.out.println("具体同事类2：发出请求...");
        super.s1.relay(this);
    }
}
