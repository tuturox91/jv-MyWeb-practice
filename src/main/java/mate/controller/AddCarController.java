package mate.controller;

import mate.lib.Injector;
import mate.model.Car;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.DriverService;
import mate.service.ManufacturerService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class AddCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService = (ManufacturerService) injector.getInstance(ManufacturerService.class);
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/addCar.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String model_name = req.getParameter("name");
        Long manufacturer_id = Long.valueOf(req.getParameter("manufacturer"));
        if(model_name != null && !model_name.isEmpty() && manufacturer_id != null) {
            Manufacturer manufacturer = manufacturerService.get(manufacturer_id);
            Car car = new Car();
            car.setModel(model_name);
            car.setManufacturer(manufacturer);
            car.setDrivers(List.of());
            carService.create(car);
            resp.sendRedirect(req.getContextPath() + "/index");
        }
    }
}
