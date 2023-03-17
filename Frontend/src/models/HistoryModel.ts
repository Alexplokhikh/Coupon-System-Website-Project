class HistoryModel{
    id: number;
    userEmail: string;
    checkoutDate: string;
    removeDate: string;
    title: string;
    description: string;
    company: string;
    image: string;


    constructor(id: number, userEmail: string, checkoutDate: string, removeDate: string, title: string,description:string, company: string, image: string) {
        this.id = id;
        this.userEmail = userEmail;
        this.checkoutDate = checkoutDate;
        this.removeDate = removeDate;
        this.description = description;
        this.title = title;
        this.company = company;
        this.image = image;
    }
}

export default HistoryModel;