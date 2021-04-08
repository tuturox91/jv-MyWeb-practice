# Web practice. Implement JSP pages and their corresponding controllers

- Configure web.xml
- Add new dependencies `servlet-api` and `maven-war-plugin` in `pom.xml` (remember about `<packaging>war</packaging>`)
- Create a new controller: Implement creating a driver
- Create a new controller: Display all drivers
- Create a new controller: Implement creating a manufacturer
- Create a new controller: Implement creating a car (with no drivers by default)
- Create a new controller: Implement adding driver to car.

HINT: in last controller, create just two fields on JSP where you will pass corresponding id values.

### Example how to implement adding driver to car:
```java
public class AddDriverToCarController extends HttpServlet {    
    private static final Injector injector = Injector.getInstance("mate.academy"); // be careful with copy-paste
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService = (DriverService) injector.getInstance(DriverService.class);
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long driverId = Long.valueOf(request.getParameter("driver_id"));
        Long carId = Long.valueOf(request.getParameter("car_id"));
        Car car = carService.get(carId);
        Driver driver = driverService.get(driverId);
        // continue your implementation 
    }
}
```

### Typical mistakes:
- Do not forget to implement additional maven library for jstl
- Do not forget to declare `taglib` prefix where applicable

### Advanced:
- Create a new controller: Display all manufacturers with ability to delete a certain manufacturer
- Display all drivers with ability to delete a certain driver
- Create a new controller: Display all cars (with manufacturer and drivers) with ability to delete a certain car

__Before submitting solution make sure you checked it first with__ [checklist](https://mate-academy.github.io/jv-program-fulltime/03_web/checklist/02_servlets_practice_checklist.html)
