<?php

namespace Tests\Browser\Modules\Blog;

use App\Models\User;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Support\Facades\File;
use Laravel\Dusk\Browser;
use Modules\Blog\Entities\BlogCategory;
use Tests\DuskTestCase;

class CategoryTest extends DuskTestCase
{
    use WithFaker;


    public function setUp(): void
    {
        parent::setUp();


    }

    public function tearDown(): void
    {
        $categories = BlogCategory::all();
        foreach($categories as $category){
            File::delete(public_path($category->image_url));
            $category->delete();
        }

        parent::tearDown(); // TODO: Change the autogenerated stub
    }

    /**
     * A Dusk test example.
     *
     * @return void
     */
    public function test_for_visit_index_page()
    {
        $this->browse(function (Browser $browser) {
            $browser->loginAs(1)
                    ->visit('/blog/categories')
                    ->assertSee('blog category');
        });
    }

    public function test_for_create_main_category(){
        $this->test_for_visit_index_page();
        $this->browse(function (Browser $browser) {
            $browser->type('#name', $this->faker->name)
                ->attach('#document_file_1', public_path('/frontend/default/img/item_description.png'))
                ->click('#add_btn')
                ->assertPathIs('/blog/categories')
                ->waitFor('.toast-message',25)
                ->assertSeeIn('.toast-message', 'Operation done successfully.');
        });
    }

    public function test_for_create_sub_category(){
        $this->test_for_create_main_category();
        $this->browse(function (Browser $browser) {
            $browser->type('#name', $this->faker->name)
                ->click('#main-content > section > div > div > div.col-lg-4 > div > div > form > div > div > div:nth-child(1) > div:nth-child(2) > div > div')
                ->click('#main-content > section > div > div > div.col-lg-4 > div > div > form > div > div > div:nth-child(1) > div:nth-child(2) > div > div > ul > li:nth-child(2)')
                ->click('#add_btn')
                ->assertPathIs('/blog/categories')
                ->waitFor('.toast-message',25)
                ->assertSeeIn('.toast-message', 'Operation done successfully.');
        });
    }

    public function test_for_edit_category(){
        $this->test_for_create_main_category();
        $this->browse(function (Browser $browser) {
            $category = BlogCategory::latest()->first();

            $browser->click('#DataTables_Table_0 > tbody > tr:nth-child(1) > td:nth-child(4) > div > button')
                ->click('#DataTables_Table_0 > tbody > tr:nth-child(1) > td:nth-child(4) > div > div > a:nth-child(1)')
                ->assertPathIs('/blog/categories/'.$category->id.'/edit')
                ->assertSee('Edit blog category')
                ->type('#name', $this->faker->name)
                ->attach('#document_file_1', public_path('/frontend/default/img/item_description_2.png'))
                ->click('#edit_btn')
                ->assertPathIs('/blog/categories')
                ->waitFor('.toast-message',25)
                ->assertSeeIn('.toast-message', 'Operation done successfully.');
                
        });
    }

    public function test_for_delete_category(){
        $this->test_for_create_main_category();
        $this->browse(function (Browser $browser) {
            $category = BlogCategory::latest()->first();
            $browser->click('#DataTables_Table_0 > tbody > tr:nth-child(1) > td:nth-child(4) > div > button')
                ->click('#DataTables_Table_0 > tbody > tr:nth-child(1) > td:nth-child(4) > div > div > a:nth-child(2)')
                ->whenAvailable('#deleteItem_'.$category->id.' > div > div > div.modal-body > div.mt-40.d-flex.justify-content-between', function($modal){
                    $modal->click('input.primary-btn.fix-gr-bg')
                        ->assertPathIs('/blog/categories');
                })
                ->waitFor('.toast-message',25)
                ->assertSeeIn('.toast-message', 'Operation done successfully.');
                
        });
    }


}