@inject('request', 'Illuminate\Http\Request')
<!-- Left side column. contains the sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

              <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="{{url('adminlte/img/avatar5.png')}}" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>{{Auth::user()->name}}</p>
          <a href="#"><i class="fa fa-user text-success"></i> {{Auth::user()->email}}</a>
        </div>
      </div>

        <ul class="sidebar-menu">

            <li class="header">MAIN MENU</li>

            <li class="{{ $request->segment(1) == 'home' ? 'active' : '' }}">
                <a href="{{ url('/') }}">
                    <i class="fa fa-dashboard"></i>
                    <span class="title">Dashboard</span>
                </a>
            </li>
                
            @if(Auth::user()->isAn('cashier') || Auth::user()->isAn('admin') )
            <li class="treeview  {{ $request->segment(2) == 'sales' ? 'active' : '' }}">
                <a href="{{url('admin/sales/new')}}">
                    <i class="fa fa-shopping-cart"></i>
                    <span class="title">Start Point of Sale</span>
                </a>
            </li>
            @endif
            
            @can('users_manage')
 

            <li class="treeview">
                 <a href="#">
                    <i class="fa fa-cubes"></i>
                    <span class="title">Product Management</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                  <ul class="treeview-menu">
                        <li class="treeview">
                            <a href="{{url('admin/product/list')}}">
                                <i class="fa fa-cubes"></i>
                                <span class="title">Product Listing</span>
                            </a>
                        </li>
                        <li class="treeview">
                            <a href="{{url('admin/product/category/new')}}">
                                <i class="fa fa-tags"></i>
                                <span class="title">Product Category</span>
                            </a>
                        </li>
                        <li class="treeview">
                            <a href="{{url('admin/product/suppliers')}}">
                                <i class="fa fa-truck"></i>
                                <span class="title">Product Suppliers</span>
                            </a>
                        </li>
                  </ul>
            </li>



            <li class="treeview">
                 <a href="#">
                    <i class="fa fa-file-o"></i>
                    <span class="title">System Reports</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                  <ul class="treeview-menu">
                      <li>
                        <a href="{{ url('admin/sales/daily') }}">
                            <i class="fa fa-check"></i>
                            <span class="title">
                                Daily Sales
                            </span>
                        </a>
                    </li>

                      <li>
                        <a href="{{ url('admin/sales/report') }}">
                            <i class="fa fa-info-circle"></i>
                            <span class="title">
                                Purchased Products
                            </span>
                        </a>
                    </li>
                      <li>
                        <a href="{{ url('admin/customer-transactions/report') }}">
                            <i class="fa fa-user"></i>
                            <span class="title">
                                 Customer Transactions
                            </span>
                        </a>
                    </li>    
                      <li>
                        <a href="{{ url('admin/product/restock-products') }}">
                            <i class="fa fa-level-up"></i>
                            <span class="title">
                                 Products to Restocks
                            </span>
                        </a>
                    </li>    

                    
                  </ul>
            </li>


            <li class="treeview">
                <a href="#">
                    <i class="fa fa-users"></i>
                    <span class="title">User Management</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">

                    <li class="{{ $request->segment(2) == 'abilities' ? 'active active-sub' : '' }}">
                        <a href="{{ route('admin.abilities.index') }}">
                            <i class="fa fa-briefcase"></i>
                            <span class="title">
                               Abilities
                            </span>
                        </a>
                    </li>
                    <li class="{{ $request->segment(2) == 'roles' ? 'active active-sub' : '' }}">
                        <a href="{{ route('admin.roles.index') }}">
                            <i class="fa fa-briefcase"></i>
                            <span class="title">
                                Roles
                            </span>
                        </a>
                    </li>
                    <li class="{{ $request->segment(2) == 'users' ? 'active active-sub' : '' }}">
                        <a href="{{ route('admin.users.index') }}">
                            <i class="fa fa-user"></i>
                            <span class="title">
                                Users
                            </span>
                        </a>
                    </li>
                </ul>
            </li>


            <li class="treeview">
                 <a href="#">
                    <i class="fa fa-wrench"></i>
                    <span class="title">System Utilities</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                  <ul class="treeview-menu">
                      <li>
                        <a href="{{ url('admin/utils/database-backups') }}">
                            <i class="fa fa-database"></i>
                            <span class="title">
                                Database Back Ups
                            </span>
                        </a>
                    </li>
                     <li>
                        <a href="{{ url('admin/utils/store-settings') }}">
                            <i class="fa fa-home"></i>
                            <span class="title">
                                Store Settings
                            </span>
                        </a>
                    </li> 

                  </ul>
            </li>

            @endcan

            <li class="{{ $request->segment(1) == 'change_password' ? 'active' : '' }}">
                <a href="{{ route('auth.change_password') }}">
                    <i class="fa fa-key"></i>
                    <span class="title">Change Password</span>
                </a>
            </li>

            <li>
                <a href="#logout" onclick="$('#logout').submit();">
                    <i class="fa fa-arrow-left"></i>
                    <span class="title">Logout {{Auth::user()->name}}</span>
                </a>
            </li>
        </ul>
    </section>
</aside>
<form method="POST" action="{{ route('auth.logout') }}" style="display: none;" id="logout">
    @csrf
    <button type="submit">Logout</button>
</form>