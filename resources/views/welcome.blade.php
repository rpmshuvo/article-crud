<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>Article Crud</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200;600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
            <a class="navbar-brand" href="#">Article Crud</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
          
            <div class="collapse navbar-collapse" id="navbarColor01">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item ">
                  <a class="nav-link" href="/">Home
                  </a>
                </li>
              </ul>
            </div>
        </nav>

        <div class="container">
            <h1>Add Article</h1>
            <form id="articleForm">
                <div class="form-group">
                    <label for="">Title</label>
                    <input type="text" name="title" id="title" class="form-control">
                </div>
                <div class="form-group">
                    <label for="">Body</label>
                    <textarea name="body" id="body" class="form-control"></textarea>
                </div>
                <input type="hidden" id="article_id" name="article_id" value="">
                <input type="submit" value="submit" class="btn btn-primary">
            </form>
            <br>
            <table id="table_id" class="display">
                <thead>
                    <tr>
                        <th>Title</th>
                        <th>Body</th>
                        <th>Created At</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody id="articles">
                    @if ($articles)
                        @foreach ($articles as $article)
                            <tr>
                                <td>{{$article->title}}</td>
                                <td>{{$article->body}}</td>
                                <td>{{$article->created_at->diffForHumans()}}</td>
                                <td>
                                    <a href="#" class="deleteLink" data-id="{{$article->id}}">Delete</a>
                                    <a href="#" class="editLink" data-id="{{$article->id}}">Edit</a>
                                </td>
                            </tr>
                        @endforeach
                    @endif
                </tbody>
            </table>
          </div>


        {{-- <div class="flex-center position-ref full-height">
            @if (Route::has('login'))
                <div class="top-right links">
                    @auth
                        <a href="{{ url('/home') }}">Home</a>
                    @else
                        <a href="{{ route('login') }}">Login</a>

                        @if (Route::has('register'))
                            <a href="{{ route('register') }}">Register</a>
                        @endif
                    @endauth
                </div>
            @endif

            <div class="content">
                
            </div>
        </div> --}}
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script type="text/javascript">
            $(document).ready(function () {

                $('#table_id').DataTable({
                    "order": [[ 2, "asc" ]]
                });
    
                //submit event
                $('#articleForm').on('submit', function (e) {
                   e.preventDefault(); 
                   let title = $('#title').val();
                   let body = $('#body').val();
    
                   addArticle(title, body);
                });
    
                //Edit Event
                $('body').on('click', '.editLink', function (e) {
                    e.preventDefault();
                    let article_id = $(this).data('id');
                    editArticle(article_id);
                });
    
                //Edit Article through api
                function editArticle(id) {
                    $.ajax({
                        method:'GET',
                        url:'/api/article/'+id,
                    }).done(function (article) {
                        $('#title').val(article.title);
                        $('#body').val(article.body);
                        $('#article_id').val(article.id);
                        
                    });
                }
    
    
                //Delete Event
                $('body').on('click', '.deleteLink', function (e) {
                    e.preventDefault();
                    let article_id = $(this).data('id');
                    deleteArticle(article_id);
                });
    
    
                //Delete Article through api
                function deleteArticle(id) {
                    $.ajax({
                        method:'POST',
                        url:'/api/article/'+id,
                        data: {_method:'DELETE'}
                    }).done(function (article) {
                        alert('Article Removed');
                        location.reload();
                    });
                }
    
                //Insert Article using API
                function addArticle(title, body) {
                    let article_id = $('#article_id').val();
    
                    if (article_id != '') {
                        $.ajax({
                            type: "PUT",
                            url:'/api/article',
                            // headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                            data: {
                                title :title, 
                                body :body, 
                                article_id:article_id 
                            },
                            // dataType: "text",
                        }).done(function (article) {
                            alert('Article #'+ article.id +'Updated');
                            location.reload();
                        });

                    }else{
                        $.ajax({
                            type:'POST',
                            url:'/api/article',
                            data: {title:title, body:body}
                        }).done(function (article) {
                            alert('Article #'+ article.id +'added');
                            location.reload();
                        });
                    }
    
                }
    
            });
        </script>
    </body>
</html>
