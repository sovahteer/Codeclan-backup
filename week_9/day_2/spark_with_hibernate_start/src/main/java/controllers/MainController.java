package controllers;

import db.Seeds;
import models.Department;
import spark.template.velocity.VelocityTemplateEngine;

public class MainController {
    public static void main(String[] args) {
        Seeds.seedData();
        ManagersController managersController = new ManagersController();
        EmployeeController employeeController = new EmployeeController();
        DepartmentController departmentController = new DepartmentController();
        EngineerController engineerController = new EngineerController();
    }

//    get ("/", (req, res) -> {
//
//    }, new VelocityTemplateEngine());
}
