import java.sql.Date;

public class Orders {
    private int orderID;
    private int customerID;
    private Date orderDate;
    private double orderTotalAmount;

    public Orders(int orderID, int customerID, Date orderDate, double orderTotalAmount) {
        this.orderID = orderID;
        this.customerID = customerID;
        this.orderDate = orderDate;
        this.orderTotalAmount = orderTotalAmount;
    }

    // Getters and setters
}