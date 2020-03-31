const elements = []

document.querySelectorAll("h3").forEach(el => {
  elements.push(el.innerText)
})