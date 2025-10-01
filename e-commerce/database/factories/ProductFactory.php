<?php

namespace Database\Factories;

use App\Models\Category;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */

    protected $model = Product::class;
    
    public function definition(): array
    {
        return [
            'name'=>fake()->word(),
            'description'=>fake()->sentence(),
            'price'=>fake()->numberBetween(10,100),
            'quantity'=>fake()->numberBetween(1,100),
            'category_id'=>Category::inRandomOrder()->first()->id,
            'image'=>fake()->imageUrl(),
        ];
    }
}
