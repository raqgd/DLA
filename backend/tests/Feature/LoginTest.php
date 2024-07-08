<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class LoginTest extends TestCase
{
    /**
     * A basic feature test example.
     */
    public function a_existing_user__can_login(): void
    {
        $this->withoutExceptionHandling();
        #teniendo
        $credentials = [
            'email'=>'ejemplo@gmail.com', 'password'=>'hola123'];
        
        #haciendo 
        $response = $this->post('$this->apiBase', $credentials);
        

        $response->assertStatus(200);
        $response->assertJsonStructure(['data'=>['token']]);
        
    }
    public function a_non_existing_user__cannot_login(): void
    {
        #teniendo
        $credentials = [
            'email'=>'ejemplo@nonexisting.com', 'password'=>'hola123'];
        
        #haciendo 
        $response = $this->post('/api/v1/login', $credentials);

        $response->assertStatus(200);
        $response->assertJsonStructure(['data'=>['token']]);
        
    }
    public function email_required(): void
    {
        #teniendo
        $credentials = ['password'=>'jasja'];
        
        #haciendo 
        $response = $this->post('/api/v1/login', $credentials);

        $response->assertStatus(200);
        $response->assertJsonStructure(['data'=>['token']]);
        
    }

    public function password_required(): void
    {
        #teniendo
        $credentials = ['email'=>'ejemplo@nonexisting.com'];
        
        #haciendo 
        $response = $this->post('/api/v1/login', $credentials);

        $response->assertStatus(200);
        $response->assertJsonStructure(['data'=>['token']]);
        
    }
}
