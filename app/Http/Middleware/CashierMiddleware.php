<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Auth;


class CashierMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {	
    	//Allow both admin & cashier roles
    	
        if (Auth::check() &&  (Auth::user()->isAn('admin') || Auth::user()->isAn('cashier')) ) {
            return $next($request);
        }

        abort(403, 'Unauthorized action.');
    }
}
