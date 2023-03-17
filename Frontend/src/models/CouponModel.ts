class CouponModel {
    id: number;
    uuid: string;
    companyId?: number;
    category?: string;
    title: string;
    description?: string;
    startDate?: Date;
    endDate?: Date;
    amount?: number;
    price?: number;
    imageUrl?: string;


    constructor(id: number, uuid: string, companyId: number,
                category: string, title: string, description: string,
                startDate: Date, endDate: Date, amount: number,
                price: number, imageUrl: string) {

        this.id = id;
        this.uuid = uuid;
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

export default CouponModel;