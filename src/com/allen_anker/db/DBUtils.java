package com.allen_anker.db;

import com.allen_anker.bean.Employee;

import java.util.HashMap;
import java.util.Map;

public class DBUtils {

    public static Map<String, Employee> employees = new HashMap<>();

    static {
        employees.put("101", new Employee("101", "Allen Anker", "123", "allen@gmail.com"));
        employees.put("102", new Employee("102", "Jason Stanson", "123", "jason@gmail.com"));
        employees.put("103", new Employee("103", "Dan Stevens", "123", "dan@gmail.com"));
        employees.put("104", new Employee("104", "Emma Watson", "123", "emma@gmail.com"));
        employees.put("105", new Employee("105", "Taylor Swift", "123", "ts@gmail.com"));
    }

    public static boolean isValidAccount(Employee employee) {
        boolean flag = false;
        for (String key : employees.keySet()) {
            if (employee.getAccount().equals(employees.get(key).getAccount())
                && employee.getPassword().equals(employees.get(key).getPassword())) {
                flag = true;
                break;
            }
        }
        return flag;
    }
}
