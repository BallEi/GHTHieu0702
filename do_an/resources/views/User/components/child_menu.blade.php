@if($categoryParent->categoryChildrent->count())
    <ul class="top-menu-item">
        @foreach($categoryParent->categoryChildrent as $categoryChild)
            <li>

                <a href="{{ $categoryChild->slug }}">{{ $categoryChild->name }}</a>
{{--                @if($categoryChild->categoryChildrent->count())--}}
{{--                    @include('User.components.child_menu',['$categoryParent' => $categoryChild])--}}
{{--                @endif--}}
            </li>
        @endforeach
    </ul>
@endif
