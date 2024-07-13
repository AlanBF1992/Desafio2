package cl.desafiolatam.model;

import java.util.ArrayList;
import java.util.List;

public class HabitacionBusiness{
	private List<Habitacion> habitacionList = new ArrayList<Habitacion>();

	public HabitacionBusiness() {
		habitacionList.add(new Habitacion(0, "Habitación 1, Simple", "Habitación Clásica con cama extragrande, vistas al océano y balcón", "https://www.culmia.com/blog/wp-content/uploads/2021/07/Como-distribuir-los-muebles-en-una-habitacion.jpg", 10000, 1, 20));
		habitacionList.add(new Habitacion(1, "Habitación 2, Doble", "Habitación Clásica con 2 camas grandes o dobles, vistas al océano y balcón", "https://www.culmia.com/blog/wp-content/uploads/2021/07/Como-distribuir-los-muebles-en-una-habitacion.jpg", 20000, 2, 20));
		habitacionList.add(new Habitacion(2, "Habitación 3, Doble", "Habitación Superior en planta alta con vistas al océano y balcón", "https://www.culmia.com/blog/wp-content/uploads/2021/07/Como-distribuir-los-muebles-en-una-habitacion.jpg", 30000, 2, 20));
		habitacionList.add(new Habitacion(3, "Habitación 4, Doble", "Suite Executive en planta superior con cama extragrande y vistas al océano", "https://www.culmia.com/blog/wp-content/uploads/2021/07/Como-distribuir-los-muebles-en-una-habitacion.jpg", 40000, 2, 20));
		habitacionList.add(new Habitacion(4, "Habitación 5, Doble", "Suite Executive en planta superior con cama extragrande y vistas al océano", "https://www.culmia.com/blog/wp-content/uploads/2021/07/Como-distribuir-los-muebles-en-una-habitacion.jpg", 50000, 2, 20));
		habitacionList.add(new Habitacion(5, "Habitación 6, Doble", "Suite Executive en planta superior con cama extragrande y vistas al océano", "https://www.culmia.com/blog/wp-content/uploads/2021/07/Como-distribuir-los-muebles-en-una-habitacion.jpg", 60000, 2, 20));
		habitacionList.add(new Habitacion(6, "Habitación 7, Doble", "Suite Executive en planta superior con cama extragrande y vistas al océano", "https://www.culmia.com/blog/wp-content/uploads/2021/07/Como-distribuir-los-muebles-en-una-habitacion.jpg", 70000, 2, 20));
		habitacionList.add(new Habitacion(7, "Habitación 8, Doble", "Suite Executive en planta superior con cama extragrande y vistas al océano", "https://www.culmia.com/blog/wp-content/uploads/2021/07/Como-distribuir-los-muebles-en-una-habitacion.jpg", 80000, 2, 20));
	}
	
	public Habitacion getHabitacion(int id) {
		return habitacionList.stream().filter(h -> h.getId() == id).findFirst().orElse(null); 
	}
	
	public List<Habitacion> getAll() {
		return habitacionList;
	}
	
	// Aquí iria un addHabitacion u otro, pero como no lo piden -> eran.
}
