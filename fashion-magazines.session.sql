SELECT customers.customer_name,
    sum((subscriptions.price_per_month * subscriptions.subscription_length)) as 'Amount Due'
FROM orders
    left join subscriptions on orders.subscription_id = subscriptions.subscription_id
    left join customers on orders.customer_id = customers.customer_id
WHERE subscription.description = 'Fashion Magazine'
    AND orders.order_status = 'unpaid'
GROUP BY customers.customer_name;