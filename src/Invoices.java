import java.sql.Date;

public class Invoices {
    private int invoiceID;
    private int orderID;
    private Date invoiceDate;
    private double invoiceTotalAmount;

    public Invoices(int invoiceID, int orderID, Date invoiceDate, double invoiceTotalAmount) {
        this.invoiceID = invoiceID;
        this.orderID = orderID;
        this.invoiceDate = invoiceDate;
        this.invoiceTotalAmount = invoiceTotalAmount;
    }

    // Getters and setters
}