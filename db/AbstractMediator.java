package db;

import lombok.Data;

@Data
public abstract class AbstractMediator {
    protected MysqlDatabase mysqlDatabase;
    protected RedisDatabase redisDatabase;
    protected EsDatabase esDatabase;

    public abstract void sync(String databaseName, String data);
}