// Mobile Menu Toggle
document.addEventListener('DOMContentLoaded', function() {
    const mobileMenuToggle = document.querySelector('.mobile-menu-toggle');
    const navLinks = document.querySelector('.nav-links');
    
    if (mobileMenuToggle && navLinks) {
        mobileMenuToggle.addEventListener('click', function() {
            navLinks.classList.toggle('show');
        });
    }
    
    // Close mobile menu when clicking outside
    document.addEventListener('click', function(event) {
        if (!event.target.closest('.main-nav') && navLinks.classList.contains('show')) {
            navLinks.classList.remove('show');
        }
    });

    // Login Modal functionality
    const loginLink = document.querySelector('.login-link');
    const loginModal = document.getElementById('loginModal');
    const closeModal = document.querySelector('.close-modal');
    
    if (loginLink && loginModal && closeModal) {
        loginLink.addEventListener('click', function(e) {
            e.preventDefault();
            loginModal.style.display = 'flex';
        });
        
        closeModal.addEventListener('click', function() {
            loginModal.style.display = 'none';
        });
        
        // Close modal when clicking outside content
        window.addEventListener('click', function(event) {
            if (event.target === loginModal) {
                loginModal.style.display = 'none';
            }
        });
    }
    
    // Form submission handling
    const forms = document.querySelectorAll('form');
    
    forms.forEach(form => {
        form.addEventListener('submit', function(e) {
            e.preventDefault();
            // Here you would typically handle form submission via AJAX
            // For now, we'll just show an alert
            alert('Form submitted! In a real application, this data would be sent to a server.');
        });
    });
    
    // Basic Product Filtering (to be expanded)
    const productCards = document.querySelectorAll('.product-card');
    const addToCartButtons = document.querySelectorAll('.product-card .btn');
    
    addToCartButtons.forEach(button => {
        button.addEventListener('click', function() {
            const productName = this.closest('.product-card').querySelector('h3').textContent;
            alert(`${productName} added to cart!`);
            // In a real application, this would add the product to a cart system
        });
    });
});

// Smooth scroll for anchor links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();
        
        const targetId = this.getAttribute('href');
        if (targetId === '#') return;
        
        const targetElement = document.querySelector(targetId);
        if (targetElement) {
            window.scrollTo({
                top: targetElement.offsetTop - 100, // Offset for header
                behavior: 'smooth'
            });
        }
    });
});

// Simple Animation on Scroll
window.addEventListener('scroll', function() {
    const animatedElements = document.querySelectorAll('.featured-products, .locations-preview, .about-preview, .careers-preview');
    
    animatedElements.forEach(element => {
        const elementPosition = element.getBoundingClientRect().top;
        const screenPosition = window.innerHeight / 1.3;
        
        if (elementPosition < screenPosition) {
            element.style.opacity = '1';
            element.style.transform = 'translateY(0)';
        }
    });
});

// Placeholder for language switching functionality
function switchLanguage(lang) {
    console.log(`Switching to ${lang} language`);
    // In a real application, this would change the content language
    // For now, we'll just log the action
}

// Admin Panel Access Control (Basic Implementation)
function checkAdminAccess() {
    // This is just a placeholder - in a real app, you would check against server authentication
    const isAdmin = localStorage.getItem('isAdmin') === 'true';
    const adminElements = document.querySelectorAll('.admin-only');
    
    adminElements.forEach(element => {
        if (isAdmin) {
            element.style.display = 'block';
        } else {
            element.style.display = 'none';
        }
    });
}

// Call this function when the page loads
document.addEventListener('DOMContentLoaded', checkAdminAccess);