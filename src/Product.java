public class Product {
    private int productID;
    private String productName;
    private String productCategory;
    private long productBarcode;
    private double productImportPrice;
    private double productRetailPrice;

    public Product(int productID, String productName, String productCategory, long productBarcode,
                   double productImportPrice, double productRetailPrice) {
        this.productID = productID;
        this.productName = productName;
        this.productCategory = productCategory;
        this.productBarcode = productBarcode;
        this.productImportPrice = productImportPrice;
        this.productRetailPrice = productRetailPrice;
    }

    // Getters and setters
}