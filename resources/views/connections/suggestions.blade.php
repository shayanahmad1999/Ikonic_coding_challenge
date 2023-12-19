<!-- resources/views/suggestions.blade.php -->
<h1>Suggestions</h1>

@foreach ($suggestions as $user)
    @include('components.suggestion', ['user' => $user])
@endforeach
