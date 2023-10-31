<?php

namespace Tests\Browser\Modules\FrontendCMS;

use App\Models\User;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\WithFaker;
use Laravel\Dusk\Browser;
use Modules\FrontendCMS\Entities\InQuery;
use Tests\DuskTestCase;

class ContactContentPageTest extends DuskTestCase
{
    use WithFaker;

    public function setUp(): void
    {
        parent::setUp();


    }

    public function tearDown(): void
    {
        $inquery_list = InQuery::pluck('id');
        InQuery::destroy($inquery_list);

        parent::tearDown(); // TODO: Change the autogenerated stub
    }
    
    public function test_for_contact_content_page()
    {
        $this->browse(function (Browser $browser) {
            $browser->loginAs(User::find(1))
                ->visit('/frontendcms/contact-content')
                ->assertSee('Contact-us Content');
        });
    }


    public function test_for_update_contact_content_page(){
        $this->browse(function (Browser $browser) {
            $browser->loginAs(User::find(1))
                ->visit('/frontendcms/contact-content')
                ->type('#formData > div > div:nth-child(2) > div > input', 'initial main title edit')
                ->type('#formData > div > div:nth-child(3) > div > input', 'initial subtitle edit')
                ->type('#slug', 'initail-slug-edit')
                ->type('#formData > div > div:nth-child(5) > div > input','info@amazcart.com')
                ->type('#formData > div > div.col-xl-12 > div > div > div.note-editing-area > div.note-editable','initail description edit')
                ->click('#mainSubmit')
                ->waitFor('.toast-message',25)
                ->assertSeeIn('.toast-message', 'Updated successfully!');
        });
    }

    public function test_for_add_inquery(){
        $this->browse(function (Browser $browser) {
            $browser->loginAs(User::find(1))
            ->visit('/frontendcms/contact-content')
            ->type('#name', $this->faker->name)
            ->click('#theme_nav > li:nth-child(2) > label > span')
            ->click('#create_btn')
            ->waitFor('.toast-message',25)
            ->assertSeeIn('.toast-message', 'Added successfully!');

        });
    }

    public function test_for_edit_inquery(){
        $this->test_for_add_inquery();
        $this->browse(function (Browser $browser) {
            $browser->visit('/frontendcms/contact-content')
                ->click('#DataTables_Table_0 > tbody > tr > td:nth-child(4) > div')
                ->click('#DataTables_Table_0 > tbody > tr > td:nth-child(4) > div > div > a.dropdown-item.edit_query')
                ->waitForText('Edit InQUery', 25)
                ->assertSee('Edit InQUery')
                ->type('#name', $this->faker->name)
                ->click('#theme_nav > li:nth-child(1) > label > span')
                ->click('#edit_btn')
                ->waitFor('.toast-message',25)
                ->assertSeeIn('.toast-message', 'Updated successfully!');
        });
    }

    public function test_for_delete_inquery(){
        $this->test_for_add_inquery();
        $this->browse(function (Browser $browser) {
            $browser->visit('/frontendcms/contact-content')
                ->click('#DataTables_Table_0 > tbody > tr > td:nth-child(4) > div')
                ->click('#DataTables_Table_0 > tbody > tr > td:nth-child(4) > div > div > a.dropdown-item.delete_query')
                ->whenAvailable('#dataDeleteBtn', function($modal){
                    $modal->click('#dataDeleteBtn');
                })
                ->waitFor('.toast-message',25)
                ->assertSeeIn('.toast-message', 'Deleted successfully!');
        });
    }

    public function test_for_status_change_inquery(){
        $this->test_for_add_inquery();
        $this->browse(function (Browser $browser) {
            $browser->visit('/frontendcms/contact-content')
                ->click('#DataTables_Table_0 > tbody > tr > td:nth-child(3) > label > div')
                ->waitFor('.toast-message',25)
                ->assertSeeIn('.toast-message', 'Status Change Successfully!');
        });
    }

    
}
