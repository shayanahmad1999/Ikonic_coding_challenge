<?php

use App\Http\Controllers\ConnectionController;
use App\Http\Controllers\RecievedRequestController;
use App\Http\Controllers\SendRequestController;
use App\Http\Controllers\UserConnectionController;
use Illuminate\Support\Facades\Route;




Route::get('/suggestions', [UserConnectionController::class, 'index'])->name('showSuggestions');

Route::get('/send-requests', [SendRequestController::class, 'index'])->name('getSentRequests');
Route::post('/send-request/{userId}', [SendRequestController::class, 'create'])->name('sendConnectionRequest');
Route::get('/user-remove/{userId}', [SendRequestController::class, 'destroy'])->name('destroy');

Route::get('/recieved-requests', [RecievedRequestController::class, 'index'])->name('getRecievedRequests');

Route::get('/connections', [ConnectionController::class, 'index'])->name('getConnections');
Route::get('/connections/load-more', [ConnectionController::class, 'loadMoreConnections']);
Route::post('/connections/{userId}', [ConnectionController::class, 'create'])->name('connections');
Route::get('/remove-connection/{userId}', [ConnectionController::class, 'destroy'])->name('destroy');
