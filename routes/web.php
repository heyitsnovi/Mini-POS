<?php

use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\ChangePasswordController;
use App\Http\Controllers\Auth\ForgotPasswordController;
use App\Http\Controllers\Auth\ResetPasswordController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\Admin\AbilitiesController;
use App\Http\Controllers\Admin\RolesController;
use App\Http\Controllers\Admin\UsersController;
use App\Http\Controllers\ProductListController;
use App\Http\Controllers\SalesController;
use App\Http\Controllers\ProductOperationController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ReportsController;
use App\Http\Controllers\SuppliersController;
use App\Http\Controllers\PrintController;
use App\Http\Controllers\UtilsController;



Route::get('/', function () { return redirect('/admin/home'); });

// Authentication Routes...
Route::get('login', [LoginController::class, 'showLoginForm'])->name('login');
Route::post('login', [LoginController::class, 'login'])->name('login');
Route::post('logout', [LoginController::class, 'logout'])->name('auth.logout');

// Change Password Routes...
Route::get('change_password', [ChangePasswordController::class, 'showChangePasswordForm'])->name('auth.change_password');
Route::patch('change_password', [ChangePasswordController::class, 'changePassword'])->name('auth.change_password');

// Password Reset Routes...
Route::get('password/reset', [ForgotPasswordController::class, 'showLinkRequestForm'])->name('auth.password.reset');
Route::post('password/email', [ForgotPasswordController::class, 'sendResetLinkEmail'])->name('auth.password.reset');
Route::get('password/reset/{token}', [ResetPasswordController::class, 'showResetForm'])->name('password.reset');
Route::post('password/reset', [ResetPasswordController::class, 'reset'])->name('auth.password.reset');

// Admin Routes...
Route::group(['middleware' => ['auth'], 'prefix' => 'admin', 'as' => 'admin.'], function () {
    Route::get('/home', [HomeController::class, 'index']);
    Route::get('/', [HomeController::class, 'index']);

    Route::resource('abilities', AbilitiesController::class);
    Route::post('abilities_mass_destroy', [AbilitiesController::class, 'massDestroy'])->name('abilities.mass_destroy');

    Route::resource('roles', RolesController::class);
    Route::post('roles_mass_destroy', [RolesController::class, 'massDestroy'])->name('roles.mass_destroy');

    Route::resource('users', UsersController::class);
    Route::post('users_mass_destroy', [UsersController::class, 'massDestroy'])->name('users.mass_destroy');
});

// Product & Sales Routes
Route::get('admin/product/list', [ProductListController::class, 'showProductList']);
Route::get('admin/product/add', [ProductListController::class, 'addProduct']);
Route::get('admin/product/update/{product_code}', [ProductListController::class, 'updateProduct']);
Route::get('admin/sales/new', [SalesController::class, 'newSales']);
Route::get('admin/product/search/all', [ProductOperationController::class, 'searchProductBarcode']);
Route::get('admin/product/category/new', [CategoryController::class, 'addProductCategory']);
Route::get('admin/sales/report', [ReportsController::class, 'salesReport']);
Route::get('admin/customer-transactions/report', [ReportsController::class, 'transactionsReport']);
Route::get('admin/product/suppliers', [SuppliersController::class, 'index']);
Route::get('admin/product/suppliers/edit/{supplier_id}', [SuppliersController::class, 'updateSupplier']);
Route::get('admin/product/add-supplier', [SuppliersController::class, 'newSupplier']);
Route::get('admin/product/restock-products', [ReportsController::class, 'productRestockReport']);
Route::get('admin/sales/print-transaction/code/{transaction_id}', [PrintController::class, 'printReceipt']);
Route::get('admin/product/suppliers/view/{supplier_id}', [SuppliersController::class, 'viewSupplier']);
Route::get('admin/utils/database-backups', [UtilsController::class, 'backUpList']);
Route::get('test/print', [PrintController::class, 'test']);

// POST Routes
Route::post('admin/sales/pos', [SalesController::class, 'addSalesItem']);
Route::post('admin/sales/cart-items', [SalesController::class, 'showCurrentSales']);
Route::post('admin/sales/clear-sales', [SalesController::class, 'clearSales']);
Route::post('admin/product/save', [ProductOperationController::class, 'saveProduct']);
Route::post('admin/product/save-update', [ProductOperationController::class, 'saveUpdatedProduct']);
Route::post('admin/sales/remove-cart-item', [SalesController::class, 'removeCartItem']);
Route::post('admin/sales/update-cart-item', [SalesController::class, 'updateProductQty']);
Route::post('admin/sales/submit-updated-item', [SalesController::class, 'submitUpdatedItem']);
Route::post('admin/product/save-category', [CategoryController::class, 'saveProductCategory']);
Route::post('admin/sales/add-coupon', [SalesController::class, 'addCoupon']);
Route::post('admin/sales/submit-coupon', [SalesController::class, 'submitCouponCode']);
Route::post('admin/sales/purge-coupon', [SalesController::class, 'purgeCoupon']);
Route::post('admin/sales/add-payment', [SalesController::class, 'payTransaction']);
Route::post('admin/sales/save-transaction', [SalesController::class, 'saveTransaction']);
Route::post('admin/sales/filter-transaction-dates', [ReportsController::class, 'salesReportFilterDate']);
Route::post('admin/sales/filter-customer-transaction-dates', [ReportsController::class, 'customerReportFilterDate']);
Route::post('admin/product/add-category', [CategoryController::class, 'addProductCategoryModal']);
Route::post('admin/product/edit-category', [CategoryController::class, 'editProductCategory']);
Route::post('admin/product/save-edited-category', [CategoryController::class, 'saveEditedProductCategory']);
Route::post('admin/sales/view-transactions', [ReportsController::class, 'viewTransaction']);
Route::post('admin/sales/products-json-items', [ProductListController::class, 'showProductListViaJSON']);
Route::post('admin/supplier/update-details', [SuppliersController::class, 'saveEditedSupplier']);
Route::post('admin/supplier/add-supplier', [SuppliersController::class, 'saveNewSupplier']);
Route::post('admin/product/upload-image', [ProductOperationController::class, 'uploadProductImage']);
Route::post('admin/utils/generate-db-backup', [UtilsController::class, 'generateBackUp']);
