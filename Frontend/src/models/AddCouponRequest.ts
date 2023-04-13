class AddCouponRequest {
    companyId?: number;
    category?: string;
    title: string;
    description: string;
    startDate: Date;
    endDate: Date;
    amount: number;
    price: number;
    imageUrl: string;


    constructor(companyId: number, category: string, title: string, description: string, startDate: Date, endDate: Date, amount: number, price: number, imageUrl: string) {
        this.companyId = companyId;
        this.category = category;
        this.title = title;
        this.description = description;
        this.startDate = startDate;
        this.endDate = endDate;
        this.amount = amount;
        this.price = price;
        this.imageUrl = imageUrl;
    }
}

export default AddCouponRequest;