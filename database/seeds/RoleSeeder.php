<?php

use Illuminate\Database\Seeder;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('roles')->delete();

        DB::table('roles')->insert([
            ['name' => 'Super Admin', 'access' => 'Full system all modules', 'permissions' => 'Edit and Delete all fields'],
            ['name' => 'General User', 'access' => 'Limited access', 'permissions' => 'Limited access']
        ]);
    }
}
