package com.goshop.redis.service;

import org.springframework.beans.factory.annotation.Autowired;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import java.util.Set;

public class JedisClientSingleImpl implements JedisClient{
	
	@Autowired
	private JedisPool jedisPool; 
	
	@Override
	public String get(String key) {
		String value = null;
		Jedis jedis = jedisPool.getResource();
		try{
			value = jedis.get(key);
		} finally {
			jedis.close();
		}
		return value;
	}

	@Override
	public byte[] get(byte[] key) {
		byte[] value = null;
		Jedis jedis = jedisPool.getResource();
		try{
			value = jedis.get(key);
		} finally {
			jedis.close();
		}
		return value;
	}

	@Override
	public String set(String key, String value) {
		Jedis jedis = jedisPool.getResource();
		try {
			value = jedis.set(key, value);
		} finally {
			jedis.close();
		}
		jedis.close();
		return value;
	}

	@Override
	public String set(String key, String value, int expire) {
		Jedis jedis = jedisPool.getResource();
		try {
			value = jedis.set(key, value);
			if (expire != 0) {
				jedis.expire(key, expire);
			}
		} finally {
			jedis.close();
		}
		return value;
	}

	@Override
	public String set(byte[] key, byte[] value) {
		Jedis jedis = jedisPool.getResource();
		String v=null;
		try {
			v =jedis.set(key, value);
		} finally {
			jedis.close();
		}
		return v;
	}

	@Override
	public String set(byte[] key, byte[] value, int expire) {
		Jedis jedis = jedisPool.getResource();
		String v=null;
		try {
			v =jedis.set(key, value);
			if (expire != 0) {
				jedis.expire(key, expire);
			}
		} finally {
			jedis.close();
		}
		return v;
	}

	@Override
	public String hget(String hkey, String key) {
		String value =null;
		Jedis jedis = jedisPool.getResource();
		try{
			value = jedis.hget(hkey, key);
		} finally {
			jedis.close();
		}
		return value;
	}

	@Override
	public long hset(String hkey, String key, String value) {
		Jedis jedis = jedisPool.getResource();
		Long result =null;
		try{
			result= jedis.hset(hkey, key, value);
		} finally {
			jedis.close();
		}
		return result;
	}

	@Override
	public long incr(String key) {
		Jedis jedis = jedisPool.getResource();
		Long result = null;
		try{
			result = jedis.incr(key);
		} finally {
			jedis.close();
		}
		return result;
	}

	@Override
	public long expire(String key, int second) {
		Jedis jedis = jedisPool.getResource();
		Long result = null;
		try{
			result = jedis.expire(key, second);
		} finally {
			jedis.close();
		}
		return result;
	}

	@Override
	public long ttl(String key) {
		Jedis jedis = jedisPool.getResource();
		Long result = null;
		try{
			result = jedis.ttl(key);
		} finally {
			jedis.close();
		}
		return result;
	}

	@Override
	public long del(String key) {
		Jedis jedis = jedisPool.getResource();
		Long result = null;
		try{
			result = jedis.del(key);
		} finally {
			jedis.close();
		}
		return result;
	}

	@Override
	public long del(byte[] key) {
		Jedis jedis = jedisPool.getResource();
		Long result = null;
		try{
			result = jedis.del(key);
		} finally {
			jedis.close();
		}
		return result;
	}

	@Override
	public long hdel(String hkey, String key) {
		Jedis jedis = jedisPool.getResource();
		Long result = null;
		try{
			result = jedis.hdel(hkey, key);
		} finally {
			jedis.close();
		}
		return result;
	}

	@Override
	public Set<byte[]> keys(String pattern) {
		Set<byte[]> keys = null;
		Jedis jedis = jedisPool.getResource();
		try {
			keys = jedis.keys(pattern.getBytes());
		} finally {
			jedisPool.close();
		}
		return keys;
	}

	@Override
	public void flushDB() {
		Jedis jedis = jedisPool.getResource();
		try {
			jedis.flushDB();
		} finally {
			jedisPool.close();
		}
	}

	@Override
	public Long dbSize() {
		Long dbSize = 0L;
		Jedis jedis = jedisPool.getResource();
		try {
			dbSize = jedis.dbSize();
		} finally {
			jedisPool.close();
		}
		return dbSize;
	}
}
