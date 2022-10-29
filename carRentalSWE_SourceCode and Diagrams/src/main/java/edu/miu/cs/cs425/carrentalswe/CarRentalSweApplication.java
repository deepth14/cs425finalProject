package edu.miu.cs.cs425.carrentalswe;

import edu.miu.cs.cs425.carrentalswe.model.Category;
import edu.miu.cs.cs425.carrentalswe.model.Vehicle;
import edu.miu.cs.cs425.carrentalswe.service.BookingService;
import edu.miu.cs.cs425.carrentalswe.service.CategoryService;
import edu.miu.cs.cs425.carrentalswe.service.PaymentService;
import edu.miu.cs.cs425.carrentalswe.service.VehicleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class CarRentalSweApplication implements CommandLineRunner {
@Autowired
    BookingService bookingService;
@Autowired
    CategoryService categoryService;
@Autowired
    PaymentService paymentService;
@Autowired
    VehicleService vehicleService;

    public static void main(String[] args) {
        SpringApplication.run(CarRentalSweApplication.class, args);

    }

    @Override
    public void run(String... args) throws Exception {
        Category category = new Category("gah",5,4);
        Vehicle vehicle = new Vehicle("Toyota","435362",2020,"Available","![](../../../../../../resources/static/images/2/driver.jpeg)",category);

    }
}
