@extends('layouts.base')

@section('content')

<x-guest-layout>
    <x-auth-card>
        <x-slot name="logo">
            <a href="/">
                {{-- <x-application-logo class="w-20 h-20 fill-current text-gray-500" /> --}}
            </a>
        </x-slot>

        <!-- Session Status -->
        <x-auth-session-status class="mb-4" :status="session('status')" />

        <!-- Validation Errors -->
        <x-auth-validation-errors class="mb-4" :errors="$errors" />

        <form method="POST" action="{{ route('login') }}">
            @csrf

            <!-- Email Address -->
            <div>
                <x-label for="email" :value="__('Email')" />

                <x-input id="email" class="border block mt-1 w-full" type="email" name="email" :value="old('email')" required autofocus />
            </div>

            <!-- Password -->
            <div class="mt-4">
                <x-label for="password" :value="__('Password')" />

                <x-input id="password" class="border block mt-1 w-full"
                                type="password"
                                name="password"
                                required autocomplete="current-password" />
            </div>

            <!-- Remember Me -->
            <div class="block mt-4">
                <label for="remember_me" class="inline-flex items-center">
                    <input id="remember_me" type="checkbox" class="rounded border border-gray-300 text-indigo-600 shadow-sm focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50" name="remember">
                    <span class="ml-2 text-sm text-gray-600">{{ __('Remember me') }}</span>
                </label>
            </div>

            <div class="flex items-center justify-end mt-4">
                @if (Route::has('password.request'))
                    <a class="underline text-sm text-gray-600 hover:text-gray-900" href="{{ route('password.request') }}">
                        {{ __('Mot de passe oublié ?') }}
                    </a>
                @endif

                <x-button class="ml-3">
                    {{ __('Log in') }}
                </x-button>
            </div>
        </form>
    </x-auth-card>
</x-guest-layout>



<div class="bg-white p-10 md:w-3/4 lg:w-1/2 mx-auto">

    <form action="">

    @csrf

        <!--       flex - asjad korvuti, nb! flex-1 - element kogu ylejaanud laius -->
        <div class="flex items-center mb-5">
            <!--         tip - here neede inline-block , but why? -->
            <label for="id" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Identifiant</label>
            <input type="text" id="id" name="id" placeholder="John_Doe" class="placeholder-yellow-400 flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-yellow-600 placeholder-gray-400
                        outline-none">
        </div>

        <div class="flex items-center mb-5">
            <!--         tip - here neede inline-block , but why? -->
            <label for="mdp" class="inline-block w-20 mr-6 text-right 
                                   font-bold text-gray-600">Mot de passe</label>
            <input type="password" id="mdp" name="mdp" placeholder="**********" class="placeholder-yellow-400 flex-1 py-2 border-b-2 border-gray-400 focus:border-gray-900 
                        text-yellow-600 placeholder-gray-400
                        outline-none">
        </div>

        <div class="text-right">
            <button type="submit"
                class="py-3 px-8 bg-yellow-500 text-black font-bold rounded hover:text-yellow-500 border-2 border-yellow-500 hover:bg-white">Connexion</button>
        </div>

        <br>

        <span>Si n'avez pas de compte, <a href="{{ Route('inscription') }}" class="hover:underline text-yellow-500">cliquez ici pour vous
                inscrire.</a></span>
    </form>
</div>

@endsection