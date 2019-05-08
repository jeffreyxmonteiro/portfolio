ready = ->
  Typed.new '.element',
    strings: [
      'Having trouble bringing your concept to life?'
      'Team up with Jeff to give your ideas some TEETH.'
    ]
    typeSpeed: 0
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready
