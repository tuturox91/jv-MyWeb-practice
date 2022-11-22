package mate.controller;

import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/drivers/addDriver.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String driverName = req.getParameter("driverName");
        String license_number = req.getParameter("license_number");

        if(driverName != null && !driverName.isEmpty() && license_number != null && !license_number.isEmpty()) {
            Driver driver = new Driver();
            driver.setName(driverName);
            driver.setLicenseNumber(license_number);
            driverService.create(driver);
            resp.sendRedirect(req.getContextPath() + "/drivers");
        }
    }
}
