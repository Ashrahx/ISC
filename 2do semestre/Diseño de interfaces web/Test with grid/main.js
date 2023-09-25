let scaling = 1.50;
// Contador y variables
let currentSliderCount = 0;
let videoCount = $(".slider-container").children().length;
let showCount = 4;
let sliderCount = videoCount / showCount;
let controlsWidth = 40;
let scollWidth = 0;
    

$(document).ready(function(){
    //$('.slider-container .slide:nth-last-child(-n+4)').prependTo('.slider-container');
    init();
    
});
$( window ).resize(function() {
    init();
});
function init(){
    // Variables
    let win = $(window);
    let sliderFrame = $(".slider-frame");
    let sliderContainer = $(".slider-container");
    let slide = $(".slide");
    
    // Contador
    let scollWidth = 0;
 
    
    //Tamaños
    let windowWidth = win.width();
    let frameWidth = win.width() - 80;
     if(windowWidth >= 0 && windowWidth <= 414){
       showCount = 2;
   }else if(windowWidth >= 414 &&  windowWidth <= 768){
       showCount = 3;
   }else{
       showCount = 4;
   }
    let videoWidth = ((windowWidth - controlsWidth * 2) / showCount );
    let videoHeight = Math.round(videoWidth / (16/9));
    
    let videoWidthDiff = (videoWidth * scaling) - videoWidth;
    let videoHeightDiff = (videoHeight * scaling) - videoHeight;
    
  

    sliderFrame.width(windowWidth);
    sliderFrame.height(videoHeight * scaling);
    
    
    sliderContainer.height(videoHeight * scaling);
    sliderContainer.width((videoWidth * videoCount) + videoWidthDiff);
    sliderContainer.css("top", (videoHeightDiff / 2));
    sliderContainer.css("margin-left", (controlsWidth));
    
    slide.height(videoHeight);
    slide.width(videoWidth);
    
    //Hover
    $(".slide").mouseover(function() {
        $(this).css("width", videoWidth * scaling);
        $(this).css("height", videoHeight * scaling);
        $(this).css("top", -(videoHeightDiff / 2));
        if($(".slide").index($(this)) == 0 || ($(".slide").index($(this))) % 4 == 0){
          // No hace nada
        }
        else if(($(".slide").index($(this)) + 1) % 4 == 0 && $(".slide").index($(this)) != 0){
            $(this).parent().css("margin-left", -(videoWidthDiff - controlsWidth));
        }
        else{
            $(this).parent().css("margin-left", - (videoWidthDiff / 2));
        }
    }).mouseout(function() {
        $(this).css("width", videoWidth * 1);
        $(this).css("height", videoHeight * 1);
        $(this).css("top", 0);
        $(this).parent().css("margin-left", controlsWidth);
    });
    
    // Controls
    controls(frameWidth, scollWidth);
}
function controls(frameWidth, scollWidth){
    let prev = $(".prev");
    let next = $(".next");
    
    next.on("click", function(){
        console.log(currentSliderCount);
        console.log(sliderCount);
        scollWidth = scollWidth + frameWidth;
        $('.slider-container').animate({
            left: - scollWidth
        }, 300, function(){ 
            if(currentSliderCount >= sliderCount-1){
                $(".slider-container").css("left", 0);
                currentSliderCount = 0;
                scollWidth = 0;
            }else{
                currentSliderCount++;
            }
        });        
    });
    prev.on("click", function(){
        scollWidth = scollWidth - frameWidth;
        $('.slider-container').animate({
            left: + scollWidth
        }, 300, function(){ 
            currentSliderCount--;
        });
    });
};

//Slider
var swiper = new Swiper('.blog-slider', {
    spaceBetween: 30,
    effect: 'fade',
    loop: true,
   
    // autoHeight: true,
    pagination: {
      el: '.blog-slider__pagination',
      clickable: true,
    }
  });


  /* Buscador */

  let animes = [];

      function cargarDatos() {
        let xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function() {
          if (xhr.readyState === 4 && xhr.status === 200) {
            let datos = JSON.parse(xhr.responseText);
            animes = datos.animes;
          }
        };
        xhr.open("GET", "animes.json", true);
        xhr.send();
      }

      cargarDatos();

      function buscarAnime() {
        let input = document.getElementById("input-busqueda").value.toLowerCase();
        let resultados = document.getElementById("resultados");
        let contenedorResultados = document.getElementById("contenedor-resultados");
        contenedorResultados.style.display = "none"; // Ocultamos el contenedor de resultados

        if (input.length > 0) {
          resultados.innerHTML = "";
          for (let i = 0; i < animes.length; i++) {
            let anime = animes[i];
            if (anime.nombre.toLowerCase().includes(input)) {
              let elemento = document.createElement("div");
              elemento.classList.add("resultado");
              elemento.innerHTML = `
                <img src="${anime.imagen}">
                <h2>${anime.nombre}</h2>
                <p>${anime.descripcion}</p>
                <p>Género: ${anime.genero.join(", ")}</p>
                <p>Episodios: ${anime.episodios}</p>
                <p>Valoración: ${generarEstrellas(anime.valoracion)}</p>
              `;
              resultados.appendChild(elemento);
            }
          }
          contenedorResultados.style.display = "block"; // Mostramos el contenedor de resultados
        }
      }

      function generarEstrellas(valoracion) {
        let estrellas = "";
        for (let i = 0; i < 5; i++) {
          if (i < valoracion) {
            estrellas += "★";
          } else {
            estrellas += "☆";
          }
        }
        return estrellas;
      }
