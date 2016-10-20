<?php

namespace Project\Providers;

use Illuminate\Support\ServiceProvider;

class RepositoryServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }

    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->bind(\Project\Repositories\ProjectRepository::class, \Project\Repositories\ProjectRepositoryEloquent::class);
        $this->app->bind(\Project\Repositories\ProjectNoteRepository::class, \Project\Repositories\ProjectNoteRepositoryEloquent::class);
        //:end-bindings:
    }
}
