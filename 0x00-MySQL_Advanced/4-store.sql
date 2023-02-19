--- creates a trigger that decreases the quantity of an item ater adding a new order

CREATE TRIGGER items_subtract_quantity
AFTER INSERT ON orders FOR EACH ROW
UPDATE items SET items.quantity = items.quantity - NEW.number
WHERE items.name = NEW.item_name;
