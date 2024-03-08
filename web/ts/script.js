window.addEventListener('DOMContentLoaded', () => {
    // Desaparece la pantalla de carga después de 3 segundos
    setTimeout(() => {
        document.querySelector('.loader').style.animation = 'fadeOut 1s forwards';
        animateSlider(); // Llama a la función para iniciar la animación del slider
    }, 1000); // Espera 3 segundos para asegurar que la animación de fadein se complete
});

function animateSlider() {
    const sliders = document.querySelectorAll('.slider');

    sliders.forEach(slider => {
        const sliderHeight = slider.clientHeight;
        const images = slider.querySelectorAll('img');

        images.forEach(img => {
            img.style.transition = 'transform 5s ease-in-out'; // Ajusta la duración de la transición
            img.style.transform = 'translateY(-' + sliderHeight + 'px)'; // Inicia la animación
        });

        // Escucha el evento transitionend en el último conjunto de imágenes
        images[images.length - 1].addEventListener('transitionend', () => {
            images.forEach(img => {
                img.style.transition = 'none'; // Reinicia la transición
                img.style.transform = 'translateY(0)'; // Reinicia la posición
                setTimeout(() => {
                    img.style.transition = 'transform 5s ease-in-out'; // Restablece la transición después de un pequeño retraso
                    img.style.transform = 'translateY(-' + sliderHeight + 'px)'; // Reinicia la animación
                }, 0);
            });
        });º
    });
}