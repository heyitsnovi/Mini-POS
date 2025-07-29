$(document).ready(function () {
    const csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute('content');


    // jQuery UI Datepicker
    $('#start_date').datepicker({ dateFormat: 'yy-mm-dd',maxDate: 0  });
    $('#end_date').datepicker(
    	{ 
    		dateFormat: 'yy-mm-dd' ,
    		maxDate: 0 
    });


    fetch('/admin/sales/report/most-purchased-items?limit=5', {
    method: 'GET',
    headers: {
        'Content-Type': 'application/json',
        'X-CSRF-TOKEN': csrfToken
    }
})
.then(response => {
    if (!response.ok) {
        throw new Error('Network response was not ok');
    }
    return response.json();
})
.then(data => {
    data.forEach(res => {
        document.querySelector('.top-solds').insertAdjacentHTML('beforeend', `
            <li class="list-group-item">
                ${res.product_name}
                <span class="badge badge-success">${res.total_quantity}</span>
            </li>
        `);
    });
})
.catch(error => {
    console.error('Fetch error:', error);
});


    // Initial fetch
    fetchChartData();

    // Apply Filters
    $('#filterBtn').on('click', function () {
        fetchChartData();
    });

    function fetchChartData() {
        const startDate = $('#start_date').val();
        const endDate = $('#end_date').val();
        const limit = $('#limit').val();
        const sort = $('#sort').val();

        // Build query string
        let query = [];
        if (startDate) query.push(`from_date=${startDate}`);
        if (endDate) query.push(`to_date=${endDate}`);
        if (limit) query.push(`limit=${limit}`);
        if (sort) query.push(`sort=${sort}`);
        const queryString = query.length ? `?${query.join('&')}` : '';

        fetch(`/admin/sales/report/filter-daily-sales/${queryString}`, {
            method: 'GET',
            headers: {
                'Content-Type': 'application/json',
                'X-CSRF-TOKEN': csrfToken
            }
        })
        .then(res => res.json())
        .then(data => {
            const dates = data.map(item => item.sales_date);
            const earnings = data.map(item => parseFloat(item.earnings));

            const options = {
                chart: {
                    type: 'line',
                    height: 350
                },
                title: {
                    text: 'Daily Earnings (₱)',
                    align: 'left'
                },
                xaxis: {
                    categories: dates,
                    title: { text: 'Date' }
                },
                yaxis: {
                    title: { text: 'Earnings (₱)' },
                    labels: {
                        formatter: val => `₱${val.toLocaleString()}`
                    }
                },
                series: [{
                    name: 'Earnings',
                    data: earnings
                }],
                tooltip: {
                    y: {
                        formatter: val => `₱${val.toLocaleString()}`
                    }
                }
            };

            // Re-render chart
            if (window.salesChart) {
                window.salesChart.updateOptions(options);
            } else {
                window.salesChart = new ApexCharts(document.querySelector("#dailySalesChart"), options);
                window.salesChart.render();
            }
        })
        .catch(error => {
            console.error('Fetch error:', error);
        });
    }
});
