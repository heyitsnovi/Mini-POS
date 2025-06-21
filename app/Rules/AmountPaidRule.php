<?php

namespace App\Rules;

use Illuminate\Contracts\Validation\Rule;

class AmountPaidRule implements Rule
{
    /**
     * Create a new rule instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed  $value
     * @return bool
     */
    public function passes($attribute, $value)
    {
        //

        return $value >= \Cart::getTotal();
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return 'Amount Paid should be minimum of ₱ '.number_format(\Cart::getTotal(),2).' or higher';
    }
}
