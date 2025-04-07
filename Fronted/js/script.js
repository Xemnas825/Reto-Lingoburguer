document.addEventListener('DOMContentLoaded', function() {
    // Cambiar categorías del menú
    const categoryBtns = document.querySelectorAll('.category-btn');
    const menuSections = document.querySelectorAll('.menu-items');
    
    categoryBtns.forEach(btn => {
        btn.addEventListener('click', function() {
            // Remover clase active de todos los botones
            categoryBtns.forEach(b => b.classList.remove('active'));
            
            // Añadir clase active al botón clickeado
            this.classList.add('active');
            
            // Obtener la categoría a mostrar
            const category = this.getAttribute('data-category');
            
            // Aquí deberías implementar la lógica para mostrar/ocultar
            // las diferentes secciones del menú según la categoría seleccionada
            // Esto es un ejemplo básico:
            menuSections.forEach(section => {
                if (section.id === category) {
                    section.style.display = 'grid';
                } else {
                    section.style.display = 'none';
                }
            });
        });
    });
    
    // Efecto de scroll suave para los enlaces del menú
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function(e) {
            e.preventDefault();
            
            const targetId = this.getAttribute('href');
            const targetElement = document.querySelector(targetId);
            
            window.scrollTo({
                top: targetElement.offsetTop - 80,
                behavior: 'smooth'
            });
        });
    });
    
    // Cambiar header al hacer scroll
    window.addEventListener('scroll', function() {
        const header = document.querySelector('header');
        if (window.scrollY > 100) {
            header.style.padding = '10px 5%';
            header.style.background = 'rgba(29, 53, 87, 0.9)';
            header.style.color = 'white';
        } else {
            header.style.padding = '20px 5%';
            header.style.background = 'white';
            header.style.color = 'var(--text-color)';
        }
    });
});