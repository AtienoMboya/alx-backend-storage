--- creates a trigger that decreases the quantity of an item ater adding a new order

CREATE TRIGGER order_decrease BEFORE INSERT ON orders
FOR EACH ROW UPDATE items
SET quantity = quatity - NEW.number
WHERE name = NEW.item_name;
