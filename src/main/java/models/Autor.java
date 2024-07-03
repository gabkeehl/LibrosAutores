package models;

	public class Autor {

		public int id; 
		public String nombre;
		public String apellido; 
		public String notas; 
		
		public Autor(int id, String nombre, String apellido, String notas) {
			super();
			this.id = id;
			this.nombre = nombre;
			this.apellido = apellido;
			this.notas = notas;
		}

		@Override
		public String toString() {
			return "Autor [id=" + id + ", nombre=" + nombre + ", apellido=" + apellido + ", notas=" + notas + "]";
		}
	}

