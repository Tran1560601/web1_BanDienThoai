<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\categories;
use App\type;
use App\type_camera;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('left-menu', function($view)
        {
            $nhasanxuat = categories::all();
            $giatien = type::all();
            $camera = type_camera::all();
            $view->with(['nsx'=> $nhasanxuat, 'gia'=> $giatien, 'type_camera'=> $camera]);
        });
    }


    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
