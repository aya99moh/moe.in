<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form1.aspx.cs" Inherits="mybar4.links_menu.log.Form1" %>

<!DOCTYPE html>
@php
    $lang = app()->getLocale();
    $dir = config('app.available_locales')[$lang]['dir'] ?? 'ltr';
    $current_page ??= '';
@endphp

<html lang="{{ $lang }}" dir="{{ $dir }}">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>{{ config('app.name') }}</title>
    <style>
        .video {
            position: relative;
            margin-top: 60px;
            max-width: 700px;
            margin: auto;
        }

        .video::before {
            position: absolute;
            content: "";
            width: 100%;
            height: calc(100% - 51px);
            background-color: transparent;
            z-index: 5;
        }

        .video::after {
            position: absolute;
            content: "";
            width: 68px;
            height: 39px;
            background-color: transparent;
            z-index: 5;
            bottom: 4px;
            right: 51px;
        }

        .phone {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: white;
            font-size: 26px;
            padding: 4px 6px;
            background-color: #ffffff12;
            opacity: 0.5;
        }
        .auto-style1 {
            width: 1000px;
            height: 605px;
        }
    </style>
</head>
<body>
    <img alt="" class="auto-style1" src="arabic.jpg" /><div class="video">
    <iframe
        style="width: 100%; height: 500px"
        src="{{ request('url', 'https://www.youtube-nocookie.com/embed/iu-LBY7NXD4') }}?autoplay=1"
        title="{{ config('app.name') }}"
        frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
        allowfullscreen
    ></iframe>
    <p class="phone">{{ request('watermark', config('app.name')) }}</p>
</div>
<script>
    document.addEventListener('contextmenu', event => event.preventDefault());
    document.onkeydown = function (e) {
        return false;
    }
    navigator.keyboard.lock();
</script>
</body>
</html>
