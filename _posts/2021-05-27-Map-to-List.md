---
layout: post
title:  "Map to List"
date:   2021-05-27 16:00:00 +0800
tags: javacode java
---
```java
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author erniu.wzh
 * @date 2021/5/27 16:57
 */
public class Test {
    public static void main(String[] args) {
        Map<String, String> myMap = new HashMap();
        myMap.put("1","a");
        myMap.put("2","b");
        List<String> myList = new ArrayList<>(myMap.values());
        System.out.println(myList);
    }
}

```