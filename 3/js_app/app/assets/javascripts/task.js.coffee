class Task
  constructor: (element) ->
    @element = element
    @init()
    
  init: () ->
    $('.remove').live('click', @deleteTask)
    $('#create_task').click @createTask
    @findTasks()
    
  findTasks: ->
    $.get '/tasks.json', (data) =>
      tasks = for task in data
        @template(task)
      @element.html tasks.join('')
  
  createTask: (e, ui) =>
    $name = $('#task_name')
    $.post '/tasks', { task: {name: $name.val()} }, (data) =>
      @element.append @template(data)
      $name.val ''
      
  deleteTask: (e, ui) =>
    id = $(e.target).parent().attr('data-id')
    $.post "/tasks/#{id}.json", { _method: 'delete' }, (data) =>
      @element.find("li[data-id='#{data.id}']").remove()
    
  template: (task) ->
    "<li data-id='#{task.id}'>#{task.name} <a href='#' class='remove'>Quitar</a></li>"
  
window.Task = Task