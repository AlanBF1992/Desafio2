package cl.desafiolatam.model;

public class Habitacion {
	private int id;
	private String nombre;
	private String descripcion;
	private String imagen;
	private int precio;
	private int habitaciones;
	private int metraje;
	
	public Habitacion(int id, String nombre, String descripcion, String imagen, int precio, int habitaciones,
			int metraje) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.imagen = imagen;
		this.precio = precio;
		this.habitaciones = habitaciones;
		this.metraje = metraje;
	}

	public int getId() {
		return id;
	}

	public String getNombre() {
		return nombre;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public String getImagen() {
		return imagen;
	}

	public int getPrecio() {
		return precio;
	}

	public int getHabitaciones() {
		return habitaciones;
	}

	public int getMetraje() {
		return metraje;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

	public void setPrecio(int precio) {
		this.precio = precio;
	}

	public void setHabitaciones(int habitaciones) {
		this.habitaciones = habitaciones;
	}

	public void setMetraje(int metraje) {
		this.metraje = metraje;
	}
	
}
