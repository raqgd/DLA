// Obtiene el canvas y su contexto
var canvas = document.getElementById('smokeCanvas');
var ctx = canvas.getContext('2d');

// Configuración del canvas
canvas.width = window.innerWidth;
canvas.height = window.innerHeight;

// Array para almacenar las partículas de humo
var particles = [];

// Función para generar partículas de humo
function createParticles() {
    for (var i = 0; i < 100; i++) {
        particles.push({
            x: canvas.width / 2,
            y: canvas.height,
            radius: Math.random() * 10 + 10,
            density: Math.random() * 10
        });
    }
}

// Función para dibujar el humo
function draw() {
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    ctx.fillStyle = 'rgba(255, 255, 255, 0.5)';
    ctx.beginPath();

    for (var i = 0; i < particles.length; i++) {
        var p = particles[i];
        ctx.moveTo(p.x, p.y);
        ctx.arc(p.x, p.y, p.radius, 0, Math.PI * 2, true);
    }

    ctx.fill();
    update();
}

// Función para actualizar la posición de las partículas
function update() {
    for (var i = 0; i < particles.length; i++) {
        var p = particles[i];
        p.y -= p.density;

        if (p.y <= 0) {
            p.y = canvas.height;
        }
    }
}

// Inicialización
createParticles();
setInterval(draw, 30);
