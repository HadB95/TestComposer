<?php 
declare(strict_types=1);
require "vendor/autoload.php";
use PHPUnit\Framework\TestCase;
use App\Calcul\Addition;
use App\Math\Addition as MathAddition;


final class AdditionTest extends TestCase
{

    public function testCalculAdditionAddSame() : void{
        $ad = new Addition();
        $somme = $ad->add([6,4]);
        $this->assertSame(10,$somme,"test Addition::add");
    }

    public function testCalculAdditionAddNotSame(): void{
        $ad = new Addition();
        $somme = $ad->add([6,4]);
        $this->assertNotSame(9,$somme,"test Addition::add");
    }

    public function testMathAdditionAddEquals() : void{
        $ad = new MathAddition();
        $somme = $ad->add(6,4);
        $this->assertEquals(10,$somme,"test Addition::add");
    }
    public function testMathAdditionAddNotEquals() : void{
        $ad = new MathAddition();
        $somme = $ad->add(6,4);
        $this->assertNotEquals(9,$somme,"test Addition::add");
    }
    
}