/* Opciones */
let options = document.querySelectorAll('.option')
let optionsView = document.querySelectorAll('.view-option')


let showIndex = 0
let display = 'flex'
let borderHeight = '6px'

options.forEach((el, index) => {
  el.addEventListener('click', () => {
    showIndex = index
    // Cambiar opciones visibles
    for (let i = 0; i < optionsView.length; i++) {
      optionsView[i].style.display = 'none'
      optionsView[showIndex].style.display = display
    }

    // Cambiar el fondo del borde
    for (let i = 0; i < options.length; i++) {
      options[i].style.borderBottom = 'none'
      options[i].style.opacity = '0.5'
      options[showIndex].style.borderBottom = `${borderHeight} solid blueviolet`
      options[showIndex].style.opacity = '1'
    }
  })
})

// Opción predeterminada cuando se carga la página
for (let i = 0; i < optionsView.length; i++) {
  optionsView[i].style.display = 'none'
  optionsView[showIndex].style.display = display
}

// Opción visible predeterminada cuando se carga la página
for (let i = 0; i < options.length; i++) {
  options[i].style.borderBottom = 'none'
  options[i].style.opacity = '0.5'
  options[showIndex].style.borderBottom = `${borderHeight} solid blueviolet`
  options[showIndex].style.opacity = '1'
}


