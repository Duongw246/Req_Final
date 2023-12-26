import java.sql.Date;

public class Customer {
    private int customerID;
    private String name;
    private String address;
    private String phone;
    private String email;
    private Date DOB;
    private String customerPurchaseHistory;

    public Customer(int customerID, String name, String address, String phone, String email, Date DOB,
            String customerPurchaseHistory) {
        this.customerID = customerID;
        this.name = name;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.DOB = DOB;
        this.customerPurchaseHistory = customerPurchaseHistory;
    }

}
