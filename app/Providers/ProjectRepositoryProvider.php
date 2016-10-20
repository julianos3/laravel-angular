<?php

namespace Project\Providers;

use Illuminate\Support\ServiceProvider;

class ProjectRepositoryProvider extends ServiceProvider
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
        $this->app->bind(
            \Project\Repositories\ClientRepository::class,
            \Project\Repositories\ClientRepositoryEloquent::class
        );
        $this->app->bind(
            \Project\Repositories\ProjectRepository::class,
            \Project\Repositories\ProjectRepositoryEloquent::class
        );
        $this->app->bind(
            \Project\Repositories\ProjectNoteRepository::class,
            \Project\Repositories\ProjectNoteRepositoryEloquent::class
        );
        $this->app->bind(
            \Project\Repositories\ProjectFileRepository::class,
            \Project\Repositories\ProjectFileRepositoryEloquent::class
        );
        $this->app->bind(
            \Project\Repositories\ProjectTaskRepository::class,
            \Project\Repositories\ProjectTaskRepositoryEloquent::class
        );
        $this->app->bind(
            \Project\Repositories\ProjectMemberRepository::class,
            \Project\Repositories\ProjectMemberRepositoryEloquent::class
        );
        $this->app->bind(
            \Project\Repositories\UserRepository::class,
            \Project\Repositories\UserRepositoryEloquent::class
        );
    }
}
